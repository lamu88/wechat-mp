<?php
class SCANEventReply{
	public $token;
	public $wecha_id;
	public $id;
	public $siteUrl;
	public $weixin;
	public $ali;
	public $data;
	public $fun;
	public function __construct($token,$wecha_id,$data,$siteUrl,$ali=0){
		$this->token = $token;
		$this->wecha_id = $wecha_id;
		$this->data = $data;
		$this->id = $data['EventKey'];
		$this->siteUrl = $siteUrl;
		$this->ali = $ali;
		$this->weixin = A('Home/Weixin');
		$this->thisWxUser = M('Wxuser')->field('appid,appsecret,winxintype')->where(array('token'=>$token))->find();
		$open=M('Token_open')->where(array('token'=>$this->token))->find();
		$this->fun=$open['queryname'];
	}
	public function index(){
		if($this->thisWxUser['appid'] && $this->thisWxUser['winxintype']==3){
			//服务号
			
			$apiOauth 		= new apiOauth();

			$access_token 	= $apiOauth->update_authorizer_access_token($this->thisWxUser['appid']);

			$url='https://api.weixin.qq.com/cgi-bin/user/info?openid='.$this->wecha_id.'&access_token='.$access_token;
			
			$classData=json_decode($this->curlGet($url));
			
			if ($classData->subscribe&&$classData->subscribe==1){
				
				$datainfo['wechaname'] = str_replace(array("'","\\"),array(''),$classData->nickname);
				$datainfo['sex']       = $classData->sex;
				$datainfo['portrait']  = $classData->headimgurl;
				$datainfo['token']     = $this->token;
				$datainfo['wecha_id']  = $this->wecha_id;
				$datainfo['city']      = $classData->city;
				$datainfo['province']  = $classData->province;
				$datainfo['tel']             = '';
				$datainfo['birthday']        = '';
				$datainfo['address']         = '';
				$datainfo['info']            = '';
				$datainfo['sign_score']      = 0;
				$datainfo['expend_score']    = 0;
				$datainfo['continuous']      = 0;
				$datainfo['add_expend']      = 0;
				$datainfo['add_expend_time'] = 0;
				$datainfo['live_time']       = 0;
				$datainfo['getcardtime']     = 0;
			}

		}else{
			//订阅号
				$datainfo['wechaname']       = '';
				$datainfo['sex']             = '';
				$datainfo['portrait']        = '';
				$datainfo['tel']             = '';
				$datainfo['birthday']        = '';
				$datainfo['address']         = '';
				$datainfo['info']            = '';
				$datainfo['sign_score']      = 0;
				$datainfo['expend_score']    = 0;
				$datainfo['continuous']      = 0;
				$datainfo['add_expend']      = 0;
				$datainfo['add_expend_time'] = 0;
				$datainfo['live_time']       = 0;
				$datainfo['getcardtime']     = 0;
				$datainfo['token']           = $this->token;
				$datainfo['wecha_id']        = $this->wecha_id;
		}
		if(! M('Userinfo')->where(array('token'=>$this->token,'wecha_id'=>$this->wecha_id))->getField('id')){
			$uid = D('Userinfo')->add($datainfo);
		}else{
			M('Userinfo')->where(array('token'=>$this->token,'wecha_id'=>$this->wecha_id))->setField('issub', '1');
			M('Userinfo')->where(array('token'=>$this->token,'wecha_id'=>$this->wecha_id))->save($datainfo);
		}
		
		$id = $this->id;
		$GetDb=D('Recognition');
		$data=$GetDb->field('keyword,groupid, scene_id')->where(array('id'=>$id,'status'=>0))->find();
		//return array($data['keyword'],'text');exit;
		if($data){
			$id_Recognition_data = M('recognition_data')->add(array('token'=>$this->token,'wecha_id'=>$this->wecha_id,'rid'=>$id,'time'=>time(),'year'=>intval(date('Y')),'month'=>intval(date('m')),'day'=>intval(date('d')),'is_ali'=>$this->ali));
			//return array((intval($id_Recognition_data)),'text');exit;
			$GetDb->where(array('id'=>$id))->setInc('attention_num');
			
			//处理收银台中的通过二维码领取卡券
			if ($data['keyword'] == 'CashierCoupon') {
				if ($coupon = M('Cashier_wxcoupon')->where(array('id' => $data['scene_id'], 'token' => $this->token))->find()) {
					$thisWxUser = M('Wxuser')->field('appid, appsecret, winxintype')->where(array('token' => $this->token))->find();
					if (empty($thisWxUser)) return false;
					$apiOauth = new apiOauth();
					$access_token = $apiOauth->update_authorizer_access_token($thisWxUser['appid']);
					
					$postData = '{"touser":"'.$this->wecha_id.'","msgtype":"wxcard","wxcard":{"card_id":"'.$coupon['card_id'].'"}}';
					$extraUrl = 'https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token='.$access_token;
					$result_json = $this->api_notice_increment($extraUrl, $postData, 0, 0);
					return false;
				}
			}
			
			$wecha_id = $this->wecha_id;
			$group_list = M('wechat_group_list');
			//修改粉丝分组（本地）
			$fid = $group_list->where(array('token'=>$this->token,'openid'=>$wecha_id))->getField('id');
			if ($fid) {
				$group_list->where('id='.$fid)->setField('g_id',$data['groupid']);
			}else{
				$group_list->add(array('token'=>$this->token,'openid'=>$wecha_id,'g_id'=>$data['groupid']));
			}
			//更新分组信息到微信服务器

			$access_token=$this->weixin->api('_getAccessToken');
			$url='https://api.weixin.qq.com/cgi-bin/groups/members/update?access_token='.$access_token;
			$json=json_decode($this->weixin->api('curlGet',$url,'post','{"openid":"'.$wecha_id.'","to_groupid":'.$data['groupid'].'}'));

			$keyword = $data['keyword'];
			$this->data['Content'] = $data['keyword'];
		}else{
			$keyword = false;
		}
		if(!(strpos($this->fun,'api') === FALSE)){
			
			$apiData=M('Api')->where(array('token'=>$this->token,'status'=>1,'noanswer'=>0))->select();
			//
			$excecuteNoKeywordReply=0;
			if ($apiData){
				foreach($apiData as $apiArray){
					if (!$apiArray['keyword']){
						$excecuteNoKeywordReply=1;
						break;
					}
				}
			}
			if ($excecuteNoKeywordReply){
				$nokeywordReply=$this->nokeywordApi(0,$apiData);
				if ($nokeywordReply){
					return $nokeywordReply;
				}
			}
			if ($this->data['Content']&&$apiData){
				foreach($apiData as $apiArray){
					if(!(strpos($this->data['Content'],$apiArray['keyword']) === FALSE)){
						$api=$apiArray;
						break;
					}
				}
				if($api!=false){
					$vo['fromUsername']=$this->data['FromUserName'];
					$vo['Content']=$this->data['Content'];
					$vo['toUsername']=$this->token;
					$api['url']=$this->getApiUrl($api['url'],$api['apitoken']);
					if($api['type']==2){
						if (intval($api['is_colation'])){
							$vo['Content']=trim(str_replace($api['keyword'],'',$vo['Content']));
						}
						$apidata=$this->api_notice_increment($api['url'],$vo,0,0);
						return array($apidata,'text');
					}else{
						//$xml = file_get_contents("php://input");
						$xml=$GLOBALS["HTTP_RAW_POST_DATA"];
						if (intval($api['is_colation'])){
							$xml=str_replace(array($api['keyword'],$api['keyword'].' '),'',$xml);
						}
						$xml=$this->handleApiXml($xml);
						$apidata=$this->api_notice_increment($api['url'],$xml,0);
						header("Content-type: text/xml");
						exit($apidata);
						return false;
					}
				}
			}
		}
		return $this->weixin->api('keyword',$keyword,$this->token,$this->data,$this->siteUrl);
	}
	public function curlGet($url,$method='get',$data=''){
		$ch = curl_init();
		$header = "Accept-Charset: utf-8";
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, strtoupper($method));
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
		curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$temp = curl_exec($ch);
		return $temp;
	}
	private function nokeywordApi($noanswer=1,$apidata=0){
		if(!(strpos($this->fun,'api') === FALSE)){
			$apiwhere=array('token'=>$this->token,'status'=>1,'noanwser'=>$noanswer);
			if ($noanswer){
				$apiwhere['noanswer']=array('gt',0);
			}else {
				$apiwhere['noanswer']=0;
			}
			if ($apidata){
				$api=$apidata[0];
			}else {
				$api=M('Api')->where($apiwhere)->find();
			}
			if($api!=false){
				$vo['fromUsername']=$this->data['FromUserName'];
				$vo['Content']=$this->data['Content'];
				if (intval($api['is_colation'])){
					$vo['Content']=trim(str_replace($api['keyword'],'',$this->data['Content']));
				}
				$vo['toUsername']=$this->token;
				$api['url']=$this->getApiUrl($api['url'],$api['apitoken']);
				if($api['type']==2){
					$apidata=$this->api_notice_increment($api['url'],$vo,0,0);
					if ($apidata!='false'){
						return array($apidata,'text');
					}
				}else{
					$xml = file_get_contents("php://input");
					if (intval($api['is_colation'])){
						$xml=str_replace(array($api['keyword'],$api['keyword'].' '),'',$xml);
					}
					$xml=$this->handleApiXml($xml);
					$apidata=$this->api_notice_increment($api['url'],$xml,0);
					if ($apidata!='false'){
						header("Content-type: text/xml");
						exit($apidata);
						return false;
					}
				}
			}
		}
	}
	private function getApiUrl($url,$token){
		$timestamp = time();
		$nonce = $_GET["nonce"];
		$tmpArr = array($token, $timestamp, $nonce);

		sort($tmpArr, SORT_STRING);
		$tmpStr = implode( $tmpArr );
		$signature = sha1( $tmpStr );
		$url=str_replace('&amp;','&',$url);
		if (strpos($url,'?')){
			$url=$url.'&fromthirdapi=1&signature='.$signature.'&timestamp='.$timestamp.'&nonce='.$nonce.'&apitoken='.$this->token;
		}else {
			$url=$url.'?fromthirdapi=1&signature='.$signature.'&timestamp='.$timestamp.'&nonce='.$nonce.'&apitoken='.$this->token;
		}
		return $url;
	}
	private function api_notice_increment($url, $data,$converturl=1,$xmlmode=1){
		$ch = curl_init();
		$header = "Accept-Charset: utf-8";
		if ($converturl){
			if (strpos($url,'?')){
				$url.='&token='.$this->token;
			}else {
				$url.='?token='.$this->token;
			}
		}
		if ($xmlmode){
			$headers = array(
			"User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/20100101 Firefox/14.0.1",
			"Accept-Language: en-us,en;q=0.5",
			"Referer:http://mp.weixin.qq.com/",
			'Content-type: text/xml'
			);
		}
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($ch, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$tmpInfo = curl_exec($ch);
		if (curl_errno($ch)) {
			return false;
		}else{
			return $tmpInfo;
		}
	}
	private function handleApiXml($xml){
		if (strpos($xml,'<Event><![CDATA[CLICK]]></Event>')){
			$xml=str_replace('<Event><![CDATA[CLICK]]></Event>','',$xml);
			$xml=str_replace('<MsgType><![CDATA[event]]></MsgType>','<MsgType><![CDATA[text]]></MsgType><Content><![CDATA['.$this->data['Content'].']]></Content>',$xml);
		}
		
		return $xml;
	}
}
?>