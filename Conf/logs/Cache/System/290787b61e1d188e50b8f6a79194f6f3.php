<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站点配置</title>
<link href="<?php echo RES;?>/images/style1.css" type="text/css" rel="stylesheet">
<link href="<?php echo RES;?>/images/jquery-1.7.2.min.js" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<!--fancyBox-->
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/jquery.fancybox.css?v=2.1.5" media="screen" />
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/fancyBox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
<!--fancyBox-->
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script>
var table_name = new Array();
var table_count = 0;
$(function(){
	$("input[name='secret']").blur(function(){
		var appid = $("input[name='appid']").val();
		var secret = $("input[name='secret']").val();
		if(appid != '' || secret != ''){
			$.ajax({
				type:"POST",
				url:"<?php echo U('System/Site/appajax');?>",
				dataType:"json",
				data:{
					appid:appid,
					appsecret:secret
				},
				success:function(data){
					if(data.error == 1){
						alert('您填的appid和appsecret并不是认证后的服务号！');
						$("input[name='appid']").val('');
						$("input[name='secret']").val('');
					}else if(data.error == 2){
						alert('您填的appid和appsecret不正确！');
						$("input[name='appid']").val('');
						$("input[name='secret']").val('');
					}
				}
			});
		}
	});
	$("form").submit(function () {
		var appid = $("input[name='appid']").val();
		var secret = $("input[name='secret']").val();
		if(appid == '' && secret == ''){
			return true;
		}else if(appid == '' || secret == ''){
			alert('您填的appid和appsecret不正确！');
			$("input[name='appid']").val('');
			$("input[name='secret']").val('');
			return false;
		}
	});
	
	$('.fancybox').fancybox({
		helpers:{
			overlay:{
				closeClick:false
			}
		}
	});
	
	$.ajax({
		type:"POST",
		url:"<?php echo U('System/Site/mysqlajax');?>",
		dataType:"json",
		data:{
			type:'table_name'
		},
		success:function(data){
			table_name = data.table_name;
			table_count = data.table_count;
			$("#youhuasql").click(function(){
				$("#info").html('');
				$('.fancybox-close').hide();
				var j = 0;
				for(i=0;i<table_count;i++){
					$.ajax({
						type:"POST",
						url:"<?php echo U('System/Site/mysqlajax');?>",
						dataType:"json",
						data:{
							type:'youhuasql',
							table_name:table_name[i]
						},
						success:function(data){
							$('.fancybox-close').hide();
							j++;
							if(j == table_count){
								$('.fancybox-close').show();
								$("#info").prepend("<span class='h1'>优化完成</span><br>"+(j)+".优化表名:"+data.Table+"...优化结果:"+data.Msg_text+"...<br>");
							}else{
								$('.fancybox-close').hide();
								$("#info").prepend((j)+".优化表名:"+data.Table+"...优化结果:"+data.Msg_text+"...<br>");
							}
						}
					});
				}
			});
			$("#xiufusql").click(function(){
				$("#info").html('');
				$('.fancybox-close').hide();
				var j = 0;
				for(i=0;i<table_count;i++){
					$.ajax({
						type:"POST",
						url:"<?php echo U('System/Site/mysqlajax');?>",
						dataType:"json",
						data:{
							type:'xiufusql',
							table_name:table_name[i]
						},
						success:function(data){
							$('.fancybox-close').hide();
							j++;
							if(j == table_count){
								$('.fancybox-close').show();
								$("#info").prepend("<span class='h1'>修复完成</span><br>"+(j)+".修复表名:"+data.Table+"...修复结果:"+data.Msg_text+"...<br>");
							}else{
								$('.fancybox-close').hide();
								$("#info").prepend((j)+".修复表名:"+data.Table+"...修复结果:"+data.Msg_text+"...<br>");
							}
						}
					});
				}
			});
		}
	});
});
function randomString(length) {
	var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz'.split('');
	    
	if (! length) {
		length = Math.floor(Math.random() * chars.length);
	}	    
	var str = '';
	for (var i = 0; i < length; i++) {
		str += chars[Math.floor(Math.random() * chars.length)];
	}
	$('.encryption .key').html(str);
	$('.encryption-edit input').val(str);
}
</script>
</head>
<body class="warp">
<style>
.h1{font-weight:900;font-size:30px}
</style>
<div class="set_top">
	<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li <?php if(ACTION_NAME == $vo['name']): ?>id="set_top_li_bg"<?php endif; ?>><a href="<?php echo U($action.'/'.$vo['name'],array('pid'=>6,'level'=>3));?>"><?php echo ($vo['title']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<div id="artlist">
<div id="btl">
 
 
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">
 <form id="myform" action="<?php echo U('Site/insert');?>" method="post">
    <tr> 
      <td  height="48" align="right"><strong>调试模式：</strong></td>
      <td><input type="radio" name="pigcms_debug" value="1" <?php if(C('pigcms_debug')==='1')echo checked; ?> /> 开启调试 <input type="radio" name="pigcms_debug" value="0" <?php if(C('pigcms_debug')==='0')echo checked; ?> /> 关闭调试<span>&nbsp;&nbsp;打开调试模式后，如果系统有问题就能看到具体问题，需要pigcms售后排查问题的时候开启</span>
	  </td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>网站名称：</strong></td>
      <td><input type="text" name="site_name" value="<?php echo ($f_siteName); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例：小猪官网</span>
	  </td>
    </tr>
	 <tr> 
      <td  height="48" align="right"><strong>网站标题：</strong></td>
      <td><input type="text" name="site_title" value="<?php echo ($f_siteTitle); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;一般不超过80个字符</span>
	  
    </tr>
     <tr> 
      <td  height="48" align="right"><strong>网址LOGO：</strong></td>
      <td><input type="text" name="site_logo" value="<?php echo ($f_logo); ?>" class="ipt" id="pic" size="45" /><span>&nbsp;&nbsp;<script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('pic',190,60,'<?php echo ($token); ?>')" style="color:red">上传</a> <a href="###" onclick="viewImg('pic')">预览</a>&nbsp;&nbsp;必须为背景透明png格式，高度60像素，宽度190像素</span>
    </tr>
	 <tr> 
      <td  height="48" align="right"><strong>网站地址：</strong></td>
      <td><input type="text" name="site_url" value="<?php echo ($f_siteUrl); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例:http://www.pigcms.com</span>
    </tr> 
    <tr> 
      <td  height="48" align="right"><strong>网址二维码：</strong></td>
      <td><input type="text" name="site_twm" value="<?php echo C('site_twm');?>" class="ipt" id="pic1" size="45" /><span>&nbsp;&nbsp;<script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('pic1',145,145,'<?php echo ($token); ?>')" style="color:red">上传</a> <a href="###" onclick="viewImg('pic1')">预览</a>&nbsp;&nbsp;高度145像素，宽度145像素</span>
    </tr>
   <tr>  
	<tr> 
      <td  height="48" align="right"><strong>机器人名称：</strong></td>
      <td><input type="text" name="site_my" value="<?php echo C('site_my');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>key：</strong></td>
      <td><input type="text" name="server_key" value="<?php echo C('server_key');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;如出现报错，请先临时删除Appid和Appserect后保存</span>
    </tr>

    <tr>
      <td  height="48" align="right"><strong>应用ID：</strong></td>
      <td><input type="text" name="appid" value="<?php echo C('appid');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;微信公众平台开发者中心AppID(应用ID)</span>
    </tr>
    
    <tr>
      <td  height="48" align="right"><strong>应用密钥：</strong></td>
      <td><input type="text" name="secret" value="<?php echo C('secret');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;微信公众平台开发者中心AppSecret(应用密钥)</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>顶级域名：</strong></td>
      <td><input type="text" name="server_topdomain" value="<?php echo C('server_topdomain');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;比如:baidu.com或者baidu.com.cn</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>用户请求数超出提示：</strong></td>
      <td><input type="text" name="connectout" value="<?php echo C('connectout');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;用户请求数用完在微信端的提醒</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>审核用户：</strong></td>
      <td><input type="radio" name="ischeckuser" value="true" <?php if(C('ischeckuser')==='true')echo checked; ?> /> 注册时无需要审核 <input type="radio" name="ischeckuser" value="false" <?php if(C('ischeckuser')==='false')echo checked; ?> /> 注册时需要审核</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>注册需要手机号：</strong></td>
      <td><input type="radio" name="reg_needmp" value="true" <?php if(C('reg_needmp')==='true')echo checked; ?> /> 需要填写手机号 <input type="radio" name="reg_needmp" value="false" <?php if(C('reg_needmp')==='false')echo checked; ?> /> 不需要填写手机号</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>是否启用企业号：</strong></td>
      <td><input type="radio" name="open_biz" value="1" <?php if(C('open_biz')==='1')echo checked; ?> /> 启用 <input type="radio" name="open_biz" value="0" <?php if(C('open_biz')==='0')echo checked; ?> /> 不启用</td>
    </tr>

    <tr> 
      <td  height="48" align="right"><strong>注册后级别：</strong></td>
      <td>
      <select name="reg_groupid">
      <?php if(is_array($groups)): $i = 0; $__LIST__ = $groups;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><option value="<?php echo ($g["id"]); ?>" <?php if(C('reg_groupid') == $g['id']): ?>selected<?php endif; ?>><?php echo ($g["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
      </select>
      <span>&nbsp;&nbsp;仅注册不需要审核的时候有效</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>注册后使用天数：</strong></td>
      <td><input type="text" name="reg_validdays" value="<?php echo C('reg_validdays');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;注册后多少天过期(仅注册不需要审核的时候有效)</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>路由key：</strong></td>
      <td><input type="text" name="router_key" value="<?php echo C('router_key');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;第一次买路由后请联系pigcms官方</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>网站备案：</strong></td>
      <td><input type="text" name="ipc" value="<?php echo C('ipc');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例：沪IPC备12587号</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>站长QQ：</strong></td>
      <td><input type="text" name="site_qq" value="<?php echo ($f_qq); ?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:QQ:8888888</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>站长手机：</strong></td>
      <td><input type="text" name="site_mp" value="<?php echo C('site_mp');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:13888888888</span>
    </tr>
    <tr> 
      <td height="48" align="right"><strong>地图选择：</strong></td>
      <td>
      	<input type="radio" name="baidu_map" value="1" <?php if(C('baidu_map')) echo checked; ?> /> 百度地图
      	<input type="radio" name="baidu_map" value="0" <?php if(!C('baidu_map'))echo checked; ?> /> 高德地图
      	<span style="color:red;">建议使用高德地图</span>
      </td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>百度地图API：</strong></td>
      <td>
      	<input type="text" name="baidu_map_api" value="<?php echo C('baidu_map_api');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;<a href="http://lbsyun.baidu.com/apiconsole/key?application=key" target="_blank">点击获取</a>
      	<span style="color:red;">个别接口会用到百度地图，建议申请KEY填写在这里</span>
      </span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>站长Email：</strong></td>
      <td><input type="text" name="site_email" value="<?php echo C('site_email');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;例如:QQ:server@pigcms.cn</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>网站关键词：</strong></td>
      <td><textarea	 type="text" name="keyword" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo ($f_metaKeyword); ?></textarea><span>&nbsp;&nbsp;一般不超过100个字符</span>
    </tr>	
	<tr> 
      <td  height="48" align="right"><strong>网站描述：</strong></td>
      <td><textarea	 type="text" name="content" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo ($f_metaDes); ?></textarea><span>&nbsp;&nbsp;一般不超过200个字符</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>统计代码：</strong></td>
      <td><textarea	 type="text" name="countsz" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo base64_decode(C('countsz'));?></textarea><span>&nbsp;&nbsp;例:51啦统计,cnzz统计</span>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>底部版权：</strong></td>
      <td><textarea	 type="text" name="copyright" class="ipt" style="width:450px;height:60px;margin:5px 0 5px 0;" /><?php echo C('copyright');?></textarea><span>&nbsp;&nbsp;例:pigcms版权所有</span>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>是否关闭帮助：</strong></td>
      <td><input type="radio" name="close_help" value="1" <?php if(C('close_help')==='1')echo checked; ?> /> 关闭帮助 <input type="radio" name="close_help" value="0" <?php if(C('close_help')==='0')echo checked; ?> /> 启用帮助&nbsp;&nbsp;如果启用帮助，在商户管理后台的页面右侧会有相应的帮助文档</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>是否关闭用户中心通知：</strong></td>
      <td><input type="radio" name="close_user_notice" value="1" <?php if(C('close_user_notice')==='1')echo checked; ?> /> 关闭 <input type="radio" name="close_user_notice" value="0" <?php if(C('close_user_notice')==='0')echo checked; ?> /> 不关闭&nbsp;&nbsp;建议开启，有任何功能需要升级时，小猪官方会通知您，但是不会透漏您与小猪的关系</td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>紧急模式：</strong></td>
      <td><input type="radio" name="emergent_mode" value="0" <?php if(!C('emergent_mode'))echo checked; ?> /> 关闭  <input type="radio" name="emergent_mode" value="1" onclick="return confirm('默认关闭，正常情况下请不要开启，开启后将不能发送通知、打印等操作，当有小猪cms官方通知时再操作此项！！！') ? (confirm('请再次确认') ? true : false) : false;" <?php if(C('emergent_mode'))echo checked; ?> /> 开启&nbsp;&nbsp;<span style="color:red;">默认关闭，正常情况下请不要开启，开启后将不能发送通知、打印等操作，当有小猪cms官方通知时再操作此项！！！</span></td>
    </tr>
    <tr> 
      <td  height="48" align="right"><strong>升级服务器：</strong></td>
      <td><input type="radio" name="update_server" value="http://up.pigcms.cn/" <?php if((!C('update_server')) || (C('update_server') == 'http://up.pigcms.cn/') )echo checked; ?> /> 升级服务器一  <input type="radio" name="update_server" value="http://up2.weihubao.com/" <?php if(C('update_server') == 'http://up2.weihubao.com/')echo checked; ?> /> 升级服务器二&nbsp;&nbsp;<span style="color:red;">默认为升级服务器一，正常情况下不需要修改，当您无法升级的时候请选择升级服务器二</span></td>
    </tr>
	<?php if(isset($load_config) && $load_config == 1): ?><tr>
		 <td  height="48" align="right"><strong>微店对接域名：</strong></td>
		 <td><input type="text" name="weidian_domain" value="<?php echo C('weidian_domain');?>" class="ipt" size="45" /><span>&nbsp;&nbsp;请填写您的微店平台地址,例如:http://www.example.com</span></td>
	</tr><?php endif; ?>
	<?php  ?>
	<tr>
		 <td  height="48" align="right"><strong>对接加密串：</strong></td>
		 <td>
		            
            <span class="encryption">
                 <span class="key">
                 	<?php $encryption = substr(C('encryption'), 0, 2); echo $encryption.'*****************************'.substr(C('encryption'), -2); ?></span><button type="button" onclick="$('.encryption').hide();$('.encryption-edit').show();return false;">手动编辑</button>
                 <button type="button" onclick="randomString(40);return false;">随机生成</button> 随机生成后记得保存 之后将无法查看。
            </span>
            <span class="encryption-edit" style="display:none;">            
			 	<input type="text" name="encryption" value="" class="ipt" size="45" />
			 	<button type="button" onclick="$('.encryption').show();$('.encryption-edit').hide();return false;">显示</button>
			 	<span>&nbsp;&nbsp;可不填,如果您修改了该加密串,您需要登录相应对接后台修改成同样的加密串</span>
            </span>
		 </td>
	</tr>
	<?php  ?>
    <tr> 
      <td  height="48" align="right"><strong>数据库管理：</strong></td>
      <td>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#info" class="fancybox" title="优化数据库" id="youhuasql">优化数据库</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#info" class="fancybox" title="修复数据库" id="xiufusql">修复数据库</a>
		<div id="info" style="padding:10px;width:600px;height:400px;overflow:auto;display:none"></div>
	  </td>
    </tr>
    
   <input type="hidden" name="files" value="<?php echo base64_encode('info.php');?>" />
   <input type="hidden" name="files_hash" value="<?php echo md5('info.php|validate_pigcms');?>" />
    <tr> 
      <td height="48" colspan="2">
		  <div id="addkey"></div>
		  <div style="float:left;padding-left:100px;">
			<input type="submit" value="保存设置" id="inpts"/>
		  </div>
	  </td>
    </tr>
	</form>
</table>
</div><br />
<br />
<br />

</div>
</body>
</html>