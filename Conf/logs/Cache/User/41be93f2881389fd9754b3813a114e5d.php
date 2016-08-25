<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body id="nv_member">
<div style="line-height:200%;padding:10px 20px;">
订餐人：<?php echo (htmlspecialchars_decode($thisOrder['name'],ENT_QUOTES)); ?><br>
电话：<?php echo (htmlspecialchars_decode($thisOrder['tel'],ENT_QUOTES)); ?><br>
送餐地址：<?php echo (htmlspecialchars_decode($thisOrder['address'],ENT_QUOTES)); ?><br>
点菜数量：<?php echo ($thisOrder['total']); ?><br>
订单金额：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($thisOrder['price']); ?></span>元<br/>
支付方式：<?php echo ($thisOrder['paystr']); ?><br>
支付状态：<?php if($thisOrder['paid'] == 1): ?>已付款<?php else: ?>未付款<?php endif; ?><br>
备注:<?php echo (htmlspecialchars_decode($thisOrder["des"],ENT_QUOTES)); ?><br/>
</div>

<form class="form" method="post" id="form" action=""> 
<input type="hidden" name="id" value="<?php echo ($thisOrder["id"]); ?>" />
    <div class="msgWrap bgfc"> 
     <table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%"> 
      <tbody> 
      <tr> 
        <th><span class="red">*</span>付款状态：</th> 
        <td><select name="paid" style="width: 100px;"><option value="0" <?php if($thisOrder["paid"] == 0): ?>selected<?php endif; ?>>未付款</option><option value="1" <?php if($thisOrder["paid"] == 1): ?>selected<?php endif; ?>>已付款</option></select></td> 
       </tr>
	   <tr> 
        <th><span class="red">*</span>发货状态：</th> 
        <td><select name="isuse" style="width: 100px;"><option value="0" <?php if($thisOrder["isuse"] == 0): ?>selected<?php endif; ?>>未发货</option><option value="1" <?php if($thisOrder["isuse"] == 1): ?>selected<?php endif; ?>>已发货</option></select></td> 
       </tr>
	   <?php if(!isset($isfd)): ?><tr>         
       <th>&nbsp;</th>
       <td>
       <button type="submit" name="button" class="btnGreen">更新状态</button>
	   <a name="button" class="btnGreen" style="margin-left:30px" onclick="toPrint(<?php echo ($thisOrder['id']); ?>);">打印订单</a> 
	   &nbsp;&nbsp;&nbsp;<span id="Printtips" style="display:none;">正在为您打印订单票据.....</span>
	   </td> 
       </tr><?php endif; ?>
      </tbody> 
     </table> 
     </div>
    
   </form> 
   
<table class="ListProduct" border="0" cellspacing="0" cellpadding="0" width="100%">
	<thead>
		<tr>
			<th width="120" align="center" style="text-align:center">名称</th>
			<th class="60" align="center" style="text-align:center">数量</th>
			<th width="160" align="center" style="text-align:center">单价（元）</th>
		</tr>
	</thead>
	<tbody>
		<tr></tr>
		<?php if(is_array($dishList)): $i = 0; $__LIST__ = $dishList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$o): $mod = ($i % 2 );++$i;?><tr>
			<td align="center"><?php echo ($o["name"]); ?></td>
			<td align="center"><?php echo ($o["num"]); ?></td>
			<td align="center"><?php echo ($o["price"]); ?></td>
		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		
		<tr> 
			<td align="right" colspan="3"><span style="color:#f30;font-size:16px;font-weight:bold;margin-right:35px">订单总金额：<?php echo ($thisOrder['price']); ?>元</span></td>
		</tr>
</tbody>
</table>
</body>
 <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
function toPrint(id){
  var obj=jQuery('#Printtips');
      obj.text('正在为您打印订单票据...');obj.show();
  jQuery.post("<?php echo U('DishOut/toPrint', array('token' => $token, 'cid' => $cid));?>",{oid:id},function(ret){
      obj.text('订单票据打印完成！');
  });
}
</script>
</html>