<?php
class BargainReply
{	
	public $item;
	public $wechat_id;
	public $siteUrl;
	public $token;
	public function __construct($token,$wechat_id,$data,$siteUrl)
	{
		$this->item=M('bargain')->where(array('pigcms_id'=>$data['pid']))->find();
		$this->wechat_id=$wechat_id;
		$this->siteUrl=$siteUrl;
		$this->token=$token;
	}
	public function index(){
		$wxpic = explode("http",$this->item['wxpic']);
		if(count($wxpic) <= 1){
			$this->item['wxpic'] = C("site_url").$this->item['wxpic'];
		}
		$thisItem=$this->item;
		return array(array(array($thisItem['wxtitle'],$thisItem['wxinfo'],$thisItem['wxpic'],$this->siteUrl.U('Wap/Bargain/index',array('id'=>$thisItem['pigcms_id'],'token'=>$this->token,'wecha_id'=>$this->wechat_id)))),'news');
	}
}
?>

