<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/dishout/css/main.css" media="all">
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/dishout/js/jquery1.8.3.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repast/js/wei_webapp_v2_common.js"></script>
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
</head>
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repast/css/home.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repast/css/wei_canyin.css" media="all" />
<style type="text/css">
.my_menu_list th{color: #7C7C7C;}
.box li{margin-left:15px;}
#list td{padding-left:15px;}
.headselect a{color:#fff;}
.orderpaybtn{position: absolute;
right: 80px;
width: 65px;
height: 30px;
line-height: 30px;
text-align: center;
margin-top: -7px;
background: #ef7f2d;
color: #FFFFFF;
}
</style>
<body id="page_intelOrder" class="myOrderCon">
<header class="nav" style="margin:0px">
		<div>
			<a href="javascript:;" class="on">我的订单</a>
			<a href="<?php echo U('DishOut/MyShop',array('token' => $token,'cid'=>$cid,'wecha_id' => $wecha_id));?>">门店详情</a>
		</div>
	</header>
<div class="container">
<br/>
<header id="container">
	<div style="padding:10px 0;">
		<ul class="list_order" id='list' style="color:#181818;font-size:16px;position: relative">
		 <?php if(!empty($orderList)): if(is_array($orderList)): $i = 0; $__LIST__ = $orderList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$order): $mod = ($i % 2 );++$i;?><li>
				<label style="float:none;color:#666666;font-size: 15px;" onclick="this.classList.toggle('on');">订餐人：<?php echo ($order['name']); if($order['paid'] == 0 AND ($order['time'] > $today)): ?><a href="<?php echo U('DishOut/OrderPayAgain', array('token'=>$token, 'cid'=>$cid ,'orid'=>$order['id'], 'wecha_id'=>$wecha_id));?>" class="btn orderpaybtn">去付款</a><?php endif; ?>
                   <?php if($order['paytype'] == 'daofu'): ?><a href="" class="btn orderpaybtn" style="background-color:#44b549;position: absolute;right: 15px;top;0px;">货到付款</a><?php endif; ?>
				<br/>下单时间：<?php echo (date("Y-m-d H:i:s",$order['time'])); ?> </label>
				<ol>
				<table class="my_menu_list">
				<thead>
					<tr>
						<th style="padding-left: 17px;">美食列表</th>
						<th style="padding-right: 20px;"><?php echo ($order['total']); ?>份</th>
						<th style="padding-right: 32px;"><strong class="highlight">￥<?php echo ($order['price']); ?></strong></th>
					</tr>
				</thead>
				<tbody>
				 <?php if(is_array($order['info'])): $dk = 0; $__LIST__ = $order['info'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ditem): $mod = ($dk % 2 );++$dk;?><tr>
					<td><?php echo ($ditem['name']); ?></td>
					<td style="width: 60px;">X<?php echo ($ditem['num']); ?></td>
					<td style="width: 90px;">￥<?php echo ($ditem['price']); ?></td>
				  </tr><?php endforeach; endif; else: echo "" ;endif; ?>
				</tbody>
			</table>

			<ul class="box">
				<li>订餐人：<?php echo ($order['name']); ?></li>
				<li>手机：<?php echo ($order['tel']); ?></li>
				<li>送餐地址：<?php echo ($order['address']); ?></li>
				<li>送餐时间：<?php if($order['reservetime'] > 0): echo (date("Y-m-d H:i",$order['reservetime'])); else: ?>尽快<?php endif; ?> 送到</li>
				<li>支付方式：<?php echo ($order['paytypestr']); ?> <?php if(!empty($order['paystatus'])): ?>(<?php echo ($order['paystatus']); ?>)<?php endif; ?></li>
				<li>商家外送方式：<?php if($order['stype'] == 1): ?>按起送价方式<?php elseif($order['stype'] == 2): ?>按起步价方式<?php else: ?>其他方式<?php endif; ?></li>
				</ul>
			<ul class="box">
				<li>备注</li>
				<li><?php if(empty($order['des'])): ?>无
				<?php else: ?>
				<?php echo ($order['des']); endif; ?>
				</li>
			</ul>
			</ol>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
		 <?php else: ?>
	     <li>您还没有任何订单信息</li><?php endif; ?>
		</ul>
	</div>
</header>
</div>


<script>
$(document).ready(function(){
    var min_height = $(document).height() - 80;
    $("#container").css({"min-height":min_height});
});

</script>
</body>
<script type="text/javascript">
	window.shareData = {  
		"moduleName":"DishOut",
		"moduleID":"<?php echo ($company['cid']); ?>",
		"imgUrl": "<?php echo ($company['logourl']); ?>", 
		"sendFriendLink": "<?php echo ($f_siteUrl); echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid));?>",
		"tTitle": "<?php echo ($company['name']); ?>",
		"tContent": "<?php echo ($company['name']); ?>"
     };
</script>
<?php echo ($shareScript); ?>
</html>