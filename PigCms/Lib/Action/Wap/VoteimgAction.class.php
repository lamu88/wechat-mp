<?php 
/**
* 图片投票
**/
class VoteimgAction extends WapAction{
	public $action_id;
	public function _initialize(){
		parent::_initialize();
		$checkFunc=new checkFunc();if (!function_exists('fdsrejsie3qklwewerzdagf4ds')){exit('error-4');}
        $checkFunc->cfdwdgfds3skgfds3szsd3idsj();
		$this->action_id = $this->_request('id','intval');
		//合并身份
		D('Userinfo')->convertFake(M('voteimg_users'),array('token'=>$this->token,'wecha_id'=>$this->wecha_id, 'fakeopenid'=>$this->fakeopenid));
		if($this->fakeopenid){
			$userinfo = M("userinfo")->where(array('fakeopenid'=>$this->fakeopenid,'token'=>$this->token))->order('id asc')->find();
			if(!empty($userinfo) && $this->wecha_id != $userinfo['wecha_id']){
				exit('操作失败');
			}
		}
	}
	//主页
	public function index(){
		if($this->action_id == "" || $this->token == ""){
			$this->error('参数错误');
		}
		//action活动信息
		$action_info = M('voteimg')->where(array('id'=>$this->action_id))->find();
		if(!empty($action_info)){
			if($action_info['display'] !=1){ $this->error('该活动未开启');}
			$action_info['custom_sharetitle'] = ($action_info['custom_sharetitle'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharetitle']) : '我正在参加“'.$action_info['action_name'].'”活动，快来参与吧！';
			$action_info['custom_sharedsc'] = ($action_info['custom_sharedsc'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharedsc']) : $action_info['reply_content'];
			$this->assign('action_info',$action_info);
		}else{
			$this->error('该活动不存在');
		}	
		//增加访问量
		$this->add_users($action_info['territory_limit']);
		//提醒关注、注册
		$this->notice($action_info);
		//首页查询条件
		$where_index = array('vote_id'=>(int)$this->action_id,'token'=>$this->token,'check_pass'=>1);
		//最新或全部
		$type = trim($this->_request('type'));
		$order = ($type== "" || $type == 'new') ? 'baby_id desc' : 'baby_id asc';
		//搜索关键词
		$key_word = trim($this->_request('key_word'));
		if($key_word != ""){
			C('TOKEN_ON',false);
			if(preg_match('/^[0-9]*[1-9][0-9]*$/', $key_word)){//编号查找
				$where_index['baby_id'] = (int)$key_word;
			}else{
				$where_index['vote_title'] = array('like',"%{$key_word}%");
			}
			$item = M('voteimg_item')->where($where_index)->select();
			if(count($item) == 1){
				if($item[0]['jump_url'] != ''){
					$jump_url = $this->getLink($item[0]['jump_url']);
				}else{
					$jump_url = U('Voteimg/popup_view',array('id'=>$item[0]['vote_id'],'token'=>$item[0]['token'],'item_id'=>$item[0]['id']));
				}
				redirect($jump_url);
				exit;
			}
		}
		if($action_info['page_type'] == 'waterfall'){
			$list = M('voteimg_item')->where($where_index)->order($order)->limit(0,10)->select();
		}else{
			$total = M('voteimg_item')->where($where_index)->count();
			$Page = new Page($total,10);
			$list = M('voteimg_item')->where($where_index)->order($order)->limit($Page->firstRow.','.$Page->listRows)->select();
			$Page->setConfig('prev','<<');
			$Page->setConfig('next','>>');
			$Page->setConfig('theme',"%upPage% %linkPage% %downPage%");
			$this->assign('page',$Page->show());
		}
		foreach($list as $key=>$val){
			if(strpos($val['vote_img'],';') !== false){
				$vote_img = explode(";",$val['vote_img']);
				$list[$key]['vote_img'] = end($vote_img);
			}else{
				$list[$key]['vote_img'] = $val['vote_img'];
			}
			if($val['jump_url'] != ''){
				$list[$key]['jump_url'] = $this->getLink($val['jump_url']);
			}else{
				$list[$key]['jump_url'] = U('Voteimg/popup_view',array('id'=>$val['vote_id'],'token'=>$val['token'],'item_id'=>$val['id']));
			}
			if($val['serverid'] != "" || $val['upload_voice'] != ""){
				$list[$key]['yuyin'] = '<img src="'.$this->siteUrl.'/tpl/static/voteimg/img/yinpin.png" style="width:16px;" class="yuyin" />';
			}else{
				$list[$key]['yuyin'] = '';
			}
		}
		//banner、stat、menu、bottom信息，分别做了缓存
		$this->get_head_content($action_info['default_skin']);
		$this->clear_vote_day();
		$this->assign('alllist',$list);
		$this->assign('id',$this->action_id);
		$this->assign('token',$this->token);
		$this->assign('key_word',$key_word);
		$this->assign('type',$type);
		$this->assign('page_type',$action_info['page_type']);
		$this->assign('imgUrl',$action_info['reply_pic']);
		//判断活动和报名是否过期,分配变量
		$this->check_expire($action_info);
		$this->display($this->get_tplname($action_info));
	}
	//瀑布流获取item
	public function getList(){
		$num = $this->_get('num','intval');
		$id = $this->_get('id','intval');
		$key_word = $this->_get('key_word');
		$type = $this->_get('type','trim');
		$order = (empty($type) || $type == 'new') ? 'baby_id desc' : 'baby_id asc';
		$where = "vote_id = {$id} AND token = '{$this->token}' AND check_pass = 1";
		//搜索结果页瀑布流时，带上搜索关键词
		if(!empty($key_word)){
			if(preg_match('/^[0-9]*[1-9][0-9]*$/', $key_word)){
				$where .= " AND baby_id = {$key_word}";
			}else{
				$where .= " AND vote_title like '%{$key_word}%'";
			}
		}
		//每次取4条,从第10个开始取
		$item = M('voteimg_item')->where($where)->order($order)->limit(10+(int)$num*4,4)->select();
		foreach($item as $key=>$val){
			if(strpos($val['vote_img'],';') !== false){
				$vote_img = explode(";",$val['vote_img']);
				$item[$key]['vote_img'] = end($vote_img);
			}else{
				$item[$key]['vote_img'] = $val['vote_img'];
			}
			if($val['jump_url'] != ''){
				$item[$key]['jump_url']  = $this->getLink($val['jump_url']);
			}else{
				$item[$key]['jump_url'] = U('Voteimg/popup_view',array('id'=>$val['vote_id'],'token'=>$val['token'],'item_id'=>$val['id']));
			}
			if($val['serverid'] != "" || $val['upload_voice'] != ""){
				$item[$key]['yuyin'] = '<img src="'.$this->siteUrl.'/tpl/static/voteimg/img/yinpin.png" style="width: 16px;" class="yuyin" />';
			}else{
				$item[$key]['yuyin'] = '';
			}
		}
		if($item){
			exit(json_encode(array('status'=>'SUCCESS','data'=>$item)));
		}else{
			exit(json_encode(array('status'=>'FAIL','data'=>$item)));
		}
	}
	//新版投票操作
	public function vote(){
		$vote_id = $this->_get('vote_id','intval');
		$id = $this->_get('id','intval');
		$share_code = '';
		if($_GET['is_share'] == 1){//分享或直接发送
			$share_code = ($_GET['urlcode'] != "") ? trim($_GET['urlcode']) : trim($_GET['share_code']);
		}
		if($this->wecha_id == ""){
			echo json_encode(array('status'=>'fail','data'=>'投票失败,参数错误'));exit;
		}
		$voteimg = M('voteimg')->where(array('id'=>$vote_id))->find();
		if(!empty($voteimg) && $voteimg['display'] != 1){
			echo json_encode(array('status'=>'fail','data'=>'投票失败,活动已关闭'));exit;
		}elseif(empty($voteimg)){
			echo json_encode(array('status'=>'fail','data'=>'投票失败,活动不存在'));exit;
		}
		if($voteimg['end_time'] < $_SERVER['REQUEST_TIME']){
			echo json_encode(array('status'=>'fail','data'=>'投票失败,活动已结束'));exit;
		}elseif($voteimg['start_time'] > $_SERVER['REQUEST_TIME']){
			echo json_encode(array('status'=>'fail','data'=>'投票失败,活动未开始'));exit;
		}
		$voteimg_item = M('voteimg_item')->where(array('id'=>$id,'check_pass'=>1))->find();
		//判断是否是给自己投票
		if($voteimg['self_status'] != 1){
			if(!empty($voteimg_item['wecha_id']) && $this->wecha_id == $voteimg_item['wecha_id']){
				echo json_encode(array('status'=>'fail','data'=>'自己不能给自己投票'));exit;
			}
		}
		$where = array('vote_id'=>$vote_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id);
		$vote_user = M('voteimg_users')->where($where)->find();
		if((int)$voteimg['limit_vote_day'] > 0){
			if($vote_user['votenum_day'] >= $voteimg['limit_vote_day']){
				echo json_encode(array('status'=>'fail','data'=>'超过今日投票数限制'));exit;
			}
		}
		if((int)$voteimg['limit_vote_item'] > 0){
			$vote_today = explode(",",$vote_user['vote_today']);
			$today_count = array_count_values($vote_today);
			if($today_count[$id] >= $voteimg['limit_vote_item']){
				echo json_encode(array('status'=>'fail','data'=>'超今日票数限制请投其他选项'));exit;
			}
		}
		if((int)$voteimg['limit_vote'] > 0){
			if($vote_user['votenum'] >= $voteimg['limit_vote']){
				echo json_encode(array('status'=>'fail','data'=>'超过总投票数限制'));exit;
			}
		}
		//累计投票的人和投票记录
		$u = array();
		//$u['item_id'] = trim($vote_user['item_id'].','.$id,',');
		$u['votenum'] = array('exp','votenum+1');
		$u['votenum_day'] = array('exp','votenum_day+1');
		$u['vote_today'] = trim($vote_user['vote_today'].','.$id,',');
		$u['vote_time'] = $_SERVER['REQUEST_TIME'];
		//增加或更新投票者
		$update_user = M('voteimg_users')->where($where)->save($u);
		if($update_user){
			//累计获得的票数
			$d = array();
			$record = array();
			$d['vote_count'] = array('exp','vote_count+1');
			$record['vote_id'] = $vote_id;
			$record['user_id'] = $vote_user['user_id'];
			$record['item_id'] = $id;
			$record['vote_time'] = $_SERVER['REQUEST_TIME'];
			$record['token'] = $vote_user['token'];
			$update_item = M('voteimg_item')->where(array('id'=>$id))->save($d);
			$insert_record = M('voteimg_record')->add($record);
			if($update_item && $insert_record){
				//如果开启了红包拉票并且是通过分享链接进来投票的
				if($voteimg_item['ifhongbao'] == 1 && $share_code != ''){
					$gethongbao = $this->gethongbao($voteimg_item,$share_code,$vote_user);
					if($gethongbao['votestatus'] == 1){
						echo json_encode(array('status'=>'hbdone','data'=>array('getmoney'=>$gethongbao['money'])));exit;
					}
				}
				if($voteimg['limit_vote_day'] == 0){
					echo json_encode(array('status'=>'done','data'=>array('left_vote_day'=>'')));exit;
				}else{
					echo json_encode(array('status'=>'done','data'=>array('left_vote_day'=>($voteimg['limit_vote_day'] - $vote_user['votenum_day']-1))));exit;
				}
			}else{
				echo json_encode(array('status'=>'fail','data'=>'投票失败'));exit;
			}
		}else{
			echo json_encode(array('status'=>'fail','data'=>'投票失败'));exit;
		}
	}
	//新增投票者
	private function add_users($territory_limit = 0){
		$voter = M('voteimg_users')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id))->find();
		$share_code = substr(md5(time().mt_rand(1000,9999)),0,32);
		if($this->wecha_id && empty($voter)){
			$data = array(
				'vote_id' => (int) $this->action_id ,
				'item_id'=>'',
				'wecha_id' => $this->wecha_id,
				'nick_name'=> !empty($this->fans['wechaname']) ? $this->fans['wechaname'] : "no" ,
				'votenum' => 0,
				'votenum_day' =>  0,
				'phone'=> !empty($this->fans['tel']) ? $this->fans['tel'] : "no" ,
				'vote_time' => $_SERVER['REQUEST_TIME'],
				'token' => $this->token,
				'share_code'=> $share_code,
				'client_ip'=> get_client_ip(),
				'wecha_pic'=>!empty($this->fans['portrait']) ? $this->fans['portrait'] : 'no',
				);
				if($territory_limit == 1){
					$data['phone'] = "no";
				}
				$user_id = M('voteimg_users')->add($data);
				$_SESSION['user_id'] = $user_id;
				$this->assign('user_id',$user_id);
				$this->assign('share_code',$share_code);
		}else{
			$savedata = array();
			if($territory_limit != 1){ 
				$savedata['phone'] = !empty($this->fans['tel']) ? $this->fans['tel'] : "no";
			}
			if($voter['share_code'] == ""){//兼容老用户
				$savedata['share_code'] = $share_code;
				$code = $share_code;
			}else{
				$code = $voter['share_code'];
			}
			if($voter['client_ip'] == ""){
				$savedata['client_ip'] =get_client_ip();
			}
			$savedata['nick_name'] = $this->fans['wechaname'];
			$savedata['wecha_pic'] = $this->fans['portrait'];
			M('voteimg_users')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id))->save($savedata);
			$this->assign('user_id',$voter['user_id']);
			$this->assign('share_code',$code);
			$this->assign('votenum',$voter['votenum']);
		}
		return true;
	}
	//我要报名
	public function apply(){
		if(IS_POST){
			$img = (trim($_POST['inputimg'],";") != "") ? trim($_POST['inputimg'],";") : '';
			if($_POST['vote_id'] == "" || $_POST['token'] == "" || $this->wecha_id == ""){
				echo json_encode(array('status'=>'error','msg'=>'报名失败,参数错误'));exit;
			}
			$vote_img = M('voteimg')->where(array('id'=>$_POST['vote_id'],'display'=>1))->find();
			//判断是否需要关注、注册
			if(!$this->notice($vote_img)){
				echo json_encode(array('status'=>'error','msg'=>'请先关注、注册'));exit;
			}
			if($vote_img['apply_end_time'] < $_SERVER['REQUEST_TIME']){
				echo json_encode(array('status'=>'error','msg'=>'报名已截止,谢谢您的参与'));exit;
			}
			if($vote_img['apply_start_time'] > $_SERVER['REQUEST_TIME']){
				echo json_encode(array('status'=>'error','msg'=>'报名还未开始,请耐心等待'));exit;
			}
			if(empty($_POST['inputimg'])){
				echo json_encode(array('status'=>'error','msg'=>'请上传图片'));exit;
			}
			if(count($_POST['inputimg']) > $_POST['img_count']){
				echo json_encode(array('status'=>'error','msg'=>'最多上传'.$_POST['img_count'].'张'));exit;
			}
			if($vote_img['is_register'] == 0 && empty($_POST['contact'])){
				echo json_encode(array('status'=>'error','msg'=>'联系方式不能为空'));exit;
			}
			if(!empty($_POST['contact']) && !preg_match('/^([0-9]){6,}$/',$_POST['contact'])){
				echo json_encode(array('status'=>'error','msg'=>'联系方式格式不正确'));exit;
			}
			$exist = M('voteimg_item')->where(array('vote_id'=>$_POST['vote_id'],'token'=>$_POST['token'],'wecha_id'=>$this->wecha_id,'check_pass'=>array('neq',2)))->find();
			if($exist){
				echo json_encode(array('status'=>'error','msg'=>'请勿重复报名'));exit;
			}
			if(strlen($this->_post('vote_title','trim'))>24){
				echo json_encode(array('status'=>'error','msg'=>'输入的标题字数不能超过8个汉字'));exit;
			}
			$baby_id = 0;
			if((int)$_POST['need_check'] == 2){ //如果是自动审核
				$max_baby_id =  M('voteimg_item')->where(array('vote_id'=>$_POST['vote_id'],'token'=>$_POST['token'],'check_pass'=>1))->max('baby_id');
				$baby_id = $max_baby_id+1;
			}
			$data = array();
			$data['vote_title'] = $this->_post('vote_title','trim');
			$data['introduction'] = $this->_post('introduction','trim');
			$data['manifesto'] = $this->_post('manifesto','trim');
			$data['contact'] = (empty($_POST['contact'])) ? $this->fans['tel'] : $this->_post('contact');
			$data['vote_count'] = 0;
			$data['upload_time'] = $_SERVER['REQUEST_TIME'];
			$data['check_pass'] = ($_POST['need_check'] == 2) ? 1 : 0;
			$data['upload_type'] = 0;
			$data['token'] = $_POST['token'];
			$data['vote_id'] = $_POST['vote_id'];
			$data['baby_id'] = $baby_id;
			$data['vote_img'] = trim($_POST['inputimg'],";");
			$data['wecha_id'] = $this->wecha_id;
			$data['ifhongbao'] = 0;//默认没添加红包
			$data['localid'] = $_POST['localId'];
			$data['record_time'] = (int)$_POST['record_time'];
			if($_POST['serverId'] != "" && $data['token'] != ""){
				$upload_result = $this->downloadTolocal($_POST['serverId'],$data['token']);
				if($upload_result['status'] == 'success'){//上传成功
					$data['serverid'] = $_POST['serverId'];
					$data['voice_path'] = $upload_result['msg'];
				}
			}
			$insert_id = M('voteimg_item')->add($data);
			if($insert_id){
				$this->save_attach($insert_id,$_POST);
				S($_POST['token'].'_'.$_POST['vote_id'].'_'.$this->wecha_id.'_alertstate',null);
				echo json_encode(array('status'=>'success','returnurl'=>U('Voteimg/index',array('id'=>$_POST['vote_id'],'token'=>$_POST['token']))));
				exit;
				//$this->success('申请报名成功,等待审核',U('Voteimg/index',array('id'=>$_POST['vote_id'],'token'=>$_POST['token'])));exit;
			}else{
				echo json_encode(array('status'=>'error','msg'=>'申请报名失败'));exit;
				//$this->error('申请报名失败');
			}
		}
		$vote_id = $this->_get('id','intval');
		//action活动信息
		$action_info = M('voteimg')->where(array('id'=>$vote_id))->find();
		if(!empty($action_info)){
			if($action_info['display'] !=1){
				$this->error('该活动未开启');exit;
			}
		}else{
			$this->error('该活动不存在');exit;
		}
		//提醒关注、注册
		$this->notice($action_info);
		//增加访问量
		$this->add_users($action_info['territory_limit']);
		//banner、stat、menu、bottom信息，分别做了缓存
		$this->get_head_content($action_info['default_skin']);
		$this->assign('vote_id',$this->action_id);
		$this->assign('token',$this->token);
		$this->assign($action_info);
		$this->assign('apply_fields_name', json_decode($action_info['apply_fields_name'],true));
		$this->assign('imgUrl',$action_info['reply_pic']);
		//判断活动和报名是否过期,分配变量
		$this->check_expire($action_info);
		$maxSize = C('up_size') ? C('up_size') : 2048;
		$this->assign('maxSize',$maxSize);
		$this->assign('winxintype',$this->wxuser['winxintype']);
		$html_layout = $this->html_layout($this->token,$this->action_id);
		$this->assign('verify', $html_layout['verify']);
		$this->assign('formData', $html_layout['string']);
		$this->display('sign');
	}
	//详情页
	public function popup_view(){
		$is_share = $this->_get('is_share');
		$key_word = $this->_get('key_word');
		$vote_id = $this->_get('id');
		if(empty($vote_id) || empty($this->token)){
			$this->error('非法操作');exit;
		}
		//action活动信息
		$action_info = M('voteimg')->where(array('id'=>$vote_id))->find();
		if(!empty($action_info)){
			if($action_info['display'] !=1){
				$this->error('该活动未开启');exit;
			}
			$this->assign('action_info',$action_info);
		}else{
			$this->error('该活动不存在');exit;
		}
		//增加访问量
		$this->add_users($action_info['territory_limit']);
		//add_users里面分配的是访问者的share_code,这里接受的是url传值过来的,可以保证code就是分享者的code
		if(intval($is_share) == 1){ 
			$this->assign('urlcode',trim($this->_get('share_code')));
		}
		//提醒关注、注册
		$this->notice($action_info);
		$where = "vote_id = {$vote_id} AND token = '{$this->token}' AND check_pass = 1";
		if(!empty($key_word)){
			C('TOKEN_ON',false);//关闭表单令牌验证
			$where .= " AND baby_id = ".(int)$key_word;
		}else{
			$item_id = $this->_get('item_id','intval');
			if(!$item_id){
				exit('加载失败');
			}
			$where = "id = {$item_id} AND check_pass = 1";
		}
		$item = M('voteimg_item')->where($where)->find();
		//我的排行
		if(!empty($item)){
			$ranking = M('voteimg_item')->where(array('vote_id'=>$vote_id,'token'=>$this->token,'vote_count'=>array('gt',$item['vote_count'])))->count();
			if($ranking > 0){
				$preitem_vote_count = M('voteimg_item')->where(array('vote_id'=>$vote_id,'token'=>$this->token,'vote_count'=>array('gt',$item['vote_count'])))->order('vote_count asc')->getField('vote_count');
				$item['gap_vote_count'] = $preitem_vote_count - $item['vote_count'];
				$$item['gap_vote_count'] = $item['gap_vote_count'] > 0 ? $item['gap_vote_count'] : 0;
			}else{
				$item['gap_vote_count'] = 0;
			}
			$item['ranking'] = $ranking+1;
			//扩张字段展示
			$attach = M('voteimg_item_attach')->where(array('item_id'=>$item['id']))->join(C('DB_PREFIX')."voteimg_custom_field ON ".C('DB_PREFIX')."voteimg_item_attach.field_id = ".C('DB_PREFIX').'voteimg_custom_field.field_id')->field(C('DB_PREFIX')."voteimg_custom_field.field_name,".C('DB_PREFIX')."voteimg_custom_field.is_details,".C('DB_PREFIX')."voteimg_item_attach.*")->select();
			if(!empty($attach)){
				$item['attach'] = $attach;
			}
		}
		if($item['video_path'] != ""){
			$preg = '/<iframe.*?src="(.*?)".*?\><\/iframe\>/';
			if(preg_match($preg, html_entity_decode($item['video_path']),$match)){
				$item['video_path'] = $match[1];
			}
		}
		$vote_img = explode(";",$item['vote_img']);
		if($item['upload_type'] == 1){
			foreach($vote_img as $key=>$val){
				$vote_img[$key] = $val;
			}
		}else{
			foreach($vote_img as $key=>$val){
				$vote_img[$key] = str_replace('thumb_','big_',$val); 
			}
		}
		$this->assign('imgUrl',end($vote_img));
		$this->assign('vote_img',$vote_img);
		$this->assign('item',$item);
		//头部信息---分别做了缓存
		$this->get_head_content($action_info['default_skin']);
		$this->assign('token',$this->token);
		$this->assign('vote_id',$vote_id);
		$this->assign('is_share',$is_share);
		$action_info['custom_sharetitle_lp'] = ($action_info['custom_sharetitle_lp'] != "") ? str_replace(array('{{活动名称}}','{{投票标题}}','{{得票票数}}'),array($action_info['action_name'],$item['vote_title'],$item['vote_count']),$action_info['custom_sharetitle_lp']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$action_info['custom_sharedsc_lp'] = ($action_info['custom_sharedsc_lp'] != "") ? str_replace(array('{{活动名称}}','{{投票标题}}','{{得票票数}}'),array($action_info['action_name'],$item['vote_title'],$item['vote_count']),$action_info['custom_sharedsc_lp']) : $action_info['reply_content'];
		$this->assign($action_info);
		//判断活动和报名是否过期,分配变量
		$this->check_expire($action_info);
		$this->clear_vote_day();
		$this->assign('item_id',$item['id']);
		$this->assign('apply_fields_name', json_decode($action_info['apply_fields_name'],true));
		$this->display($this->get_tplname($action_info));
	}
	//我的投票记录
	public function MyvoteRecord(){
		$userId  = (int)$_POST['user_id'];
		$vote_id  = (int)$_POST['vote_id'];
		$token  = (string)$_POST['token'];
		$sql = "select count(*) as my_vote_count,vote_title,vote_count,vote_time,item_id from ".C('DB_PREFIX')."voteimg_record left join ".C('DB_PREFIX')."voteimg_item on ".C('DB_PREFIX')."voteimg_record.item_id = ".C('DB_PREFIX')."voteimg_item.id where ".C('DB_PREFIX')."voteimg_record.user_id = {$userId} and ".C('DB_PREFIX')."voteimg_record.token = '{$token}' and ".C('DB_PREFIX')."voteimg_record.vote_id = '{$vote_id}' group by ".C('DB_PREFIX')."voteimg_record.item_id order by vote_count desc";
		$record = M('voteimg_record')->query($sql);
		$this->assign('vote_record',$record);
		$this->display('vote_record');
	}
	//排行
	public function vote_ranking(){
		if(empty($this->action_id) || empty($this->token)){
			$this->assign('vote_record','');
		}
		$vote_id = $this->_get('id','intval');
		//action活动信息
		$action_info = M('voteimg')->where(array('id'=>$vote_id))->find();
		if(!empty($action_info)){
			if($action_info['display'] !=1){
				$this->error('该活动未开启');exit;
			}
			$this->assign('action_info',$action_info);
		}else{
			$this->error('该活动不存在');exit;
		}
		//头部信息---分别做了缓存
		$this->get_head_content($action_info['default_skin']);
		$total = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'check_pass'=>1))->count();
		$page = new Page($total,30);
		$page->setConfig('prev','<<');
		$page->setConfig('next','>>');
		$page->setConfig('theme',"%upPage% %linkPage% %downPage%");
		$ranking = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'check_pass'=>1))->limit($page->firstRow.','.$page->listRows)->order('vote_count desc')->select();
		if($ranking){
			$this->assign('vote_record',$ranking);
			$this->assign('page',$page->show());
			$this->assign('firstRow',$page->firstRow);
		}else{
			$this->assign('vote_record','');
		}
		$this->assign('vote_id',$vote_id);
		$this->assign('user_id',M('voteimg_users')->where(array('vote_id'=>$vote_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id))->getField('user_id'));
		$this->assign('token',$this->token);
		$action_info['custom_sharetitle'] = ($action_info['custom_sharetitle'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharetitle']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$action_info['custom_sharedsc'] = ($action_info['custom_sharedsc'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharedsc']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$this->assign($action_info);
		$this->assign('imgUrl',$action_info['reply_pic']);
		$this->check_expire($action_info);
		if($action_info['default_skin'] == 1){
			$this->display('vote_record_index');
		}elseif($action_info['default_skin'] == 2){
			$this->display('vote_record_index_new');
		}elseif($action_info['default_skin'] == 3){
			$this->display('vote_record_index_third');
		}elseif($action_info['default_skin'] == 4){
			$this->display('vote_record_index_fourth');
		}else{
			$this->display('vote_record_index');
		}
	}
	//统计信息
	public function stat_info(){
		if(empty($this->action_id) || empty($this->token)){
			$return_json = json_encode(array('item_count'=>0,'voted_count'=>0,'visit_count'=>0));
		}
		//参与选手
		$item_count = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'check_pass'=>1))->count();
		//已投票数
		$voted_count = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token))->sum('vote_count');
		$visit_count_self = M('voteimg_stat')->where(array('vote_id'=>$this->action_id,'token'=>$this->token))->getField('count');
		//访问量
		$visit_count = M('voteimg_users')->where(array('vote_id'=>$this->action_id,'token'=>$this->token))->count();
		if($visit_count_self > 0){
			$visit_count=$visit_count_self+$visit_count;
		}
		$return_json = json_encode(array('item_count'=>$item_count,'voted_count'=>$voted_count,'visit_count'=>$visit_count));
		exit($return_json);
	}
	//报名上传图片
	public function localupload($token = ''){
		$upload = new UploadFile();
		$upload->allowExts  = array('gif','jpg','jpeg','bmp','png');
		$upload->autoSub=1;
        $firstLetter=substr($token,0,1);
        $upload->savePath =  './uploads/'.$firstLetter.'/'.$token.'/';// 设置附件上传目录
        //
        if (!file_exists($_SERVER['DOCUMENT_ROOT'].'/uploads')||!is_dir($_SERVER['DOCUMENT_ROOT'].'/uploads')){
            mkdir($_SERVER['DOCUMENT_ROOT'].'/uploads',0777);
        }
        $firstLetterDir=$_SERVER['DOCUMENT_ROOT'].'/uploads/'.$firstLetter;
        if (!file_exists($firstLetterDir)||!is_dir($firstLetterDir)){
            mkdir($firstLetterDir,0777);
        }
        if (!file_exists($firstLetterDir.'/'.$token)||!is_dir($firstLetterDir.'/'.$token)){
            mkdir($firstLetterDir.'/'.$token,0777);
        }
		if(!file_exists($upload->savePath)||!is_dir($upload->savePath)){
			mkdir($upload->savePath,0777);
		}
		$upload->hashLevel=2;
		
		if($upload->upload()){// 上传成功 获取上传文件信息
            $info =  $upload->getUploadFileInfo();
            $this->siteUrl=$this->siteUrl?$this->siteUrl:C('site_url');
			$msg = $this->siteUrl.substr($upload->savePath,1).$info[0]['savename'];
			return array('status'=>'SUCCESS','img_url'=>$msg);
        }else{
			$msg=$upload->getErrorMsg();
			return array('status'=>'FAIL','error_msg'=>$msg);
		}
	}
	//关注、注册提醒
	private function notice($voteimg = ''){
		if(empty($voteimg)){ $this->error('该活动不存在');return false;}
		if($voteimg['is_follow'] == 2 && $this->isSubscribe() == false){
			$follow_msg = (!empty($voteimg['follow_msg'])) ? $voteimg['follow_msg'] : '';
			$custom_url = (!empty($voteimg['follow_url'])) ? $voteimg['follow_url'] : '';
			$custom_btn_msg = (!empty($voteimg['follow_btn_msg'])) ? $voteimg['follow_btn_msg'] : '';
			$this->assign('notice_content','no_follow');
			$this->memberNotice($follow_msg,1,$custom_url,$custom_btn_msg);
			return false;
		}
		if($voteimg['territory_limit'] == 1){
			$voter = M('voteimg_users')->where(array('vote_id'=>$voteimg['id'],'token'=>$voteimg['token'],'wecha_id'=>$this->wecha_id))->find();
			if($voter['phone'] == "no"){
				$this->assign('notice_content','no_register');
				$custom_register_msg = (!empty($voteimg['register_msg'])) ? $voteimg['register_msg'] : '';
				$config['is_voteimg'] = 1;
				$config['wecha_id'] = $this->wecha_id;
				$this->memberNotice($custom_register_msg,0,$config,$voteimg['id']);
				return false;
			}else{
				$check_mobile = $this->CheckMobile($voteimg['pro_city'],$voter['phone']);
				if(!$check_mobile){
					$this->assign('notice_content','mobile_limit');
					return false;
				} 
			}
		}else{
			if($voteimg['is_register'] == 1 && empty($this->fans['tel'])){
				$custom_register_msg = (!empty($voteimg['register_msg'])) ? $voteimg['register_msg'] : '';
				$this->assign('notice_content','no_register');
				$this->memberNotice($custom_register_msg);
				return false;
			}
		}
		$this->assign('notice_content','');
		return true;
	}
	//上传图片
	public function ajaxImgUpload(){
		$filename = trim($_POST['filename']);
        $img = $_POST[$filename];
        $img = str_replace('data:image/png;base64,', '', $img);
        $img = str_replace(' ', '+', $img);
        $imgdata = base64_decode($img);
        $getupload_dir = "/uploads/voteimg/" . date('Ymd');
        $upload_dir = "." . $getupload_dir;
        if (!is_dir($upload_dir)) {
            mkdir($upload_dir, 0777, true);
        }
		//$newfilename = 'voteimg_' . date('YmdHis') . '.jpg';
		$newfilename = 'voteimg_'.substr(md5($this->wecha_id),5,10).'_'.date('YmdHis') .'.jpg';
		//生成原图--不入库只在详情页通过修改路径读取
		$save = file_put_contents($upload_dir.'/big_'.$newfilename,$imgdata);
		$image = new Image();
		//生成缩略图入库
		$thumb = $image->thumb($upload_dir.'/big_'.$newfilename,$upload_dir.'/thumb_'.$newfilename,'',650,950);
		$up_domainname = C('up_domainname') ? str_replace('http://','',C('up_domainname')) : '';
		$upload_type = (C('upload_type') != "" && $up_domainname != "")? C('upload_type') : 'local';
		if($upload_type == 'upyun'){
			$json = $this->Upyun_upload($upload_dir.'/thumb_'.$newfilename);
			$decode_json = json_decode($json,true);
			$this->del_upload($this->siteUrl . $getupload_dir . '/thumb_' . $newfilename);
			$this->del_upload($this->siteUrl . $getupload_dir . '/big_' . $newfilename);
			if($decode_json['code'] == 200 && $decode_json['message'] == 'ok'){
				$this->statisticsFiles('http://'.$up_domainname.$decode_json['url']);
				$this->dexit(array('error' => 0, 'data' => array('code' => 1, 'url' => 'http://'.$up_domainname.$decode_json['url'], 'msg' => '')));
			}else{
				$this->dexit(array('error' => 1, 'data' => array('code' => 0, 'url' => '','msg' =>$decode_json['message'])));
			}
		}else{
			if ($save) {
				$this->statisticsFiles($this->siteUrl . $getupload_dir . '/thumb_' . $newfilename);
				$this->dexit(array('error' => 0, 'data' => array('code' => 1, 'url' =>$this->siteUrl . $getupload_dir . '/thumb_' . $newfilename, 'msg' => '')));
			} else {
				$this->dexit(array('error' => 1, 'data' => array('code' => 0, 'url' => '', 'msg' => '保存失败！')));
			}
		}
	}
	//上传到又拍云
	public function Upyun_upload($resource = ''){
		$resource = $_SERVER['DOCUMENT_ROOT'].str_replace(array('./'),array('/'),$resource);
		if(!@file_exists($resource)){
			return json_encode(array('code'=>1000,'message'=>'上传文件不存在'));
		}
		$bucket = C('up_bucket');
		$form_api_secret = C('up_form_api_secret');
		if(empty($bucket) || empty($form_api_secret)){
			return json_encode(array('code'=>1002,'message'=>'参数错误,请登录总后台在[站点管理-附件设置]中设置正确的值'));
		}
		$options = array();
		$options['bucket'] = $bucket; /// 空间名
		$options['expiration'] = time()+600; /// 授权过期时间
		$options['save-key'] = '/'.$this->token.'/{year}/{mon}/{day}/'.time().'_{random}{.suffix}'; /// 文件名生成格式，请参阅 API 文档
		$options['allow-file-type'] = C('up_exts'); /// 控制文件上传的类型，可选
		$options['content-length-range'] = '0,'.intval(C('up_size'))*1024; /// 限制文件大小，可选
		$policy = base64_encode(json_encode($options));
		$signature = md5($policy.'&'.$form_api_secret); 
		$requestUrl = 'http://v0.api.upyun.com/'.$bucket;
		$respon_json = $this->postCurl($requestUrl,array('file'=>'@'.$resource,'policy'=>$policy,'signature'=>$signature));
		return $respon_json;
	}
	//统计上传图片信息
	private function statisticsFiles($url = ''){
		//return true;
		if(!empty($url)){
			//$Files = new Files();
			/*
			$fileinfo=get_headers($url,1);
			$fileinfo['Content-Type']=$fileinfo['Content-Type']?$fileinfo['Content-Type']:'';
			$Files->index($url,intval($fileinfo['Content-Length']),$fileinfo['Content-Type'],'',$this->token);*/
			$filename = str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$url);
			$filename = getcwd().$filename;
			$file_info = getimagesize($filename);
			$type = $file_info['mime'];
			$size = filesize($filename);
			Files::index($url,$size,$type,'',$this->token);
			//$Files->index($url,$size,$type,'',$this->token);
			return true;
		}else{
			return false;
		}
	}
	private function dexit($data = ''){
        if (is_array($data)) {
            echo json_encode($data);
        } else {
            echo $data;
        }
        exit();
    }
	//发送请求
	function postCurl($url, $data,$method='POST'){
		$ch = curl_init();
		//$header = "Accept-Charset: utf-8";
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($ch, CURLOPT_SSLVERSION, CURL_SSLVERSION_TLSv1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
		curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
		//超时时间
		curl_setopt($ch,CURLOPT_TIMEOUT,40);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS,$data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$exec = curl_exec($ch);
		if($exec){
			curl_close($ch);
			return $exec;
		}else{
			$errno = curl_errno($ch);
			$error = curl_error($ch);
			curl_close($ch);
			return json_encode(array('errcode'=>$errno,'errmsg'=>$error));
		}
	}
	//删除上传的废除图片
	private function del_upload($img_url = ''){
		if(empty($img_url)){
			return false;
		}
		if(strpos($img_url,';')){
			$img_array = explode(";",$img_url);
			foreach((array)$img_array as $img){
				$filename = str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$img);
				$filename = getcwd().$filename;
				$big_img = str_replace('thumb_','big_',$img); 
				$big_file = str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$big_img);
				$big_file = getcwd().$big_file;
				if(!empty($filename) && @file_exists($filename)){
					unlink($filename);
				}
				if(!empty($big_file) && @file_exists($big_file)){
					unlink($big_file);
				}
			}
		}else{
			$filename = str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$img_url);
			$filename = getcwd().$filename;
			$big_img = str_replace('thumb_','big_',$img_url); 
			$big_file = str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$big_img);
			$big_file = getcwd().$big_file;
			if(!empty($filename) && @file_exists($filename)){
				unlink($filename);
			}
			if(!empty($big_file) && @file_exists($big_file)){
				unlink($big_file);
			}
		}
		return true;
	}
	//banner、stat、menu、bottom信息
	private function get_head_content($default_skin = 1){
		//banner--缓存
		$where = array('token'=>$this->token,'vote_id'=>$this->action_id);
		$cache_banner = S($this->token.'_'.$this->action_id.'_banner');
		if(!empty($cache_banner)){
			$banner = $cache_banner;
		}else{
			$banner = M('voteimg_banner')->where($where)->field('img_url,external_links')->select();
			foreach ($banner as $key => $value) {
				$banner[$key]['external_links'] = $this->getLink($value['external_links']);
			}
			S($this->token.'_'.$this->action_id.'_banner',$banner);
		}
		$this->assign('banner',$banner);
		//stat统计栏
		$cache_stat = S($this->token.'_'.$this->action_id.'_stat');
		if(!empty($cache_stat)){
			$stat = $cache_stat;
		}else{
			$stat  = M('voteimg_stat')->where(array('token'=>$this->token,'vote_id'=>$this->action_id))->find();
			S($this->token.'_'.$this->action_id.'_stat',$stat);
		}
		if($stat){
			$name = explode(",",$stat['stat_name']);
			$this->assign('hide',$stat['hide']);
			$this->assign('name',$name);
		}
		//奖品设置
		$cache_prize = S($this->token.'_'.$this->action_id.'_prize');
		if(!empty($cache_prize)){
			$voteimg_prize = $cache_prize;
		}else{
			$voteimg_prize = M('voteimg_prize')->where(array('vote_id'=>$this->action_id,'token'=>$this->token))->select();
			S($this->token.'_'.$this->action_id.'_prize',$voteimg_prize);
		}
		//赞助商设置
		$cache_sponor = S($this->token.'_'.$this->action_id.'_sponor');
		if(!empty($cache_sponor)){
			$voteimg_sponor = $cache_sponor;
		}else{
			$voteimg_sponor = M('voteimg_sponor')->where(array('vote_id'=>$this->action_id,'token'=>$this->token))->select();
			S($this->token.'_'.$this->action_id.'_sponor',$voteimg_sponor);
		}
		$this->assign('voteimg_prize',$voteimg_prize);
		$this->assign('voteimg_sponor',$voteimg_sponor);
		//menu
		$cache_menu = S($this->token.'_'.$this->action_id.'_menu');
		if(!empty($cache_menu)){
			$all_menu = $cache_menu;
		}else{
			$all_menu = M('voteimg_menus')->where(array('token'=>$this->token,'vote_id'=>$this->action_id))->select();
			S($this->token.'_'.$this->action_id.'_menu',$all_menu);
		}
		foreach($all_menu as $key=>$val){
			if($val['type'] == 2){
				$menu[$key] = $all_menu[$key];
			}elseif($val['type'] == 1 && $val['hide'] == 1){
				$custom_menu[$key] = $all_menu[$key];
				if(!empty($val['menu_link'])){
					$custom_menu[$key]['menu_link'] = $this->getLink($val['menu_link']);
				}
			}
		}
		foreach($menu as $k=>$v){
			if(!empty($v['menu_link'])){
				$menu[$k]['menu_link']=$this->getLink($v['menu_link']);
			}
		}
		$this->assign('menu',$menu);
		$this->assign('custom_menu',$custom_menu);
		//导航
		$cache_bottom = S($this->token.'_'.$this->action_id.'_bottom');
		if(!empty($cache_bottom)){
			$all_bottom = $cache_bottom;
		}else{
			$all_bottom = M('voteimg_bottom')->where(array('token'=>$this->token,'vote_id'=>$this->action_id))->select();
			S($this->token.'_'.$this->action_id.'_bottom',$all_bottom);
		}
		$bottom_hide = 0;
		$i = 0;
		foreach($all_bottom as $k=>$v){
			if($v['type'] == 2){
				//新模板底部导航图标
				if($default_skin == 2 || $default_skin == 3 || $default_skin == 4){
					$all_bottom[$k]['bottom_icon'] = str_replace('/img/','/newvoteimg/images/',$all_bottom[$k]['bottom_icon']);
				}
				if($v['hide'] == 2){
					$bottom_hide += 1;
				}else{
					$show_id[] = $i; 
				}
				$bottom[$i] = $all_bottom[$k];
				$i++;
			}elseif($v['type'] == 1 && $v['hide'] == 1){
				$custom_bottom[$v['bottom_rank']] = $all_bottom[$k];
				if(!empty($v['bottom_link'])){
					 $custom_bottom[$v['bottom_rank']]['bottom_link'] = $this->getLink($v['bottom_link']);
				}
			}
		}
		$left_count = count($custom_bottom) + ( 4 - $bottom_hide);
		if($left_count > 4){
			for($i=0;$i<($left_count - 4);$i++){
				$bottom[$show_id[$i]]['hide'] = 2;
			}
		}
		krsort($custom_bottom);
		$this->assign('bottom',$bottom);
		$this->assign('custom_bottom',$custom_bottom);
		return true;
	}
	//切换模板
	private function get_tplname($action_info = ''){
		if(empty($action_info)){
			return ACTION_NAME;
		}
		$flag = '';
		switch($action_info['default_skin']){
			case 2:
				$flag = '_new';
				break;
			case 3:
				$flag = '_third';
				break;
			case 4:
				$flag = '_fourth';
				break;
			default:
				$flag = '';
				break;
		}
		if(ACTION_NAME == 'index' && $action_info['page_type'] == 'page'){
			C('TOKEN_ON',false);
			return 'index_page'.$flag;
		}else{
			return ACTION_NAME.$flag;
		}
	}
	//判断活动是否过期,报名是否过期
	private function check_expire($action_info = ''){
		if(empty($action_info)){
			$this->assign('allow_apply',"over");
			$this->assign('vote_date','over');
			return false;
		}
		if($action_info['apply_end_time'] < $_SERVER['REQUEST_TIME']){
			$this->assign('disabled',"disabled = 'disabled'");
			$this->assign('allow_apply',"over");
		}elseif($action_info['apply_start_time'] > $_SERVER['REQUEST_TIME']){
			$this->assign('disabled',"disabled = 'disabled'");
			$this->assign('allow_apply',"wait");
		}else{
			$this->assign('disabled',"");
			$this->assign('allow_apply',"");
		}
		//判断活动是否过期
		if($action_info['end_time'] < $_SERVER['REQUEST_TIME']){
			$this->assign('vote_date','over');
		}elseif($action_info['start_time'] > $_SERVER['REQUEST_TIME']){
			$this->assign('vote_date','wait');
		}else{
			$this->assign('vote_date','');
		}
		//判断是否报名
		$voteimg_item = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id))->order('upload_time desc')->find();
		$this->assign('check_pass',$voteimg_item['check_pass']);
		$this->assign('item_id',$voteimg_item['id']);
		if(!empty($voteimg_item) && ($voteimg_item['check_pass'] == 1 || $voteimg_item['check_pass'] == 0)){
			$this->assign('disabled',"disabled = 'disabled'");
			if($voteimg_item['check_pass'] == 1){
				$this->assign('allow_apply',"exists");
			}elseif($voteimg_item['check_pass'] == 0){
				$this->assign('allow_apply',"checking");
			}
		}
		//抽奖活动
		if($action_info['lottery_type'] != 6){
			$html_tag = '';
			switch ($action_info['lottery_type']) {
				case 1:
					$lottery_name = '大转盘';
					$lottery_link = '/index.php?g=Wap&m=Lottery&a=index&id='.$action_info['lottery_id'].'&token='.$this->token;
					$html_tag = '<h1></h1>';
					break;
				case 2:
					$lottery_name = '刮刮卡';
					$lottery_link = '/index.php?g=Wap&m=Guajiang&a=index&id='.$action_info['lottery_id'].'&token='.$this->token;
					$html_tag = '<h3></h3>';
					break;
				case 3:
					$lottery_name = '摇抽奖';
					$lottery_link = '/index.php?g=Wap&m=ShakeLottery&a=index&id='.$action_info['lottery_id'].'&token='.$this->token;
					$html_tag = '<h4></h4>';
					break;
				case 5:
					$lottery_name = '砸金蛋';
					$lottery_link = '/index.php?g=Wap&m=GoldenEgg&a=index&id='.$action_info['lottery_id'].'&token='.$this->token;
					$html_tag = '<h5></h5>';
					break;
				case 10:
					$lottery_name = '九宫格';
					$lottery_link = '/index.php?g=Wap&m=Jiugong&a=index&id='.$action_info['lottery_id'].'&token='.$this->token;
					$html_tag = '<h2></h2>';
					break;
				default:
					$lottery_name = '';
					$lottery_link = '';
					$html_tag = '';
					break;
			}
			$this->assign('html_tag',$html_tag);
			$this->assign('lottery_name',$lottery_name);
			$this->assign('lottery_link',$lottery_link);
		}
		return true;
	}
	private function clear_vote_day(){
		//将今日之前的[今日投票数]归零
		if(S($this->token.'_'.$this->action_id.'_'.$this->wecha_id.'_vote_day') == ""){
			$today_time = strtotime(date('Y-m-d 00:00:00',$_SERVER['REQUEST_TIME']));
			$evening_time = strtotime(date('Y-m-d 23:59:59',$_SERVER['REQUEST_TIME']));
			$cache_time = $evening_time - $_SERVER['REQUEST_TIME'];
			$where = "vote_id = {$this->action_id} and token = '{$this->token}' and wecha_id = '{$this->wecha_id}' and vote_time < '{$today_time}'";
			$yesterday = M('voteimg_users')->where($where)->find();
			if(!empty($yesterday)){
				M('voteimg_users')->where($where)->save(array('votenum_day'=>0,'vote_today'=>''));
			}
			S($this->token.'_'.$this->action_id.'_'.$this->wecha_id.'_vote_day',1,$cache_time);
		}
	}
	//验证手机归属地是否合法
	public function CheckMobile($pro_city = '',$mobile = ''){
		if(empty($pro_city) && strpos($pro_city,"_") === false){
			return false;
		}
		if(empty($mobile)){
			return false;
		}
		$MobileAttribution = $this->MobileAttribution($mobile);
		$MobileAttribution = mb_convert_encoding(urldecode($MobileAttribution),'UTF-8','GBK');
		list($limit_pro,$limit_city) = explode("=",$MobileAttribution);
		if(strpos($pro_city,'|') !== false){
			$pro_citys = explode("|",$pro_city);
			foreach($pro_citys as $key=>$val){
				list($p,$c) = explode("_",$val);
				//如果城市没选,该省下所有城市可以参与
				if(strpos($p,$limit_pro) !== false && empty($c)){
					return true;
				}elseif(strpos($p,$limit_pro) !== false && strpos($c,$limit_city) !== false){
					return true;
				}else{
					continue;
				}
			}
		}else{
			list($province,$city) = explode("_",$pro_city);
			if(strpos($province,$limit_pro) !== false && empty($city)){
				return true;
			}elseif(strpos($province,$limit_pro) !== false && strpos($city,$limit_city) !== false){
				return true;
			}
		}
		return false;
	}
	//获取手机归属地
	private function MobileAttribution($mobile = ''){
		if($mobile == ""){
			return false;
		}
		header("Content-Type:text/html;Charset=utf-8"); 
 		if(F('cache_'.$mobile) != ""){
			return F('cache_'.$mobile);
		}
		$request_url = 'http://virtual.paipai.com/extinfo/GetMobileProductInfo?mobile='.$mobile.'&amount=10000';
		$repost_string = file_get_contents($request_url);
		$preg = "/^\(\{mobile:'\d+',province:'(.*?)',.*?cityname:'(.*?)'\}\);/";
		preg_match($preg,$repost_string,$match);
 		if(!empty($match[1]) && !empty($match[2])){
			F('cache_'.$mobile,urlencode($match[1].'='.$match[2]));
		}
		return $match[1].'='.$match[2];
	}
	//个人中心
	public function HomePage(){
		if($this->action_id == "" || $this->token == ""){
			$this->error('参数错误');
		}
		if($_GET['user_id'] != ""){//个人中心菜单点击过来的
			$where = array('user_id'=>(int)$_GET['user_id']);
		}elseif($this->wecha_id != ""){//订单详情跳转过来的
			$where = array('vote_id'=>$this->action_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id);
		}else{
			$this->error('参数错误');
		}
		$myInfo = M('voteimg_users')->where($where)->find();
		if(empty($myInfo)){
			$this->error('非法操作');
		}
		$user_id = (int)$myInfo['user_id'];
		//我的报名信息
		$my_vote = M('voteimg_item')->where(array('wecha_id'=>$this->wecha_id,'vote_id'=>$this->action_id))->order('upload_time desc')->find();
		if(!empty($my_vote)){
			$ranking = M('voteimg_item')->where(array('vote_id'=>$this->action_id,'token'=>$this->token,'vote_count'=>array('gt',$my_vote['vote_count'])))->count();
			$my_vote['ranking'] = $ranking+1;
			//我的红包
			$hb = M('voteimg_confighb')->where(array('item_id'=>$my_vote['id']))->find();
			if(!empty($hb)){
				$this->assign('hbinfo',$hb);
			}
			//我获得的票数记录
			$get_sql = "select count(*) as my_vote_count,wecha_pic,nick_name,".C('DB_PREFIX')."voteimg_record.user_id,".C('DB_PREFIX')."voteimg_record.item_id from ".C('DB_PREFIX')."voteimg_record left join ".C('DB_PREFIX')."voteimg_users on ".C('DB_PREFIX')."voteimg_record.user_id = ".C('DB_PREFIX')."voteimg_users.user_id where ".C('DB_PREFIX')."voteimg_record.item_id = {$my_vote['id']} and ".C('DB_PREFIX')."voteimg_record.token = '{$this->token}' and ".C('DB_PREFIX')."voteimg_record.vote_id = '{$this->action_id}' group by ".C('DB_PREFIX')."voteimg_record.user_id order by my_vote_count desc limit 0,5";
			$get_voterecord  = M('voteimg_record')->query($get_sql);
			//我发送的红包记录
			$send_sql = "select sum(money) as total_money,".C('DB_PREFIX')."voteimg_users.user_id,nick_name,wecha_pic,".C('DB_PREFIX')."voteimg_hbrecord.item_id from ".C('DB_PREFIX')."voteimg_hbrecord left join ".C('DB_PREFIX')."voteimg_users on ".C('DB_PREFIX')."voteimg_hbrecord.user_id = ".C('DB_PREFIX')."voteimg_users.user_id where ".C('DB_PREFIX')."voteimg_hbrecord.item_id = {$my_vote['id']}  group by ".C('DB_PREFIX')."voteimg_hbrecord.user_id order by total_money desc limit 0,5";
			$send_hb_list = M('voteimg_hbrecord')->query($send_sql);
			$send_received = M('voteimg_hbrecord')->where(array('item_id'=>$my_vote['id'],'received'=>1))->sum('money');
			$this->assign('my_vote',$my_vote);
			$this->assign('get_voterecord',$get_voterecord);
			$this->assign('send_hb_list',$send_hb_list);
			$this->assign('send_received',$send_received);
			//选项图片
			$vote_img = explode(";",$my_vote['vote_img']);
			if($my_vote['upload_type'] == 1){
				foreach($vote_img as $key=>$val){
					$vote_img[$key] = $val;
				}
			}else{
				foreach($vote_img as $key=>$val){
					$vote_img[$key] = str_replace('thumb_','big_',$val); 
				}
			}
			$this->assign('imgUrl',end($vote_img));
		}
		//我的投票记录
		$sql = "select count(*) as my_vote_count,vote_title,vote_count,baby_id,item_id,vote_img from ".C('DB_PREFIX')."voteimg_record left join ".C('DB_PREFIX')."voteimg_item on ".C('DB_PREFIX')."voteimg_record.item_id = ".C('DB_PREFIX')."voteimg_item.id where ".C('DB_PREFIX')."voteimg_record.user_id = {$user_id} and ".C('DB_PREFIX')."voteimg_record.token = '{$this->token}' and ".C('DB_PREFIX')."voteimg_record.vote_id = '{$this->action_id}' group by ".C('DB_PREFIX')."voteimg_record.item_id order by vote_count desc limit 0,5";
		$my_voterecord = M('voteimg_record')->query($sql);
		foreach ($my_voterecord as $key => $value) {
			$value['vote_img'] = trim($value['vote_img'],';');
			if(strpos($value['vote_img'],";") === false){
				$my_voterecord[$key]['img'] = $value['vote_img'];
			}else{
				$vote_img = explode(";", $value['vote_img']);
				$my_voterecord[$key]['img'] = end($vote_img);
			}
			unset($my_voterecord[$key]['vote_img']);
		}
		//我获得的红包记录
		$hb_sql = "select sum(money) as total_money,vote_title,vote_img,baby_id,item_id from ".C('DB_PREFIX')."voteimg_hbrecord left join ".C('DB_PREFIX')."voteimg_item on ".C('DB_PREFIX')."voteimg_hbrecord.item_id = ".C('DB_PREFIX')."voteimg_item.id where ".C('DB_PREFIX')."voteimg_hbrecord.user_id = {$user_id} and ".C('DB_PREFIX')."voteimg_hbrecord.token = '{$this->token}' group by ".C('DB_PREFIX')."voteimg_hbrecord.item_id order by total_money desc limit 0,5";
		$hb_list = M('voteimg_hbrecord')->query($hb_sql);
		$my_totalhb_count = M('voteimg_hbrecord')->where(array('user_id'=>$user_id))->sum('money');
		$my_not_received = M('voteimg_hbrecord')->where(array('user_id'=>$user_id,'received'=>0))->sum('money');
		$this->assign('my_not_received',$my_not_received);
		foreach ($hb_list as $k => $v) {
			$v['vote_img'] = trim($v['vote_img'],';');
			if(strpos($v['vote_img'],";") === false){
				$hb_list[$k]['voteimg'] = $v['vote_img'];
			}else{
				$vote_img = explode(";", $v['vote_img']);
				$hb_list[$k]['voteimg'] = end($vote_img);
			}
			unset($hb_list[$k]['vote_img']);
		}
		$action_info = M('voteimg')->where(array('id'=>$this->action_id))->find();
		$action_info['custom_sharetitle_lp'] = ($action_info['custom_sharetitle_lp'] != "") ? str_replace(array('{{活动名称}}','{{投票标题}}','{{得票票数}}'),array($action_info['action_name'],$my_vote['vote_title'],$my_vote['vote_count']),$action_info['custom_sharetitle_lp']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$action_info['custom_sharedsc_lp'] = ($action_info['custom_sharedsc_lp'] != "") ? str_replace(array('{{活动名称}}','{{投票标题}}','{{得票票数}}'),array($action_info['action_name'],$my_vote['vote_title'],$my_vote['vote_count']),$action_info['custom_sharedsc_lp']) : $action_info['reply_content'];
		$this->assign('userinfo',$myInfo);
		$this->assign('my_voterecord',$my_voterecord);
		$this->assign('my_totalhb_count',$my_totalhb_count);
		$this->assign('hb_list',$hb_list);
		$this->assign('user_id',$user_id);
		$this->assign('vote_id',$this->action_id);
		$this->assign('token',$this->token);
		$this->assign('wecha_id',$this->wecha_id);
		$this->assign('action_info',$action_info);
		$this->check_expire($action_info);
		$this->display();
	}
	//个人中心投票记录ajax加载
	public function homepagegefall(){
		$my_item_id = (int)$_GET['my_item_id'];
		$action_id = (int)$_GET['action_id'];
		$user_id = (int)$_GET['user_id'];
		$votetype = (string)$_GET['votetype'];
		if($votetype == 'for_vote'){//谁给我投票列表
			$num = (int)$_GET['num_a'];
			$sql = "select count(*) as my_vote_count,wecha_pic,nick_name,".C('DB_PREFIX')."voteimg_record.user_id,".C('DB_PREFIX')."voteimg_record.item_id from ".C('DB_PREFIX')."voteimg_record left join ".C('DB_PREFIX')."voteimg_users on ".C('DB_PREFIX')."voteimg_record.user_id = ".C('DB_PREFIX')."voteimg_users.user_id where ".C('DB_PREFIX')."voteimg_record.item_id = {$my_item_id} and ".C('DB_PREFIX')."voteimg_record.token = '{$this->token}' and ".C('DB_PREFIX')."voteimg_record.vote_id = '{$action_id}' group by ".C('DB_PREFIX')."voteimg_record.user_id order by my_vote_count desc limit ".(5+$num*4).",4";
			$list = M('voteimg_record')->query($sql);
		}elseif($votetype == 'my_vote'){//我给谁投票列表
			$num = (int)$_GET['num_b'];
			$sql = "select count(*) as my_vote_count,vote_title,vote_count,baby_id,item_id,vote_img from ".C('DB_PREFIX')."voteimg_record left join ".C('DB_PREFIX')."voteimg_item on ".C('DB_PREFIX')."voteimg_record.item_id = ".C('DB_PREFIX')."voteimg_item.id where ".C('DB_PREFIX')."voteimg_record.user_id = {$user_id} and ".C('DB_PREFIX')."voteimg_record.token = '{$this->token}' and ".C('DB_PREFIX')."voteimg_record.vote_id = '{$action_id}' group by ".C('DB_PREFIX')."voteimg_record.item_id order by vote_count desc limit ".(5+$num*4).",4";
			$list = M('voteimg_record')->query($sql);
			foreach ($list as $key => $value) {
				$value['vote_img'] = trim($value['vote_img'],';');
				if(strpos($value['vote_img'],";") === false){
					$list[$key]['img'] = $value['vote_img'];
				}else{
					$vote_img = explode(";", $value['vote_img']);
					$list[$key]['img'] = end($vote_img);
				}
				unset($list[$key]['vote_img']);
			}
		}
		if($list){
			exit(json_encode(array('status'=>'SUCCESS','data'=>$list)));
		}else{
			exit(json_encode(array('status'=>'FAIL','data'=>'')));
		}
	}
	//个人中心红包记录ajax加载
	public function hblistfall(){
		$my_item_id = (int)$_GET['my_item_id'];
		$user_id = (int)$_GET['user_id'];
		$hbtype = (string)$_GET['hbtype'];
		if($hbtype == 'my_hb'){//我收到的红包
			$num = (int)$_GET['num_c'];
			$hb_sql = "select sum(money) as total_money,vote_title,vote_img,baby_id,item_id from ".C('DB_PREFIX')."voteimg_hbrecord left join ".C('DB_PREFIX')."voteimg_item on ".C('DB_PREFIX')."voteimg_hbrecord.item_id = ".C('DB_PREFIX')."voteimg_item.id where ".C('DB_PREFIX')."voteimg_hbrecord.user_id = {$user_id} and ".C('DB_PREFIX')."voteimg_hbrecord.token = '{$this->token}' group by ".C('DB_PREFIX')."voteimg_hbrecord.item_id order by total_money desc limit ".(5+$num*4).",4";
			$hb_list = M('voteimg_hbrecord')->query($hb_sql);
			foreach ($hb_list as $k => $v) {
				$v['vote_img'] = trim($v['vote_img'],';');
				if(strpos($v['vote_img'],";") === false){
					$hb_list[$k]['voteimg'] = $v['vote_img'];
				}else{
					$vote_img = explode(";", $v['vote_img']);
					$hb_list[$k]['voteimg'] = end($vote_img);
				}
				unset($hb_list[$k]['vote_img']);
			}
		}elseif($hbtype == 'for_hb'){//我发出去的红包
			$num = (int)$_GET['num_d'];
			$send_sql = "select sum(money) as total_money,".C('DB_PREFIX')."voteimg_users.user_id,nick_name,wecha_pic,".C('DB_PREFIX')."voteimg_hbrecord.item_id from ".C('DB_PREFIX')."voteimg_hbrecord left join ".C('DB_PREFIX')."voteimg_users on ".C('DB_PREFIX')."voteimg_hbrecord.user_id = ".C('DB_PREFIX')."voteimg_users.user_id where ".C('DB_PREFIX')."voteimg_hbrecord.item_id = {$my_item_id}  group by ".C('DB_PREFIX')."voteimg_hbrecord.user_id order by total_money desc limit ".(5+$num*4).",4";
			$hb_list = M('voteimg_hbrecord')->query($send_sql);
		}
		if($hb_list){
			exit(json_encode(array('status'=>'SUCCESS','data'=>$hb_list)));
		}else{
			exit(json_encode(array('status'=>'FAIL','data'=>'')));
		}
	}

	//编辑红包
	function ajaxEdithb(){
		if(IS_POST){
			$shareer_scale = $_POST['shareer_scale'];
			$voter_scale = $_POST['voter_scale'];
			if(!preg_match('/^([0-9]{1}|10)$/', $shareer_scale) || !preg_match('/^([0-9]{1}|10)$/', $voter_scale)){
				echo json_encode(array('status'=>'fail','data'=>'红包分成请输入0-10之间的数'));exit;
			}elseif($shareer_scale + $voter_scale != 10){
				echo json_encode(array('status'=>'fail','data'=>'红包比例设置失败'));exit;
			}
			if($_POST['min_money'] == ""){
				echo json_encode(array('status'=>'fail','data'=>'红包最小金额请输入数字'));exit;
			}elseif($_POST['min_money'] < 0){
				echo json_encode(array('status'=>'fail','data'=>'红包最小金额请输入大于0的数字'));exit;
			}elseif($_POST['min_money'] < 0.1){
				echo json_encode(array('status'=>'fail','data'=>'红包最小金额请大于等于0.1元'));exit;
			}
			if($_POST['max_money'] == ""){
				echo json_encode(array('status'=>'fail','data'=>'红包最大金额请输入数字'));exit;
			}elseif($_POST['max_money'] < 0){
				echo json_encode(array('status'=>'fail','data'=>'红包最大金额请输入大于0的数字'));exit;
			}
			if($_POST['min_money'] > $_POST['max_money']){
				echo json_encode(array('status'=>'fail','data'=>'红包最小金额必须小于红包最大金额'));exit;
			}
			if($_POST['actiontype'] == 'continue_echarge'){
				if($_POST['total_money'] == ""){
					echo json_encode(array('status'=>'fail','data'=>'红包充值金额请输入数字'));exit;
				}elseif($_POST['total_money'] < 1){
					echo json_encode(array('status'=>'fail','data'=>'红包充值金额最少1元'));exit;
				}elseif($_POST['total_money'] < $_POST['min_money']){
					echo json_encode(array('status'=>'fail','data'=>'红包充值金额必须大于最小金额'));exit;
				}
			}
			if($_POST['item_id'] == ""){
				echo json_encode(array('status'=>'fail','data'=>'红包设置失败'));exit;
			}
			$exists = M('voteimg_confighb')->where(array('item_id'=>(int)$_POST['item_id']))->find();
			$data = array();
			$data['shareer_scale'] = $shareer_scale/10;
			$data['voter_scale'] = $voter_scale/10;
			$data['min_money'] = $_POST['min_money'];
			$data['max_money'] = $_POST['max_money'];
			if(empty($exists)){	 //添加
				$data['wecha_id'] = $this->wecha_id;
				$data['user_id'] = (int)$_POST['user_id'];
				$data['vote_id'] = (int)$_POST['vote_id'];
				$data['item_id'] = (int)$_POST['item_id'];
				$data['total_money'] = 0;
				$data['lost_money'] = 0;
				$data['paystatus'] = 0;
				$data['token'] = $_POST['token'];
				$status = M('voteimg_confighb')->add($data);
				if($status){
					 M('voteimg_item')->where(array('id'=>$data['item_id']))->save(array('ifhongbao'=>1));
				}
				$notice = '添加';
				$_POST['hb_id'] = $status;
			}else{ //修改
				$status = M('voteimg_confighb')->where(array('hb_id'=>(int)$exists['hb_id']))->save($data);
				$notice = '修改';
			}
			if($status !== false){
				if($_POST['actiontype'] == 'continue_echarge'){//继续充值
					$payConfig = M('Alipay_config')->where(array('token'=>$_POST['token'], 'open' => 1))->find();
					$payConfigInfo = unserialize($payConfig['info']);
					$payConfig = array_map('trim', $payConfigInfo['weixin']);
					$pl = $payConfig['open'] ? 0 : 1;
					$_POST['orderid'] = date("YmdHis", time()).rand(10000,99999);
					$_POST['platform'] = $pl;
					if(!$this->AddBook($_POST)){ 
						echo json_encode(array('status'=>'fail','data'=>'生成订单失败'));exit;
					}else{
						echo json_encode(array('status'=>'done','data'=>array('orderid'=>$_POST['orderid'],'platform'=>$pl)));exit;
					}
				}else{
					echo json_encode(array('status'=>'done','data'=>'红包'.$notice.'成功'));exit;
				}
			}else{
				echo json_encode(array('status'=>'fail','data'=>'红包'.$notice.'失败'));exit;
			}
		}
	}
	//我投票的详细记录
	public function MyVotedetails(){
		$user_id =  (int)$_GET['user_id'];
		$item_id = (int)$_GET['item_id'];
		$vote_id = (int)$_GET['vote_id'];
		$votetype = (string)$_GET['votetype'];
		$num = $_GET['num'] ? (int)$_GET['num'] : 0;
		$total = M('voteimg_record')->where(array('user_id'=>$user_id,'item_id'=>$item_id,'vote_id'=>$vote_id))->count();
		$details_list = M('voteimg_record')->where(array('user_id'=>$user_id,'item_id'=>$item_id,'vote_id'=>$vote_id))->limit(0,$num*5+5)->order('vote_time desc')->select();
		$str = '';
		if(!empty($details_list)){                            
			foreach ($details_list as $key => $value) {
		         $str .= '<li class="clearfix"><span>贡献一票</span><span>'.date('Y-m-d H:i:s',$value['vote_time']).'</span></li>';
			}
			if($total > 5 && $total > ($num*5+5)){
				$num ++;//每点击一次多取5条
				$str .="<li><div class='more' onclick='details(".$item_id.",".$user_id.",this,".$votetype.",".$num.")'>查看更多>></div></li>";
			}
		}else{
			$str .= '<li class="clearfix">暂无记录</li>';
		}
		echo $str;exit;
	}
	//红包详情
	public function hbdetails(){
		$user_id = (int)$_GET['user_id'];
		$item_id = (int)$_GET['item_id'];
		$votetype = (string)$_GET['votetype'];
		$num = $_GET['num'] ? (int)$_GET['num'] : 0;
		$total = M('voteimg_hbrecord')->where(array('item_id'=>$item_id,'user_id'=>$user_id))->count();
		$hb_list = M('voteimg_hbrecord')->where(array('item_id'=>$item_id,'user_id'=>$user_id))->limit(0,$num*5+5)->order('gettime desc')->select();
		$str = '';
		if(!empty($hb_list)){
			foreach ($hb_list as $key => $value) {
				if($value['gettype'] == 1){
					$str .= '<li class="clearfix share"><span><i>分享获得</i></span><span><b>￥'.$value['money'].'</b></span><span>'.date('Y-m-d H:i:s',$value['gettime']).'</span></li>';
				}else{
					$str .= '<li class="clearfix list_vote"><span><i>投票获得</i></span><span><b>￥'.$value['money'].'</b></span><span>'.date('Y-m-d H:i:s',$value['gettime']).'</span></li>';
				}
			}
			if($total > 5 && $total > ($num*5+5)){
				$num ++;
				$str .="<li><div class='more' onclick='hbdetails(".$item_id.",".$user_id.",this,".$votetype.",".$num.")'>查看更多>></div></li>";
			}
		}else{
			$str .= '<li class="clearfix">暂无记录</li>';
		}
		echo $str;exit;
	}
	//生成充值订单
	private function AddBook($insert){
		if(empty($insert)){ return false;}
		$data = array();
		$data['orderid'] = $insert['orderid'];
		$data['price'] = $insert['total_money'];
		$data['wecha_id'] = $this->wecha_id;
		$data['order_name'] = $insert['vote_title'];
		$data['paytype'] = 'Weixin';
		$data['paid'] = 0;
		$data['paystatus'] = 0;
		$data['hb_id'] = $insert['hb_id'];
		$data['vote_id'] = $insert['vote_id'];
		$data['book_time'] = $_SERVER['REQUEST_TIME'];
		$data['pay_time'] = 0;
		$data['platform'] = $insert['platform'];
		$data['token'] = $insert['token'];
		$book_id = M('voteimg_book')->add($data);
		return $book_id;
	}
	//支付回调页
	public function payReturn(){
		if(isset($_GET['nohandle'])){
			$order = M('voteimg_book')->where(array("orderid"=>$_GET["orderid"]))->find();
			header('Location:'.U('Voteimg/index', array('token' => $order['token'], 'id' => $order['vote_id'])));
		}else{
			$orderid = trim( $_GET["orderid"] );
			ThirdPayVoteimg::index($orderid);
		}
	}
	//红包分成
	private function gethongbao($voteimg_item = '',$share_code = '',$vote_user = ''){
		if($voteimg_item['id'] == "" || $share_code == "" || $vote_user['user_id'] == ""){ return false;}
		$hb_config = M('voteimg_confighb')->where(array('item_id'=>$voteimg_item['id']))->find();
		if($hb_config['paystatus'] != 1 || $hb_config['total_money'] == 0){ return false;}
		//红包随机金额
		$rand_money = $this->rand_money($hb_config['min_money'],$hb_config['max_money']);
		if($rand_money <= 0){ return false;}
		if($hb_config['total_money'] - $hb_config['lost_money'] <= 0){ 
			return false;
		}
		if($hb_config['total_money'] - $hb_config['lost_money'] < $rand_money){
			$rand_money = $hb_config['total_money'] - $hb_config['lost_money'];
		}
		$shareer_money = $rand_money*$hb_config['shareer_scale'];
		$voter_money = $rand_money*$hb_config['voter_scale'];
		$shareer_money = sprintf("%.2f",substr(sprintf("%.3f", $shareer_money), 0, -1));//不进行四舍五入
		$voter_money = sprintf("%.2f",substr(sprintf("%.3f", $voter_money), 0, -1));
		//被投票选项的share_code
		$item_share_code =  M('voteimg_users')->where(array('vote_id'=>$voteimg_item['vote_id'],'wecha_id'=>$voteimg_item['wecha_id']))->getField('share_code');
		//分享人
		$share_user = M('voteimg_users')->where(array('share_code'=>$share_code))->find();
		if(empty($share_user)){ return false;}
		//分享人不是被投票的人
		if($share_user['share_code'] != $item_share_code){
			$share = array();
			$share['user_id'] = $share_user['user_id'];
			$share['money'] = $shareer_money;
			$share['gettype'] = 1;
			$share['item_id'] = $voteimg_item['id'];
			$share['gettime'] =  $_SERVER['REQUEST_TIME'];
			$share['token'] = $vote_user['token'];
			$share['received'] = 0;//默认未领取
			$addShare = M('voteimg_hbrecord')->add($share);
		}
		//不是给自己投票
		if($vote_user['share_code'] != $item_share_code){
			$voter = array();
			$voter['user_id'] = $vote_user['user_id'];
			$voter['money'] = $voter_money;
			$voter['gettype'] = 2;
			$voter['item_id'] = $voteimg_item['id'];
			$voter['gettime'] =  $_SERVER['REQUEST_TIME'];
			$voter['token'] = $vote_user['token'];
			$voter['received'] = 0;//默认未领取
			$addVoter = M('voteimg_hbrecord')->add($voter);
		}
		$total_money_vote = $share['money']+$voter['money'];
		$updateHb = M('voteimg_confighb')->where(array('hb_id'=>$hb_config['hb_id']))->save(array('lost_money'=>array('exp','lost_money+'.$total_money_vote)));
		if($updateHb && isset($voter['money']) && $voter['money'] > 0){
			return array('votestatus'=>1,'money'=>$voter['money']);
		}
		return false;
	}
	//领取红包
	public function receive_hb(){
		$user_id = (int)$_POST['user_id'];
		$end_time = (int)$_POST['end_time'];
		if($end_time + 3*24*3600 < $_SERVER['REQUEST_TIME']){
			exit(json_encode(array('status'=>'fail', 'data'=>'领取时间超限')));
		}
		$userinfo = M('voteimg_users')->where(array('user_id'=>$user_id))->find();
		if(empty($userinfo)){
			exit(json_encode(array('status'=>'fail','data'=>'领取失败')));
		}
		if($userinfo['wecha_id'] == "" || $userinfo['token'] == ""){ 
			exit(json_encode(array('status'=>'fail', 'data'=>'参数错误,领取失败')));
		}
		$total_money = M('voteimg_hbrecord')->where(array('user_id'=>$user_id,'received'=>0))->sum('money');
		$post_money = $_POST['money'];
		if($total_money == ''){
			exit(json_encode(array('status'=>'fail', 'data'=>'领取金额不能为空')));
		}elseif($total_money < 1){
			exit(json_encode(array('status'=>'fail', 'data'=>'领取金额至少1元')));
		}elseif($total_money != $post_money){
			exit(json_encode(array('status'=>'fail', 'data'=>'领取金额异常')));
		}
		$config = array();
		$config['send_name'] = $this->wxuser['wxname'] ? $this->wxuser['wxname'] : '拉票红包';
		$config['wishing'] =  '感谢您的投票';
		$config['act_name'] = '拉票红包';
		$config['remark'] = '拉票红包';
		$config['token'] = $userinfo['token'];
		$config['openid'] = $userinfo['wecha_id'];
		$config['nick_name'] = $this->wxuser['wxname'] ? $this->wxuser['wxname'] : '拉票红包';
		if(1 <= $total_money && $total_money <= 200){//红包金额在1-200之间
			$config['money'] = $total_money;
			$hb = new Hongbao($config);
			$res = json_decode($hb->send(),true);
			if($res['status'] == 'SUCCESS'){
				$this->addReceiveLog(array('mch_billno'=>$res['mch_billno'],'money'=>$config['money']),$user_id);
			}
		}elseif($total_money > 200){//红包金额超过200,分批量领取
			$times = ceil($total_money/200);
			$config['money'] = 200.00;
			$hb = new Hongbao($config);
			for($i=1;$i<=$times;$i++){
				$res = json_decode($hb->send(),true);
				if($res['status'] != 'SUCCESS'){
					exit(json_encode(array('status'=>'fail', 'data'=>$res['msg'])));
				}else{
					$this->addReceiveLog(array('mch_billno'=>$res['mch_billno'],'money'=>$config['money']),$user_id);
				}
			}
			$config['money'] = $total_money - $times*200;
			if($config['money'] >= 1){
				$hb_new = new Hongbao($config);
				$res = json_decode($hb_new->send(),true);
				if($res['status'] == 'SUCCESS'){
					$this->addReceiveLog(array('mch_billno'=>$res['mch_billno'],'money'=>$config['money']),$user_id);
				}
			}
		}
		if($res['status'] == 'SUCCESS'){
			M('voteimg_hbrecord')->where(array('user_id'=>$user_id))->save(array('received'=>1));
			exit(json_encode(array('status'=>'done', 'data'=>'success')));
		}else{
			exit(json_encode(array('status'=>'fail', 'data'=>$res['msg'])));
		}
	}
	//退款记录入库
	private function addHbInfo($data = array(),$vote_id = '',$user_id = ''){
		if($data['refund_id'] == ""){ return false;}
		$record = array();
		$record['vote_id'] = $vote_id;
		$record['mch_billno'] = $data['refund_id'];
		$record['wecha_id'] = $this->wecha_id;
		$record['user_id'] = $user_id;
		$record['money'] = $data['refund_fee']/100;
		$record['open_status'] = 0;//默认未拆
		$record['update_time'] = 0;
		$record['refund_time'] = $_SERVER['REQUEST_TIME'];
		$record['token'] = $this->token;
		M('voteimg_hbinfo')->add($record);
	}
	//提现记录入库
	private function addReceiveLog($data = array(),$user_id = ''){
		if($data['mch_billno'] == ""){ return false;}
		$record = array();
		$record['mch_billno'] = $data['mch_billno'];
		$record['user_id'] = $user_id;
		$record['money'] = $data['money'];
		$record['receive_time'] = $_SERVER['REQUEST_TIME'];
		M('voteimg_receivelog')->add($record);
	}
	//充值记录
	public function payLog(){
		$vote_id = (int)$_POST['vote_id'];
		$token = $_POST['token'];
		$bookList = M('voteimg_book')->where(array('wecha_id'=>$this->wecha_id,'vote_id'=>$vote_id,'token'=>$token,'paystatus'=>1))->field('price,book_time')->select();
		foreach ($bookList as $key => $value) {
			$bookList[$key]['book_time'] = date('Y-m-d H:i:s',$value['book_time']);
		}
		if($bookList){
			exit(json_encode(array('status'=>'SUCCESS','data'=>$bookList)));
		}else{
			exit(json_encode(array('status'=>'FAIL','data'=>'')));
		}
	}
	//提现记录
	public function receiveLog(){
		$user_id = (int)$_POST['user_id'];
		$voteimg_receivelog = M('voteimg_receivelog')->where(array('user_id'=>$user_id))->select();
		foreach ($voteimg_receivelog as $key => $value) {
			$voteimg_receivelog[$key]['receive_time'] = date('Y-m-d H:i:s',$value['receive_time']);
		}
		if($voteimg_receivelog){
			exit(json_encode(array('status'=>'SUCCESS','data'=>$voteimg_receivelog)));
		}else{
			exit(json_encode(array('status'=>'FAIL','data'=>'')));
		}
	}
	//申请退款---old
	public function applyRefund_old(){
		$user_id = (int)$_GET['user_id'];
		$item_id = (int)$_GET['item_id'];
		$vote_id = (int)$_GET['vote_id'];
		if($this->wecha_id == "" || $this->token == "" || $user_id == "" || $item_id == "" || $vote_id == ""){
			$this->error('参数错误,退款失败');
		}
		$myItem = M('voteimg_item')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->find();
		if($item_id != $myItem['id']){
			$this->error('非法操作');
		}
		$vote = M('voteimg')->where(array('id'=>$vote_id))->find();
		if($_SERVER['REQUEST_TIME'] < $vote['end_time'] || $_SERVER['REQUEST_TIME'] - $vote['end_time'] < 3*24*3600){
			$this->error('请在活动结束后的第三天进行退款申请');
		}
		$alreadyRefund = M('voteimg_users')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->getField('isrefund');
		if($alreadyRefund == 1){
			$this->error('您已经退款过,请勿重复退款');
		}
		//我的红包
		$my_hb = M('voteimg_confighb')->where(array('item_id'=>$item_id))->field('total_money,lost_money')->find();
		$hb_left_money = $my_hb['total_money'] - $my_hb['lost_money'];
		//未领取的红包
		$not_received_money = M('voteimg_hbrecord')->where(array('item_id'=>$item_id,'received'=>0))->sum('money');
		$total_money = $hb_left_money+$not_received_money;
		if($total_money < 1){
			$this->error('由于微信红包接口限制,退款金额需在1元以上');
		}
		$config = array();
		$config['send_name'] = $this->wxuser['wxname'] ? $this->wxuser['wxname'] : '拉票红包退款';
		$config['wishing'] =  '感谢您参与';
		$config['act_name'] = '拉票红包退款';
		$config['remark'] = '拉票红包退款';
		$config['token'] = $this->token;
		$config['openid'] = $this->wecha_id;
		$config['nick_name'] = $this->wxuser['wxname'] ? $this->wxuser['wxname'] : '拉票红包退款';
		if(1 <= $total_money && $total_money <= 200){//红包金额在1-200之间
			$config['money'] = $total_money;
			$hb = new Hongbao($config);
			$res = json_decode($hb->send(),true);
			if($res['status'] == 'SUCCESS'){
				M('voteimg_users')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->save(array('isrefund'=>1));
				$config['mch_billno'] = $res['mch_billno'];
				$this->addHbInfo($config,$vote_id,$user_id);
			}
		}elseif($total_money > 200){//红包金额超过200,分批发送
			$times = floor($total_money/200);
			$config['money'] = 200.00;
			$hb = new Hongbao($config);
			for($i=1;$i<=$times;$i++){
				$res = json_decode($hb->send(),true);
				if($res['status'] != 'SUCCESS'){
					exit(json_encode(array('status'=>'fail', 'data'=>$res['msg'])));
				}else{
					M('voteimg_users')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->save(array('isrefund'=>1));
					$config['mch_billno'] = $res['mch_billno'];
					$this->addHbInfo($config,$vote_id,$user_id);
				}
			}
			$config['money'] = $total_money - $times*200;
			if($config['money'] >= 1){
				$hb_new = new Hongbao($config);
				$res = json_decode($hb_new->send(),true);
				if($res['status'] == 'SUCCESS'){
					$config['mch_billno'] = $res['mch_billno'];
					$this->addHbInfo($config,$vote_id,$user_id);
				}
			}
		}
		if($res['status'] == 'SUCCESS'){
			$this->success('退款成功,请您及时到微信查看并领取',U('Voteimg/HomePage',array('user_id'=>$user_id,'id'=>$vote_id,'token'=>$this->token)));exit;
		}else{
			$this->error('退款失败');
		}
	}

	//申请退款---new
	public function applyRefund(){
		$user_id = (int)$_GET['user_id'];
		$item_id = (int)$_GET['item_id'];
		$vote_id = (int)$_GET['vote_id'];
		if($this->wecha_id == "" || $this->token == "" || $user_id == "" || $item_id == "" || $vote_id == ""){
			$this->error('参数错误,退款失败');
		}
		$myItem = M('voteimg_item')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->find();
		if($item_id != $myItem['id']){
			$this->error('非法操作');
		}
		$vote = M('voteimg')->where(array('id'=>$vote_id))->find();
		if($_SERVER['REQUEST_TIME'] < $vote['end_time'] || $_SERVER['REQUEST_TIME'] - $vote['end_time'] < 3*24*3600){
			$this->error('请在活动结束后的第三天进行退款申请');
		}
		$alreadyRefund = M('voteimg_users')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->getField('isrefund');
		if($alreadyRefund == 1){
			$this->error('您已经退款过,请勿重复退款');
		}
		//我的红包
		$my_hb = M('voteimg_confighb')->where(array('item_id'=>$item_id))->field('total_money,lost_money,hb_id')->find();
		//剩余金额
		$hb_left_money = $my_hb['total_money'] - $my_hb['lost_money'];
		//已充值总额
		$total_book_money = M('voteimg_book')->where(array('wecha_id'=>$this->wecha_id,'hb_id'=>$my_hb['hb_id'],'paystatus'=>1))->sum('price');
		if($hb_left_money > $total_book_money){
			$this->error('退款金额异常');
		}
		//我的订单列表
		$book_list = M('voteimg_book')->where(array('wecha_id'=>$this->wecha_id,'hb_id'=>$my_hb['hb_id'],'paystatus'=>1))->order('price desc')->select();
		//dump($book_list);exit;
		foreach ($book_list as $key => $value) {
			if($value['price'] >= $hb_left_money){
				$result = $this->Dorefund($value['orderid'],$this->token,$hb_left_money);
				if('SUCCESS' != $result['result_code']){
					$this->error($result['err_code_des']);
				}else{
					$this->addHbInfo($result,$vote_id,$user_id);
				}
				break;
			}else{
				$result = $this->Dorefund($value['orderid'],$this->token,$value['price']);
				if('SUCCESS' != $result['result_code']){
					$this->error($result['err_code_des']);
				}else{
					$this->addHbInfo($result,$vote_id,$user_id);
				}
				$hb_left_money = $hb_left_money - $value['price'];
			}
		}
		if('SUCCESS' == $result['result_code']){
			M('voteimg_users')->where(array('vote_id'=>$vote_id,'wecha_id'=>$this->wecha_id))->save(array('isrefund'=>1));
			$this->success('退款成功',U('Voteimg/HomePage',array('user_id'=>$user_id,'id'=>$vote_id,'token'=>$this->token)));exit;
		}else{
			$this->error($result['err_code_des']);
		}
	}
	public function Dorefund($orderid = '',$token = '',$refund_fee = ''){
    	if($orderid == '' || $token == ''){
    		return false;
    	}
    	$from = 'voteimg';
    	$order = new OrderModel();
    	$refund = $order->weixinRefund($token,$orderid,$from,$refund_fee*100);
    	return $refund;
    }
	//获取指定范围的随机金额
	private function rand_money($min,$max){
		$rand =  $min + mt_rand() / mt_getrandmax() * ($max - $min);
		return round($rand,2);
	}
	//更新领取者红包的状态,以减少发红包者退款时请求接口的压力
	private function updateOpenStatus($vote_id = '',$wecha_id = '',$token = ''){
		if($vote_id == "" && $wecha_id == "" && $token == ""){ return false;}
		$myhb_list = M('voteimg_hbinfo')->where(array('vote_id'=>$vote_id,'wecha_id'=>$wecha_id,'token'=>$token))->select();
		if(empty($myhb_list)){ return false;}
		foreach ($myhb_list as $key => $value) {
			if($value['open_status'] == 0){
				if($value['update_time'] ==0 || ($_SERVER['REQUEST_TIME'] - $value['update_time'] > 1800)){
					$config['mch_billno'] = $value['mch_billno'];
					$config['token'] = $token;
					$hb = new Hongbao($config);
					$record_details = json_decode($hb->hongbao_record(),true);
					//未拆已退款
					if($record_details['status'] == 'SUCCESS' && $record_details['msg']['status'] == "REFUND"){
						M('voteimg_hbinfo')->where(array('mch_billno'=>$value['mch_billno']))->save(array('open_status'=>2,'money'=>$record_details['msg']['refund_amount'],'refund_time'=>$record_details['msg']['refund_time'],'update_time'=>$_SERVER['REQUEST_TIME']));
					//已拆红包
					}elseif($record_details['status'] == 'SUCCESS' && $record_details['msg']['status'] == "RECEIVED"){
						M('voteimg_hbinfo')->where(array('mch_billno'=>$value['mch_billno']))->save(array('open_status'=>1,'update_time'=>$_SERVER['REQUEST_TIME']));
					}else{
						M('voteimg_hbinfo')->where(array('mch_billno'=>$value['mch_billno']))->save(array('update_time'=>$_SERVER['REQUEST_TIME']));
					}
				}
			}
		}
	}
	//将声音下载到本地
	public function downloadTolocal($serverId = '',$token = ''){
		if($serverId == '' || $token == ''){
			return false;
		}
		$thisWxUser = M('Wxuser')->field('appid,appsecret,winxintype')->where(array('token'=>$token))->find();
		$apiOauth 		= new apiOauth();
		$access_token 	= $apiOauth->update_authorizer_access_token($thisWxUser['appid']);
		$url = 'http://file.api.weixin.qq.com/cgi-bin/media/get?access_token='.$access_token.'&media_id='.$serverId;
		$amr_file = $this->postCurl($url);
		$result = json_decode($amr_file,true);
		if($result['errcode'] != "" && $result['errmsg'] != ""){
			return array('status'=>'error','msg'=>$result['errmsg']);
		}else{
			$firstLetter=substr($token,0,1);
			$savePath =  './uploads/voteimgvoice/'.$firstLetter.'/'.$token.'/';//声音存放目录
			if (!file_exists($_SERVER['DOCUMENT_ROOT'].'/uploads')||!is_dir($_SERVER['DOCUMENT_ROOT'].'/uploads')){
				mkdir($_SERVER['DOCUMENT_ROOT'].'/uploads',0777);
			}
			$firstDir = $_SERVER['DOCUMENT_ROOT'].'/uploads/voteimgvoice/';
			if (!file_exists($firstDir)||!is_dir($firstDir)){
				mkdir($firstDir,0777);
			}
			$firstLetterDir=$firstDir.$firstLetter;
			if (!file_exists($firstLetterDir)||!is_dir($firstLetterDir)){
				mkdir($firstLetterDir,0777);
			}
			if (!file_exists($firstLetterDir.'/'.$token)||!is_dir($firstLetterDir.'/'.$token)){
				mkdir($firstLetterDir.'/'.$token,0777);
			}
			if(!file_exists($savePath)||!is_dir($savePath)){
				mkdir($savePath,0777);
			}
			$filePath = $savePath.substr(md5($serverId),0,6).date('YmdHis').'.amr';
			file_put_contents($filePath,$amr_file);
			$filePath = $this->siteUrl.'/'.trim($filePath,'./');
			return array('status'=>'success','msg'=>$filePath);
		}
	}
	//将声音上传到微信
	public function uploadVoice(){
		$item_id = (int)$_POST['item_id'];
		$token = $_POST['token'];
		if($item_id == '' || $token == ''){ 
			echo '{"status":"fail","msg":"参数错误"}';exit;
		}
		$item = M('voteimg_item')->where(array('id'=>(int)$item_id))->find();
		if($item['voice_path'] == ""){ echo '{"status":"fail","msg":"声音不存在"}';exit;}
		//if(time() - $item['update_time'] < 24*3600){ return false;}
		$voicepath = getcwd().str_replace(array('http://',$_SERVER['HTTP_HOST']),'',$item['voice_path']);
		$thisWxUser = M('Wxuser')->field('appid,appsecret,winxintype')->where(array('token'=>$token))->find();
		$apiOauth 		= new apiOauth();
		$access_token 	= $apiOauth->update_authorizer_access_token($thisWxUser['appid']);
		$requestUrl = "http://file.api.weixin.qq.com/cgi-bin/media/upload?access_token=" . $access_token.'&type=voice';
		$response_josn = $this->postCurl($requestUrl,array('media'=>'@'.$voicepath),'POST');
		$result = json_decode($response_josn,true);
		if($result['media_id'] != ""){
			M('voteimg_item')->where(array('id'=>(int)$item_id))->save(array('serverid'=>$result['media_id'],'upload_time'=>$result['created_at']));
			echo '{"status":"done","msg":"'.$result['media_id'].'"}';exit;
		}else{
			echo '{"status":"fail","msg":"'.$result['errmsg'].'"}';exit;
		}
	}
	//更新localid
	public function updateLocalId(){
		$item_id = (int)$_POST['item_id'];
		$localid = $_POST['localid'];
		$update = M('voteimg_item')->where(array('id'=>(int)$item_id))->save(array('localid'=>$localid));
		if($update){
			exit('yes');
		}else{
			exit('no');
		}
	}
	//播放声音独立页
	public function playVoice(){
		$vote_id = (int)$_GET['vote_id'];
		$action_info = M('voteimg')->where(array('id'=>$vote_id))->find();
		$item_id = (int)$_GET['item_id'];
		$voice = M('voteimg_item')->where(array('id'=>$item_id))->find();
		$this->assign('id',$vote_id);
		$this->assign('token',$this->token);
		$this->assign('voice',$voice);	
		if($action_info['custom_sharetitle'] == ""){
			$action_info['custom_sharetitle'] = '红包拉票';
		}
		if($action_info['custom_sharedsc'] == ""){
			$action_info['custom_sharedsc'] = '红包拉票';
		}
		$this->assign('action_info',$action_info);
		$this->display();
	}

	public function rules(){
		if(empty($this->action_id) || empty($this->token)){
			$this->error('参数错误');
		}
		$vote_id = $this->_get('id','intval');
		//action活动信息
		$action_info = M('voteimg')->where(array('id'=>$vote_id))->find();
		if(!empty($action_info)){
			if($action_info['display'] !=1){
				$this->error('该活动未开启');exit;
			}
			$this->assign('action_info',$action_info);
		}else{
			$this->error('该活动不存在');exit;
		}
		//头部信息---分别做了缓存
		$this->get_head_content($action_info['default_skin']);
		$this->assign('vote_id',$vote_id);
		$this->assign('user_id',M('voteimg_users')->where(array('vote_id'=>$vote_id,'token'=>$this->token,'wecha_id'=>$this->wecha_id))->getField('user_id'));
		$this->assign('token',$this->token);
		$action_info['custom_sharetitle'] = ($action_info['custom_sharetitle'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharetitle']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$action_info['custom_sharedsc'] = ($action_info['custom_sharedsc'] != "") ? str_replace('{{活动名称}}',$action_info['action_name'],$action_info['custom_sharedsc']) : '我正在参加“'.$action_info['action_name'].'”活动，快来帮他投票吧！';
		$this->assign($action_info);
		$this->assign('imgUrl',$action_info['reply_pic']);
		$this->check_expire($action_info);
		if($action_info['default_skin'] == 3){
			$this->display('rules_third');
		}elseif($action_info['default_skin'] == 4){
			$this->display('rules_fourth');
		}else{
			$this->error('非法操作');
		}
	}
	//获取视频播放通用地址
	protected function process_video_src($url) {
        $src = $url;
        if(strstr($url, 'v.youku.com')){
			$path = substr($url, strpos($url, 'id_')+3,15);
        	if($path != ""){
        		$src = 'http://player.youku.com/embed/' . $path;//优酷 通用播放
        	}
        }elseif (strstr($url, 'player.youku.com')) {
            $src = str_replace('_ev_1', '', $url);
            if (preg_match('/swf/', $src)) {
                $src = substr($src, 0, strrpos($src, '/'));
                $src = substr($src, strrpos($src, '/') + 1);
            } else {
                $src = substr($src, strrpos($src, '/') + 1);
            }
            //echo $src;
            $src = 'http://player.youku.com/embed/' . $src;//优酷 通用播放
        }elseif(strstr($url, 'tudou.com')){
		    //$src=preg_replace('/(.+)tudou.com\/(.+)\/(.+)\/(.*)\/v.swf/',"http://www.tudou.com/programs/view/html5embed.action?type=0&code=\\3",$url);
			//tudou 通用在手机端默认自动播放，暂时无法解决
			//$src=preg_replace('/\/v.swf/',"",$url);
		}elseif(strstr($url, 'qq.com')){
			$url_array=parse_url($url);
			$url_info = pathinfo($url);
			if(is_array($url_array) && isset($url_array['query']) && !empty($url_array['query'])){
			   $src="http://v.qq.com/iframe/player.html?{$url_array['query']}&tiny=0&auto=0"; //腾讯 通用播放
			}elseif(isset($url_info['basename'])){
				$url_info['basename'] = trim($url_info['basename'],'.html');
				 $src="http://v.qq.com/iframe/player.html?vid={$url_info['basename']}&tiny=0&auto=0"; //腾讯 通用播放
			}else{
			  $src=$url;
			}
		}
        return $src;
    }
    //异步获取审核状态
    function ajax_get_checkstatus(){
    	$vote_id = (int)$_GET['id'];
    	$token = trim($_GET['token']);
    	$item_id = (int)$_GET['item_id'];
    	$cache_name = $token.'_'.$vote_id.'_'.$this->wecha_id.'_alertstate';
    	if(S($cache_name) ==1){
    		cookie('alert_state_'.$item_id,1);exit;
    	}
		$item = M('voteimg_item')->where(array('id'=>$item_id))->find();
    	if($item['alert_state'] == 0 && $item['check_pass'] != 0){
    		$update = M('voteimg_item')->where(array('id'=>$item_id))->save(array('alert_state'=>1));
    		if($update){ S($cache_name,1);}
    		cookie('alert_state_'.$item_id,0);exit;
    	}else{
    		cookie('alert_state_'.$item_id,1);exit;
    	}
    }
    //格式化输出自定义表单
   private function html_layout($token,$vote_id){
		$fields = M('Voteimg_custom_field')->where(array('token' => $token,'action_id'=>$vote_id))->order('sort DESC')->select();
    	$list = array();
		$str = '';
		$arr = array();
		foreach($fields as $key => $value){
			if (empty($value['is_show'])) continue;
			$v = isset($list[$value['field_id']]['field_value']) ? $list[$value['field_id']]['field_value'] : '';	
			$str .= '<li class="clearfix">';
			$str .= '<div class="sign_txt">';
			if ($value['is_empty']) {
				$str .= '<b style="color:red;">*</b>';
			}
			$str .= $value['field_name'].'：';
			$str .= '</div>';
			$str .= $this->_getInput($value, $v);
			$str .= '<input type="hidden" id="field_'.$value['field_id'].'" name="field_'.$value['field_id'].'" value="'.$value['field_id'].'"></tr>';
			$str .= '</table></li>';
			$arr[] = array('id' => $value['field_id'], 'name' => $value['field_name'], 'type' => $value['field_type'], 'item_name' => $value['item_name'], 'match' => $value['field_match'], 'is_empty' => $value['is_empty']);  //js验证信息
		}
		return array('string' => $str, 'verify' => $arr);
    }
    /*获取自定义表单*/
	private function _getInput($value, $v){
		$input 	= '';
		switch($value['field_type']){
			case 'text':
				$input 	.= '<div class="sign_input"><input type="text" placeholder="请输入'.$value['field_name'].'" id="field_id_'.$value['field_id'].'" name="field_id_'.$value['field_id'].'" value="' . $v . '" data-empty="' . $value['is_empty'] . '"></div>';
				break;
			case 'password':
				$input 	.= '<div class="sign_input"><input type="password" id="field_id_'.$value['field_id'].'" name="field_id_'.$value['field_id'].'" value=""  data-empty="' . $value['is_empty'] . '"></div>';
				break;
			case 'textarea':
				$input 	.= '<div class="sign_input"><textarea name="field_id_'.$value['field_id'].'" id="field_id_'.$value['field_id'].'" rows="4" cols="25"  data-empty="' . $value['is_empty'] . '">' . $v . '</textarea></div>';
				break;
			case 'checkbox':
				$option = explode('|', trim($value['field_option'],'|'));
				$v_arr = explode('|', trim($v,'|'));
				$input .= '<div class="sign_input">';
				for ($i=0; $i < count($option); $i++) {
					if ($v_arr && in_array($option[$i], $v_arr)) {
						$checked = 'checked=true';
					} else $checked = '';
					
					$input .= '<input type="checkbox" style="width:13%;height:15px;" name="field_id_'.$value['field_id'].'[]" class="field_id_'.$value['field_id'].'" value="'.$option[$i].'" '.$checked.' />' . $option[$i].'&nbsp;&nbsp;';
				}
				$input .= '</div>';
				break;
			case 'radio':
				$option = explode('|', trim($value['field_option'],'|'));
				$input .= '<div class="sign_input">';
				for ($i=0; $i<count($option); $i++) {
					if ($v) {
						$checked = $v == $option[$i] ? 'checked=true' : '';
					} else {
						$checked = $i == 0 ? 'checked=true' : '';
					}
					
					$input .= '<input type="radio" style="width:7%" name="field_id_'.$value['field_id'].'" class="field_id_'.$value['field_id'].'" value="'.$option[$i].'" '.$checked.' />' . $option[$i].'&nbsp;&nbsp;';
				}
				$input .= '</div>';
				break;
			case 'select':
				$input 	.= '<div class="sign_input"><select style="width:150px;border:1px solid #d9d9d9;    background-color: #FFF;" name="field_id_'.$value['field_id'].'" id="field_id_'.$value['field_id'].'" class="dropdown-select"><option value="">请选择..</option>';
				$op_arr	= explode('|',trim($value['field_option'],'|'));
				$num	= count($op_arr);
				if($num > 0){
					for ($i = 0; $i < $num; $i++) {
						if ($v && $v == $op_arr[$i]) {
							$input .= '<option value="' . $op_arr[$i] . '" selected>' . $op_arr[$i] . '</option>';
						} else {
							$input .= '<option value="' . $op_arr[$i] . '">' . $op_arr[$i] . '</option>';
						}
					}
				}
				$input  .='</select></div>';
				break;
			case 'date':
				$v = $v ? $v : date('Y-m-d H:i');
				$input .= '<div class="sign_input"><input type="text" class="px" name="field_id_'.$value['field_id'].'" id="field_id_'.$value['field_id'].'" value="'. $v .'" onClick="WdatePicker({dateFmt:\'yyyy-MM-dd HH:mm\'})"  data-empty="' . $value['is_empty'] . '"/></div>';
		}

		return $input;
	}
	//扩张字段入库
	private function save_attach($item_id, $data)
    {
    	$db = M('voteimg_item_attach');
    	foreach ($data['data'] as $d) {
    		if (empty($d['fid']) || !is_numeric($d['fid'])) continue;
    		if ($d['type'] == 'password') $d['val'] = md5($d['val']);
			$db->add(array('item_id' => $item_id, 'field_id' => $d['fid'], 'field_value' => $d['val']));
    	}
    }
}
?>