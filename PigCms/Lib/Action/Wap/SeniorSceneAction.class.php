<?php
//dezend by http://www.yunlu99.com/ QQ:270656184
class SeniorSceneAction extends WapAction
{
	public function scene_view()
	{
		$tid = $this->_get('tid', 'intval,trim,htmlspecialchars');
		$iframeUrl = 'http://www.weihubao.com/index.php?m=Wap&c=view&a=index&tid=' . $tid . '&preview=preview';
		$this->assign('iframeUrl', $iframeUrl);
		$this->display();
	}
}

?>
