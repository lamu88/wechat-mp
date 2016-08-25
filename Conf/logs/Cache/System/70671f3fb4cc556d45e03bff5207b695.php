<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台首页</title>
<link href="<?php echo RES;?>/images/main2.css" type="text/css" rel="stylesheet">
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script src="<?php echo ($staticPath); ?>/tpl/static/newswelcome/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="<?php echo ($f_siteUrl); ?>/tpl/User/default/common/js/date/WdatePicker.js"></script>
</head>
<body style="background:none">
<div class="content" style="overflow:visible">
<div class="box">
	<div id="dcl">
	<h3>PigCms更新消息</h3>
	</div>
    <div class="con dcon">
    <div class="update">
    <p style="display:none">服务器环境：Apache/2.2.9 (APMServ) mod_ssl/2.2.9 OpenSSL/0.9.8h PHP/5.2.6</p>
    <p>服务器IP：127.0.0.1</p>
    <p>当前网站语言：UTF-8简体中文</p>
    <p>公司网站：<a href="http://www.pigcms.com" class="blue">公司网站</a></p>
    <p>数据库日期：<?php if($updateRecord.lastsqlupdate): echo (date("Ymd H:i:s",$updateRecord["lastsqlupdate"])); else: ?>暂无版本记录<?php endif; ?> （数据库日期跟当前时间相差几个月是正常的）</p>
    <p>系统版本：<?php if($updateRecord.version): echo (date("Ymd H:i:s",$updateRecord["version"])); else: ?>暂无版本记录<?php endif; ?>&nbsp;&nbsp;<a href="?g=System&m=System&a=checkUpdate" class="blue">检查更新并在线升级</a> &nbsp;&nbsp;<a href="?g=System&m=System&a=doSqlUpdate" class="blue">升级数据库</a> &nbsp;&nbsp;<a href="<?php echo getUpdateServer();?>" class="blue" target="_blank" style="color:red; font-weight:bold">有问题？提交售后工单 (账号为您的顶级域名：<?php echo C('server_topdomain');?>&nbsp;&nbsp;&nbsp;&nbsp;默认密码：123456</a><?php if($canEnUpdate != 1): ?><span style="color:red;font-weight:bold"></span><?php endif; ?></p>
    <p><a href="?g=System&m=System&a=repairTable" class="blue" style="color:green">系统反应慢，关键词没响应，请点击这里删除一下缓存</a></p>
    <p style="display:none">数据库版本： <a href="?g=System&m=System&a=checkUpdate" class="blue">检查更新并在线升级</a></p>
	<p>回滚程序版本：
	<input type="button" value=" - " style="width:20px" id="hg_jian" onclick="hg_jian()"/>
	<input type="text" value='1' style="width:30px" id="hg_zhi"/>
	<input type="button" value=" + " style="width:20px" id="hg_jia" onclick="hg_jia()"/>
	（天）
	<input type="submit" onclick="hg_but()" value="确定" style="color:#5A5A5A"/>
	</p>
    </div>

   <li><p class="red">您的程序版本为：PigCms多用户微信营销系统</p><span><?php echo ($versionName); ?></span></li>
    </div>
</div>
<!--/box-->
<div class="box">
	<div id="dcl">
	<h3>PigCms说明</h3>
	</div>
    <div class="con dcon">
    <div class="kjnav" style="display:none">
    <a href="http://bbs.pigcms.com">使用帮助</a><a href="http://bbs.pigcms.com">技术售后</a><a href="http://bbs.pigcms.com">安装指导</a><a href="http://bbs.pigcms.com">联系我们</a><a href="http://bbs.pigcms.com">升级咨询</a>
    </div>
	<?php if(function_exists('curl_init')){ $ch = curl_init(); curl_setopt($ch, CURLOPT_URL, 'http://up.pigcms.cn/oa/admin.php?m=notice&c=view&a=get_list&number=6'); curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); curl_setopt($ch, CURLOPT_HEADER, 0); curl_setopt($ch, CURLOPT_TIMEOUT, 1); $content = curl_exec($ch); curl_close($ch); }else{ $content = file_get_contents('http://up.pigcms.cn/oa/admin.php?m=notice&c=view&a=get_list&number=6'); } $content = json_decode($content,true); ?>
    <ul class="myinfo kjinfo">
	   <li class="title" style="color:red">紧急通知</li>
		<?php if(!empty($content)): if(is_array($content)): $i = 0; $__LIST__ = $content;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="http://up.pigcms.cn/oa/admin.php?m=notice&c=view&a=index&id=<?php echo ($vo["id"]); ?>" title="<?php echo ($vo["title"]); ?>" target="_blank"><?php echo ($vo["title"]); ?></a><span style="float:right"><?php echo (date("Y-m-d H:i:s",$vo["time"])); ?></span></li><?php endforeach; endif; else: echo "" ;endif; endif; ?>
	</ul>
    </div>
</div>

<!--/box-->
</div>
<script>
$(function(){});
function hg_jian(){
	var hg_zhi = $('#hg_zhi').val();
	hg_zhi--;
	if(hg_zhi < 1){
		$('#hg_zhi').val(1);
	}else{
		$('#hg_zhi').val(hg_zhi);
	}
}
function hg_jia(){
	var hg_zhi = $('#hg_zhi').val();
	hg_zhi++
	$('#hg_zhi').val(hg_zhi);
}
function hg_but(){
	var hg_zhi = $('#hg_zhi').val();
	/*var now = <?php echo $updateRecord['version'];?>-(60*60*24*hg_zhi);
	var now_date = new Date(now*1000);
	var year = now_date.getFullYear();
	var month = now_date.getMonth()+1;
	var day = now_date.getDate();
	month =(month<10 ? "0"+month:month);
	day =(day<10 ? "0"+day:day);*/
	url = '<?php echo U('System/Index/rollback')?>&time='+hg_zhi;
	if(confirm('确定将程序版本回滚'+hg_zhi+'天吗？')){
        window.location = url;
    }
}
function drop_confirm(msg, url){
    if(confirm(msg)){
        window.location = url;
    }
}
function systemupdatecheck(){
	$.ajax({
		type: "GET",
		url: "Services/EFService.svc/Members",
		data: "{}",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (data) {
			if (data.success == true) {
				setTimeout("window.location.href = location.href",2000);
			} else {
				alert(data.msg);
			}
		},
		error: function (msg) {
			alert(msg);
		}
	});
}
</script>
<?php updateSync::finished_callback();?>
</body>
</html>