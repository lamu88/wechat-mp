<?php
class AuthAction extends UserAction{
	public function _initialize() {
		parent::_initialize();
	}
	function index(){
		$helpParm='';
		if ($this->wxuser['winxintype']==3){
			$helpParm='http://www.meihua.com/waphelp/auth_auth.php?siteUrl='.$this->siteUrl;
			$helpShareParm='http://www.meihua.com/waphelp/wxshare_auth.php?siteUrl='.$this->siteUrl;
		}else {
			if ($this->isAgent){
				$helpParm='http://www.meihua.com/waphelp/auth_agent.php?siteUrl='.$this->siteUrl.'&isAgent=1&agentName='.$this->thisAgent['name'];
				$helpShareParm='http://www.meihua.com/waphelp/wxshare_agent.php?siteUrl='.$this->siteUrl.'&isAgent=1&agentName='.$this->thisAgent['name'];
			}else {
				$helpParm='http://www.meihua.com/waphelp/auth_noauth.php?siteUrl='.$this->siteUrl;
				$helpShareParm='http://www.meihua.com/waphelp/wxshare_noauth.php?siteUrl='.$this->siteUrl;
			}
		}
		$this->assign('helpParm',$helpParm);
		$this->assign('helpShareParm',$helpShareParm);
		$this->assign('helpQaParm','http://www.meihua.com/waphelp/auth_qa.php?siteUrl='.$this->siteUrl);
		$this->assign('info',$this->wxuser);
		if (IS_POST){
			$saveData = array(
					'oauth' 			=> intval ( $_POST ['oauth'] ),
					'oauthinfo' 		=> intval ( $_POST ['oauthinfo'] ),
					'sub_notice_btn' 	=> $this->_post ( 'sub_notice_btn' ),
					'sub_notice' 		=> $this->_post ( 'sub_notice' ),
					'need_phone_notice' => $this->_post ( 'need_phone_notice' )
			);

			M('Wxuser')->where(array('token'=>$this->token))->save($saveData);
			$this->success('设置成功');
		}else {
			
			$this->assign('wxuser',$this->wxuser);
			$this->assign('tab','index');
			$this->display();
		}
	}
	function advantage(){
		$this->assign('tab','advantage');
		$this->display();
	}
	function help(){
		$this->assign('tab','help');
		$this->display();
	}
}

?>