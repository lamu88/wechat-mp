<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/jquery1.8.3.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/dialog.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/main.js"></script>

<title><?php echo ($metaTitle); ?></title>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta name="Keywords" content="">
<meta name="Description" content="">
<!-- Mobile Devices Support @begin -->
	<meta content="telephone=no, address=no" name="format-detection">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<!-- apple devices fullscreen -->
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<!-- Mobile Devices Support @end -->
<style  type="text/css">
.search input, .ico_takeout, .ico_order, .ico_addres, .ico_tel, .ico_arrow, .ico_addres1, .ico_menu i, .menu_list .btn, .cart_num, .ico_close, .pay_type li input:checked::after, .dialog_close, .ico_status i, .shopping_cart .cart_bg, .ico_rest{display: inline-block; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/s.png) no-repeat; background-size: 150px auto;}
.fixed, .store_list li, .box, .box li, .side_nav, .side_nav a, .menu_tt h2, .menu_list li, .menu_list .btn, .menu_list .num, .pay_type, .timeBox div, .timeBox a, .txt, .my_order li, .detail_tools, .my_menu_list, .my_menu_list th, .my_menu_list td, .store_info, .ico_menu_wrap, .menu_wrap.skin1 .menu_nav{-webkit-border-image: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/border.gif) 2 stretch;}
.store_list .img_tt > div{display: block; width: 62px; height: 62px; padding: 6px; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/img_bg.png) no-repeat; background-size: cover;}
.nopic{background: #e4e4e4 url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/nopic.png) center center no-repeat; background-size: 61px auto; border-radius: 3px;}
.sales{display: inline-block; width: 66px; height: 10px; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/star.png) 0 0 repeat-x; background-size: 14px auto; margin-left: 4px; vertical-align: -1px;}
.sales strong{display: inline-block; width: 0; height: 10px; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/star.png) 0 -12px repeat-x; background-size: 14px auto; vertical-align: top;}
.menu_wrap.skin1 .menu_nav{right: auto; left: 0; width: 84px; padding-left: 10px; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/nav_bg.jpg) no-repeat; background-size: 100% 100%; border-width: 0 1px 0 0;}
.ico_success, .ico_failure{display: inline-block; width: 88px; height: 88px; border: 2px solid #ff5f32; border-radius: 88px; background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/success.png) -2px -2px no-repeat; background-size: 92px auto;}
.ico_score, .ico_score strong{background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/star1.png) repeat-x; background-size: 33px auto;}
.ico_scored, .ico_scored strong{background: url(<?php echo ($staticPath); ?>/tpl/static/dishout/image/star2.png) repeat-x; background-size: 15px auto;}
</style>
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/dishout/css/main.css" media="all">
</head>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/swipe_min.js"></script>
<body onselectstart="return true;" ondragstart="return false;">
<div class="container">
	<header class="nav">
		<div>
			<a href="<?php echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid,'wecha_id' => $wecha_id));?>">菜单</a>
			<a href="javascript:;" class="on">门店详情</a>
		</div>
	</header>
	<section>
	 <?php if(!empty($shopimg)): ?><div id="imgSwipe" class="img_swipe" style="visibility: visible;">
			<ul>
			<?php if(is_array($shopimg['img'])): $imgk = 0; $__LIST__ = $shopimg['img'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$imgv): $mod = ($imgk % 2 );++$imgk; if(!empty($imgv)): ?><li data-index="<?php echo ($imgk); ?>" ><a href="<?php echo ($shopimg['tourl'][$key]); ?>"><img src="<?php echo ($imgv); ?>"></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			 </ul>
			<ol id="swipeNum">
			   <?php if(is_array($shopimg['img'])): $imgk = 0; $__LIST__ = $shopimg['img'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$imgv): $mod = ($imgk % 2 );++$imgk; if(!empty($imgv)): ?><li class=""></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			</ol>
		</div><?php endif; ?>

		<div class="store_info">
			<span style="width:24%"><strong><?php echo ($shopinfo['sendtime']); ?></strong>送达/分钟</span>
			<?php if($shopinfo['stype'] == 2): ?><span style="width:24%"><strong><?php echo ($shopinfo['pricing']); ?></strong>起步价/元</span>
			<span style="width:50%;font-size:14px;">订单金额若未达到起步价将按照起步价收取</span>
			<?php else: ?>
			<span style="width:24%"><strong><?php echo ($shopinfo['pricing']); ?></strong>起送价/元</span>
			<span style="width:50%;font-size:14px;">订单金额达到起送价方生成外送订单</span><?php endif; ?>
		</div>
		<ul class="box">
			<li>
				<a href="tel:<?php echo ($shopinfo['tel']); ?>">
					<span><i class="ico_tel"></i></span>
					<strong>电话：<?php echo ($shopinfo['tel']); ?></strong>
					<span><i class="ico_arrow"></i></span>
				</a>
			</li>
			<li>
				<a href="<?php echo U('DishOut/companyMap', array('token'=>$token, 'cid'=>$cid, 'wecha_id'=>$wecha_id));?>">
					<span><i class="ico_addres1"></i></span>
					<strong><?php echo ($shopinfo['address']); ?></strong>
					<span><i class="ico_arrow"></i></span>
				</a>
			</li>
		</ul>
		<ul class="box">
			<li>营业时间：<?php echo ($shopinfo['timestr']); ?></li>
			<li>服务半径：<?php echo ($shopinfo['removing']); ?>公里</li>
			<li>配送区域：<?php echo ($shopinfo['area']); ?></li>
		</ul>
	</section>
	<footer class="go_menu">
		<div class="fixed">
			<a href="<?php echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid,'wecha_id' => $wecha_id));?>">立即点餐</a>
			<a style="margin-top: 10px;" href="<?php echo U('DishOut/myOrder',array('token' => $token,'cid'=>$cid,'wecha_id' => $wecha_id));?>">我的订单</a>
		</div>
	</footer>
</div>
<script type="text/javascript">
	window.shareData = {  
		"moduleName":"DishOut",
		"moduleID":"<?php echo ($cid); ?>",
		"imgUrl": "<?php echo ($shopinfo['logourl']); ?>", 
		"sendFriendLink": "<?php echo ($f_siteUrl); echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid));?>",
		"tTitle": "<?php echo ($shopinfo['name']); ?>",
		"tContent": "<?php echo ($shopinfo['name']); ?>"
     };
</script>
</body>
<?php echo ($shareScript); ?>
<script type="text/javascript">
/*
function OpenWxMap(obj){
wx.openLocation({
    latitude: obj.latitude, // 纬度，浮点数，范围为90 ~ -90
    longitude: obj.longitude, // 经度，浮点数，范围为180 ~ -180。
    name: obj.name, // 位置名
    address: obj.address, // 地址详情说明
    scale: 15, // 地图缩放级别,整形值,范围从1~28。默认为最大
    infoUrl: '' // 在查看位置界面底部显示的超链接,可点击跳转
});
}
*/
</script>
</html>