<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/common.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/color.css" media="all">
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/jquery_min.js"></script>
<title><?php echo ($metaTitle); ?></title>	
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<!-- Mobile Devices Support @begin -->
		<meta content="telephone=no, address=no" name="format-detection">
		<meta name="apple-mobile-web-app-capable" content="yes"> <!-- apple devices fullscreen -->
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!-- Mobile Devices Support @end -->
</head>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/nav.js"></script>
<link href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/nav.css" rel="stylesheet">
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/dialog.js"></script>
<body onselectstart="return true;" ondragstart="return false;">
	<div data-role="container" class="container result">
		<section data-role="body" class="section_scroll_content">
		<span class="sad"><img src="<?php echo ($staticPath); ?>/tpl/static/repastnew/image/smile.png"></span>
		<span class="message">恭喜您<br>&nbsp;&nbsp;&nbsp;&nbsp;您的餐位已成功提交！</span>
		<a href="<?php echo U('Repast/dishMenu', array('token'=>$token, 'cid'=>$company['id'], 'wecha_id'=>$wecha_id,'orid'=>$orid));?>" class="btn green order">立即点菜</a>
		<a href="<?php echo U('Repast/myOrders', array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="btn  orange view">查看订单</a>
		</section>
	<footer data-role="footer">		
<nav class="nav">
	<ul class="box">
	<li>
		<a href="<?php echo U('Index/index', array('token'=>$token, 'wecha_id'=>$wecha_id));?>">
		<span class="home">&nbsp;</span>
		<label>首页</label>				
		</a>
	</li>
	<li>
		<a href="<?php echo U('Repast/index', array('token'=>$token, 'st'=>'1','wecha_id'=>$wecha_id));?>">
		<span class="order">&nbsp;</span>
		<label>在线点餐</label>				
		</a>
	</li>
	<li>
		<a href="<?php echo U('Repast/index', array('token'=>$token, 'st'=>'2','wecha_id'=>$wecha_id));?>">
		<span class="book">&nbsp;</span>
		<label>在线订位</label>				
		</a>
	</li>
	<li class="more">
		<a href="<?php echo U('Repast/myOrders', array('token'=>$token,'wecha_id'=>$wecha_id));?>">
		<span class="my">&nbsp;</span>
		<label>我的订单</label>
		</a>
	</li>
	
	</ul>
</nav>
</footer>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"<?php echo ($company['id']); ?>",
            "imgUrl": "<?php echo ($company['logourl']); ?>", 
            "timeLineLink": "<?php echo $f_siteUrl . U('Repast/index',array('token' => $token));?>",
            "sendFriendLink": "<?php echo $f_siteUrl . U('Repast/index',array('token' => $token));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</body></html>