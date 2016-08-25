<?php
class MicrstoreAction extends WapAction{

	public $Micrstore_URL;
	public $SALT;

	public function _initialize() 
	{
		parent::_initialize();
		if(updateSync::getIfWeidian()){
			$this->Micrstore_URL = C('weidian_domain') ? C('weidian_domain') : 'http://v.meihua.com';
			$this->SALT = C('encryption') ? C('encryption') : 'pigcms';
		}else{
			$this->Micrstore_URL = 'http://v.meihua.com';
			$this->SALT = 'pigcms';
		}
	}
	public function api()
	{
		
		function callback($v){
			if(empty($v)){
				return $v = '';
			}else{
				return $v;
			}
		}
		$userinfo = M('Userinfo')->where(array('token'=>$this->token,'wecha_id'=>$this->wecha_id))->find();
		$store_id = intval($_GET['store_id']);
		if (!$store_id) {
			$store_list = $this->get_store_list();
			$store_id = intval($store_list['0']['store_id']);
			$store_id = $store_id ? $store_id : 0 ;
		}


		if($this->wxuser['winxintype'] != 3){
			if(!$this->fakeopenid){
				$url = $this->siteUrl.'/index.php?g=Wap&m=Micrstore&a=api&token='.$this->token.'&store_id='.$store_id;
				header('Location:'.$url);
			}else{
				$openid = $this->fakeopenid;
			}
		}else{
			$openid = $this->wecha_id;
		}

		$data = array(
					'store_id'  => $store_id,
					'wecha_id'  => $openid,
					'token'     => $this->token,
					'wechaname' => $userinfo['wechaname'],
					'portrait'  => $userinfo['portrait'], //头像url
					'tel'       => $userinfo['tel'],
					'address'   => $userinfo['address'],
					'return_url'=> $_GET['return_url']?$_GET['return_url']:'',
				);

		$sort_data = $data;
		$sort_data['salt'] = $this->SALT;
		ksort($sort_data);
		$sort_data = array_map('callback', $sort_data);
		$sign_key = sha1(http_build_query($sort_data));
		$data['sign_key'] = $sign_key;
		$data['request_time'] = time();

		$url =  $this->Micrstore_URL . "/api/fans.php";//微店接收数据的地址

		$return = json_decode($this->curl_post($url,$data),true);//微店返回数据
		//$return = $this->curl_post($url,$data);//微店返回数据


		header ('Location: '.$return['return_url']);//返回微店手机端的地址
	}

/**
 * 重新授权登陆
 */

	public function login()
	{
		function callback($v){
			if(empty($v)){
				return $v = '';
			}else{
				return $v;
			}
		}
		
		//redirect($user['oauth_url'] . '?return_url=' . $return_url . '&store_id=' . $store_id . '&token=' . $user['token']);
		$userinfo = M('Userinfo')->where(array('token'=>$this->token,'wecha_id'=>$this->wecha_id))->find();
		$data = array(
					'store_id'  => intval($_GET['store_id']),
					'wecha_id'  => $this->wecha_id,
					'token'     => $this->token,
					'wechaname' => $userinfo['wechaname'],
					'portrait'  => $userinfo['portrait'], //头像url
					'tel'       => $userinfo['tel'],
					'address'   => $userinfo['address'],
					'return_url'=> $_GET['return_url']?$_GET['return_url']:'',
				);

		$sort_data = $data;
		$sort_data['salt'] = $this->SALT;
		ksort($sort_data);
		$sort_data = array_map('callback', $sort_data);
		$sign_key = sha1(http_build_query($sort_data));
		$data['sign_key'] = $sign_key;
		$data['request_time'] = time();
		$url =  $this->Micrstore_URL . "/api/fans.php";//微店接收数据的地址

		$return = json_decode($this->curl_post($url,$data),true);//微店返回数据
		$return_data = $sort_data;
		$return_url = $return['return_url'];
		unset($return_data['salt']);
		unset($return_data['return_url']);
		$return_data['sessid'] = $return['sessid'];

		$return_url .= '&'.http_build_query(array('token' => $data['token'], 'wecha_id' => $data['wecha_id'], 'sessid' => $return['sessid']));
		header ('Location: '.$return_url);//返回微店手机端的地址
	}

/**
 * @支付API
 */

