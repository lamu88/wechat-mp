<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
	img{max-height:150px;}
</style>
<title>功能介绍</title>
<link href="<?php echo RES;?>/images/style1.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/function.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
</head>
<body class="warp">
<div id="artlist">
	<div class="mod kjnav" id="navz">
		<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U($action.'/'.$vo['name'],array('pid'=>$_GET['pid'],'level'=>3,'title'=>urlencode ($vo['title'])));?>"><div class="modna"><?php echo ($vo['title']); ?></div></a>
			<?php if(($action == 'Article') or ($action == 'Img') or ($action == 'Text') or ($action == 'Voiceresponse')): break; endif; endforeach; endif; else: echo "" ;endif; ?>
 		<?php
 if($_GET['pid']==88 && $_GET['level']==3){ ?>
		<a href="javascript:" onclick="two_j();"><div class="modna">二级分类</div></a>
		<?php } ?>
	</div>   	
</div>

<div class="cr"></div>
<div id="btl">
<form method="post" action="<?php echo U('Funintro/search');?>" name="myform_zw" id="myform">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="alist" class="fonts">
		<tr>
			<td align='center'>&nbsp;<input type="checkbox" id="checkAll" value="1"/>&nbsp;全选</td>
			<td></td>
			<td align='center'>
				<select style="height:25px;width:150px" name="class" id="sele"> 
						<option value ="0">——请选择分类——</option>
					<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value ="<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					<?php if(is_array($holi_arr)): $i = 0; $__LIST__ = $holi_arr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value ="<?php echo ($vo["id"]); ?>,1"><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>					
				</select>
			</td>
			<td ><input type="submit" name="set_kind" value="确认设置分类" class="subs" style="width:80px"/></td>
			<td><button onclick="return false;" class="batch_delete" id="inpts">批量删除</button></td>
			<td align='center'><input type="hidden" name="pid" value="<?php echo ($pid); ?>"/></td>
		</tr>
	  <tr>
	 	<td width="50">选中</td>
		<td wdith="50">ID</td>
		<td wdith="100">标题</td>
		<td wdith="100">所属分类</td>
		<td wdith="100">管理操作</td>
	  </tr>
	    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
				<td align='center'><input type="checkbox" name='test[]' value="<?php echo ($vo["id"]); ?>"/></td>
				<td align='center'><?php echo ($vo["id"]); ?></td>
				<td ><?php echo ($vo["title"]); ?></td>
				<td ><?php echo ($vo["class"]); ?></td>
				</td>
				<td align='center'>
					<a href="<?php echo U('Funintro/edit/',array('id'=>$vo['id'],'pid'=>$pid));?>">修改</a>
					| <?php if(($vo["username"]) == "admin"): ?><font color="#cccccc">删除</font><?php else: ?><a href="javascript:void(0)" onclick="return confirmurl('<?php echo U('Funintro/del/',array('id'=>$vo['id'],'pid'=>$pid));?>','确定删除该功能吗?')">删除</a><?php endif; ?>
				</td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		<style>
			.current{border: 0;padding: 1px 9px;color: #fff;background: #3F8EF3 url(main/pageh.png) no-repeat;}
		</style>
     <tr bgcolor="#FFFFFF"> 
      <td colspan="8"><div class="listpage"><?php echo ($page); ?></div></td>
     
    </tr>
   
</table>
</form>
</div>
</body>
</html>