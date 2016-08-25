<?php
//dezend by http://www.yunlu99.com/ QQ:270656184
class Senior_cardAction extends WapAction
{
	public function _initialize()
	{
	}

	public function viewData()
	{
		$greeting_card = D('Cards')->where(array('id' => intval($_GET['card_id'])))->setInc('viewcount');
	}
}

?>