	public function pay()
	{
		
		if(!$_GET['wecha_id']){
			if($this->wxuser['winxintype'] == 3){
				$_GET['wecha_id'] = $this->wecha_id;
			}
			else{
				$_GET['wecha_id'] = $this->fakeopenid;
			}
		}

		$data = $_GET;
		unset($data['state']);
		unset($data['code']);
		unset($data['sign_key']);
		unset($data['timestamp']);
		$data['salt'] = $this->SALT;
		ksort($data);

		$sign_key = sha1(http_build_query($data));
		if ($sign_key != $_GET['sign_key']) {
			$returnData = array(
				"status" => "-1",
				"msg" => "签名错误",
				'wecha_id'       => $this->wecha_id,
				'order_no'       => $_GET['orderid'], 
				'payment_method' => '',
				'third_id'       => '',
				'trade_no'       => '',
				'pay_money'      => ''
			);
			$returnData['salt'] = $this->SALT;
			ksort($returnData);
			$returnData['sign_key']     = sha1(http_build_query($returnData));
			$returnData['request_time'] = time();
			unset($returnData['salt']);
			header("location: ".$this->Micrstore_URL . '/api/pay_callback.php?'.http_build_query($returnData));
			exit;
		}

		$params = array(
			'token'        => $data['token'],
			'wecha_id'     => $data['wecha_id'],
			'from'         => 'Micrstore',
			'orderName'    => $data['orderName'],
			'orderid'      => $data['orderid'],
			'price'        => $data['price'],
			'notOffline'   => $data['notOffline'],
		);

		$OrderId = M('Micrstore')->where(array('orderid'=>htmlentities($data['orderid'])))->getField('id');
		
		if (!$OrderId) {
			$info = $params;
			$info['paid'] = 0;
			$info['third_id'] = '';
			$info['paytype'] = '';
			$info['trade_no'] = $data['trade_no'];
			M('Micrstore')->add($info);
		}
		else
		{
			$info = $params;
			$info['paid'] = 0;
			$info['third_id'] = '';
			$info['paytype'] = '';
			$info['trade_no'] = $data['trade_no'];
			M('Micrstore')->where(array('id' => $OrderId))->save($info);
		}
		$params['orderid'] = $data['trade_no'];
		$redirect = U('Alipay/pay', $params);
		header("location: $redirect");

	}
/**
 * 支付返回
 */
	public function payReturn()
	{
		
		$orderid = htmlentities($_GET['orderid']);
		if ($orderid) {
			$orderInfo = M('Micrstore')->where(array('trade_no'=>$orderid))->find();
			if ($orderInfo) {
				if ($orderInfo['paid']) {

					$returnData = array('status' => 0, 'msg' => '支付成功' );
				}else{
					$returnData = array("status" => 1, "msg" => "支付失败");
				}

			}else{
				$returnData = array("status" => 2, "msg" => "此订单已经支付过了");
			}

	$returnData = array_merge($returnData,array(
				'wecha_id'       => $this->wecha_id,
				'order_no'       => $orderInfo['orderid'], 
				'payment_method' => $orderInfo['paytype'], 
				'third_id'       => $orderInfo['third_id'], 
				'trade_no'       => $orderInfo['trade_no'], 
				'pay_money'      => $orderInfo['price'], 
				));

								
				$returnData['salt'] = $this->SALT;
				ksort($returnData);
				$returnData['sign_key']     = sha1(http_build_query($returnData));
				unset($returnData['salt']);
				$returnData['request_time'] = time();

				$redirect = $this->Micrstore_URL . '/api/pay_callback.php?'.http_build_query($returnData);
			
			header("location: $redirect");

		}
		
	}



/**
 * 消息通知接口
 */

