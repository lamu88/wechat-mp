<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script type="text/javascript">
	
</script>
</head>
<body class="warp">
<div id="artlist" class="addn">
<form action="<?php echo U('Group/edit');?>" method="post" name="form" id="form">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">
  <tr>
    <th colspan="4"><?php echo ($title); ?></th>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>组名：</strong></td>
      <td><input type="text" name="name" value="<?php echo ($info["name"]); ?>" class="ipt" size="45" /></td>
    </tr>
	<tr> 
      <td height="48" align="right"><strong>状态：</strong></td>
      <td height="48">
		<input type="radio" name="status" value="0" class="ipt" <?php if(($info["status"]) == "0"): ?>checked<?php endif; ?> />关闭
		<input type="radio" name="status" value="1" class="ipt" <?php if(($info["status"]) == "1"): ?>checked<?php endif; ?> />开启
	  </td>
	  <input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"/>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>备注：</strong></td>
      <td><input type="text" name="remark" value="<?php echo ($info["remark"]); ?>"  class="ipt" size="45" /></td>
    </tr>
    <tr> 
      <td colspan="2" style="padding:10px 0 10px 130px;">
		<button class="button" type="submit"  value="" >修 改</button>
		<button class="button" type="button" onclick="javascript:history.back(-1);" value="" >返 回</button>
	</td>
    </tr>
</table>
</form>
<br />
<br />
<br />

</div>
</body>
</html>