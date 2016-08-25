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
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/scroller.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/menu.js"></script>
<style type="text/css">
#mymenu_lists .dztj_c{display:none}
#mymenu_lists .nodztj_c{display:block}
</style>
<body onselectstart="return true;" ondragstart="return false;">
<div class="container">
	<header class="nav menu">
		<div>
			<a href="javascript:;" class="on">菜单</a>
			<a href="<?php echo U('DishOut/MyShop',array('token' => $token,'cid'=>$cid,'wecha_id' => $wecha_id));?>">门店详情</a>
		</div>
	</header>
	<form name="cart_form" action="<?php echo U('DishOut/sureOrder',array('token' => $token,'wecha_id' => $wecha_id));?>" method="post">
	<section class="menu_wrap" id="menuWrap">
	<div id="menuNav" class="menu_nav">
		 <div class="ico_menu_wrap clearfix"><span class="ico_menu" id="icoMenu"><i></i></span></div>
			<div class="side_nav" id="sideNav" style="overflow-y:scroll;padding-bottom: 10px;height: 666px;">
				<ul>
				<?php if(!empty($fenleiarr)): if(is_array($fenleiarr)): $ik = 0; $__LIST__ = $fenleiarr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($ik % 2 );++$ik;?><li><a href="javascript:void(0);" title="<?php echo ($ik); ?>"><?php echo ($item); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				<?php if($dz_tj): ?><li><a href="javascript:void(0);" title="dztj" class="dztj_a">店长推荐</a></li><?php endif; endif; ?>
				</ul>
			</div>
		 </div>
		
	 <div class="menu_container" id="mymenu_lists">
	 <?php if(!empty($disharr)): if(is_array($disharr)): $dk = 0; $__LIST__ = $disharr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ditem): $mod = ($dk % 2 );++$dk; if($key == 'dztj' AND !empty($ditem)): $dztj=true; ?>
			<div class="menu_tt dztj_c">
			<h2>店长推荐</h2></div>
			<ul class="menu_list dztj_c">
		   <?php else: ?>
		   <?php $dztj=false; ?>
			<div class="menu_tt nodztj_c">
			<h2><?php echo ($ditem['0']['sortname']); ?></h2></div>
			<ul class="menu_list nodztj_c"><?php endif; ?>
			<?php if(is_array($ditem)): $ddk = 0; $__LIST__ = $ditem;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$dditem): $mod = ($ddk % 2 );++$ddk;?><li>
				<div>
					<?php if(!empty($dditem['image'])): ?><img src="<?php echo ($dditem['image']); ?>" alt="" url="<?php echo ($dditem['image']); ?>"><?php endif; ?>
				</div>
				<div>
					<h3><?php echo ($dditem['name']); ?></h3>
					<p class="salenum">月售<span class="sale_num"><?php echo ($dditem['m_sale']); ?></span><span class="theunit"><?php if(!empty($dditem['unit'])): echo ($dditem['unit']); else: ?>份<?php endif; ?></span>
					<?php if($kconoff == 1): ?>库存：<?php echo ($dditem['instock']); endif; ?>
					<!--<span class="sales"><strong class="sale_8"></strong></span>--></p>
					<div class="info"><?php echo (htmlspecialchars_decode($dditem['des'],ENT_QUOTES)); ?></div>
				</div>
				<div class="price_wrap">
					<strong>￥<span class="unit_price"><?php echo ($dditem['price']); ?></span></strong>
					<div class="fr" <?php if($kconoff == 1): ?>max="<?php echo ($dditem['instock']); ?>" <?php else: ?>max="-1"<?php endif; ?>>
				    <?php if($kconoff == 0 OR $dditem['instock'] > 0): ?><a href="javascript:void(0);" class="btn add" <?php if(isset($dditem['ornum']) && !empty($dditem['ornum'])) echo "data-num=".$dditem['ornum']; else echo "data-num=''"; ?>></a><?php endif; ?>
					</div>
					<?php if($dztj): ?><input autocomplete="off" class="number" type="hidden" name="dzdish[<?php echo ($dditem['id']); ?>]" value="">
					<?php else: ?>
					<input autocomplete="off" class="number" type="hidden" name="dish[<?php echo ($dditem['id']); ?>]" value=""><?php endif; ?>
				</div>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ul><?php endforeach; endif; else: echo "" ;endif; endif; ?>
	</div>
	</section>
	<input type="hidden" name="mycid" value="<?php echo ($cid); ?>">
	<footer class="shopping_cart">
		<div class="fixed">
			<div class="cart_bg">
			<span class="cart_num" id="cartNum"></span></div>
			<div>￥<span id="totalPrice">0</span></div>
			<div><span class="comm_btn disabled">还差 <span id="sendCondition"><?php if($stype == 1): echo ($pricing); else: ?>0<?php endif; ?></span> 起送</span>
			<a id="settlement" href="javascript:document.cart_form.submit();" class="comm_btn" style="display: none;">去结算</a></div>
			<?php if($stype == 2): ?><p style="padding:10px;"><span>温馨提示：</span>商家设定了外送起步价为<?php echo ($pricing); ?>元，订单金额不超过<?php echo ($pricing); ?>元的将按<?php echo ($pricing); ?>元收取</p><?php endif; ?>
		</div>
	</footer>
	</form>

	<div class="menu_detail" id="menuDetail">
		<img style="display: none;">
		<div class="nopic"></div>
		<a href="javascript:void(0);" class="comm_btn" id="detailBtn">来一份</a>
		<dl>
			<dt>价格：</dt>
			<dd class="highlight">￥<span class="price"></span></dd>
		</dl>
		<p class="sale_desc">月售<span class="sale_num"></span>份</p>
		<dl>
			<dt>介绍：</dt>
			<dd class="info"></dd>
		</dl>
	</div>

</div>
<script type="text/javascript">
 <?php if($stype == 1): ?>var Pricing="<?php echo ($pricing); ?>";
   <?php else: ?>
   var Pricing="0";<?php endif; ?>

	window.shareData = {  
		"moduleName":"DishOut",
		"moduleID":"<?php echo ($company['id']); ?>",
		"imgUrl": "<?php echo ($company['logourl']); ?>", 
		"sendFriendLink": "<?php echo ($f_siteUrl); echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid));?>",
		"tTitle": "<?php echo ($metaTitle); ?>",
		"tContent": "<?php echo ($metaTitle); ?>"
     };
</script>
</body>
<?php echo ($shareScript); ?>
</html>