	public function notify()
	{
		
		$data = $_POST;
		unset($data['sign_key']);
		unset($data['request_time']);
		$data['salt'] = $this->SALT;
		ksort($data);
		$sign_key = sha1(http_build_query($data));
		if ($sign_key != $_POST['sign_key']) {
			echo '{"status":"-1","msg":"签名错误"}';
			exit;
		}

		$token = $data['token'];
		
			switch ($data['type']) {
				case '1':
					//1 订单未支付通知
					$buyer_content = NULL;
					$seller_content = NULL;
					$key = 'TM00184';
					$tempData = array(
									'wecha_id'  => $data['wecha_id'],
									'href'      => $data['href'],
									'first'     => $data['title'],
									'ordertape' => $data['order_detail']['add_time'],//下单时间
									'ordeID'    => $data['order_detail']['order_no'],//订单号
									'remark'    => $data['remark'],
								);
					break;
				case '2':
					//2 商品支付通知
					$buyer_content = "您好，我们已经收到您的订单：".$data['order_detail']['order_no']."的款项，我们会以最快的速度安排发货，请您耐心静候。";
					$seller_content = "您好，您的商铺有新订单，请注意安排及时发货。订单号：".$data['order_detail']['order_no'];
					$key = 'OPENTM205160490';
					$tempData = array(
									'wecha_id' => $data['wecha_id'],
									'href'	   => $data['href'],
									'first'    => $data['title'],
									'keyword1' => $data['order_detail']['total'],//支付金额
									'keyword2' => implode (',',$data['products']['name']),//商品名称////
									'keyword3' => $data['order_detail']['payment_method'],//支付方式
									'keyword4' => $data['order_detail']['trade_no'],//交易单号///
									'keyword5' => $data['order_detail']['paid_time'],//交易时间
									'remark'   => $data['remark'],
								);
					break;
				case '3':
					//3 订单完成通知
					$buyer_content = "您好，您的订单：".$data['order_detail']['order_no']."已完成，感谢您的光临，祝您生活愉快，下次再来。";
					$seller_content = NULL;
					$key = 'OPENTM202531033';
					$tempData = array(
									'wecha_id' => $data['wecha_id'],
									'href'	   => $data['href'],
									'first'    => $data['title'],
						            'keyword1' => $data['order_detail']['order_no'],//订单号
						            'keyword2' => date('Y-m-d H:i:s',time()),//完成时间///
									'remark'   => $data['remark'],
								);
					break;
			}


		//商家:短信通知
			if($seller_content) Sms::sendSms($token,$seller_content,$data['seller_tel']);
		//粉丝:短信通知
			if($buyer_content) Sms::sendSms($token,$buyer_content,$data['buyer_tel']);

		//模板消息
			$template = new templateNews();
			$template->sendTempMsg($key,$tempData);

		echo '{"status":"0","msg":"执行成功"}';
	}
	
/**
 * im聊天接口
 */
	public function getImUrl()
	{
		$url = '';
		$where['token'] = $this->token;
		$mywxuser = M('Service_wxuser')->where($where)->find();

		if($mywxuser['state'] == 1){
			$im['app_id'] = $mywxuser['app_id'];
			$im['openid'] = $this->wecha_id;
			$key = $this->set_key($im,$mywxuser['app_key']);
			$url = "http://im-link.meihua.com/?app_id={$mywxuser['app_id']}&openid={$this->wecha_id}&key={$key}#serviceList";
		}

		if(empty($url)){
			$this->error('商家未设置客服');
		}
		
		redirect($url);
	}
	//制作key
	public function set_key($data,$app_key){
		$new_arr = array();
		ksort($data);
		foreach($data as $k=>$v){
			$new_arr[] = $k.'='.$v;
		}
		$new_arr[] = 'app_key='.$app_key;
		$str = implode('&',$new_arr);
		return md5($str);
	}

//获取店铺列表
	public function get_store_list()
	{

		$post_data = array(
			'token' => $this->token,
			'site_url' => $this->siteUrl,
			'login_url' => $this->siteUrl.U('Wap/Micrstore/login'),
			'timestamp' => time(),
		);

		$sort_data = $post_data;
		$sort_data['salt'] = $this->SALT;
		ksort($sort_data);
		$sign_key = sha1(http_build_query($sort_data));
		$post_data['sign_key'] = $sign_key;
		$post_data['request_time'] = time();

		$url = $this->Micrstore_URL . "/api/store.php";//微店接收数据的地址

		$return = json_decode($this->curl_post($url,$post_data),true);//微店返回数据

		if ($return['error_code'] == 0) {
			return $return['stores'];
		}else{
			return;
		}
	
	}


// CURL POST 传输
function curl_post($url,$data){
	$ch = curl_init();
	$headers[] = "Accept-Charset: utf-8";
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($ch, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1);
	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result = curl_exec($ch);

	//关闭curl
	curl_close($ch);
	
	return $result;
}

}
?>