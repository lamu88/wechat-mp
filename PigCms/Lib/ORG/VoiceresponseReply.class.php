<?php
/*
 * BY jy
 * QQ:398145059
 * 2015-08-30
 */
class VoiceresponseReply
{	
	public $item;
	public $wechat_id;
	public $siteUrl;
	public $token;
	public function __construct($token,$wechat_id,$data,$siteUrl)
	{
		$this->item=M('voiceresponse')->where(array('id'=>$data['pid']))->find();
		$this->wechat_id=$wechat_id;
		$this->siteUrl=$siteUrl;
		$this->token=$token;
	}
	public function index(){
		$thisItem=$this->item;
        return array(array('Title'=>$thisItem['title'],'Description'=>$thisItem['description'],'MusicUrl'=>$thisItem['musicurl'],'HQMusicUrl'=>$thisItem['musicurl']),'music');
	}
}
?>