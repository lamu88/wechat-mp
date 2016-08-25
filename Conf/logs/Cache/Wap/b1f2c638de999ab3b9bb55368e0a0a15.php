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
<body onselectstart="return true;" ondragstart="return false;">
<div class="container">
	<form name="cart_confirm_form" action="<?php echo U('DishOut/OrderPay',array('token' => $token,'wecha_id' => $wecha_id));?>" method="post">
	<section class="menu_wrap pay_wrap">
		<ul class="box">
			<li>
				<a href="javascript:void(0);" id="addresBtn">
					<strong>
						<span id="showAddres"><?php if($contact): echo ($contact['youaddress']); else: ?>请点击添加送餐地址<?php endif; ?></span><br>
						<span id="showName"><?php if($contact): echo ($contact['youname']); endif; ?></span>
						<span id="showTel"><?php if($contact): echo ($contact['youtel']); endif; ?></span>
						</strong>
					<div><i class="ico_arrow"></i></div>
				</a>
			</li>
		</ul>
		<ul class="box pay_box">
			<li>
				<a href="javascript:void(0);" id="timeBtn">
					<strong>送达时间</strong>
					<span id="arriveTime">尽快送出</span>
					<div><i class="ico_arrow"></i></div>
				</a>
			</li>
			<li>
				<a href="javascript:void(0);" id="remarkBtn">
					<strong>订单备注</strong>
					<span id="remarkTxt">点击添加订单备注</span>
					<div><i class="ico_arrow"></i></div>
				</a>
			</li>
		</ul>

	<ul class="menu_list order_list" id="orderList">
	 <?php if(!empty($ordish)): if(is_array($ordish)): $dk = 0; $__LIST__ = $ordish;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ditem): $mod = ($dk % 2 );++$dk;?><li>
			<div>
			<?php if(!empty($ditem['image'])): ?><img src="<?php echo ($ditem['image']); ?>" alt=""><?php endif; ?>
			</div>
			<div>
				<h3><?php echo ($ditem['name']); ?></h3>
				<div>
					<div class="fr" <?php if($kconoff == 1): ?>max="<?php echo ($ditem['instock']); ?>" <?php else: ?>max="-1"<?php endif; ?>>
					<a href="javascript:void(0);" class="btn add active"></a>
					</div>
					<input autocomplete="off" class="number" type="hidden" name="dish[<?php echo ($ditem['id']); ?>][num]" value="<?php echo ($ditem['ornum']); ?>">
					<input autocomplete="off"  type="hidden" name="dish[<?php echo ($ditem['id']); ?>][price]" value="<?php echo ($ditem['price']); ?>">
					<input autocomplete="off"  type="hidden" name="dish[<?php echo ($ditem['id']); ?>][name]" value="<?php echo ($ditem['name']); ?>">
					<span class="count"><?php echo ($ditem['ornum']); ?></span>
					<strong>￥<span class="unit_price"><?php echo ($ditem['price']); ?></span></strong>
				</div>
				<?php if($kconoff == 1): ?><p style="line-height: 8px;">库存：<?php echo ($ditem['instock']); ?></p><?php endif; ?>
			</div>
	  </li><?php endforeach; endif; else: echo "" ;endif; endif; ?>
	</ul>
	</section>
	<footer class="order_fixed">
		<div class="fixed">
		  <p>
			<span class="fr">总计：<strong>￥<span id="totalPrice"></span></strong> / <span id="cartNum" class="has_num"></span> 份</span>
		  </p>
		   	<div><span class="comm_btn disabled">还差￥ <span id="sendCondition"><?php if($stype == 1): echo ($pricing); else: ?>0<?php endif; ?></span> 起送</span>
			<a href="javascript:;" class="comm_btn" id="submit_order">订单确认</a></div>
			<?php if($stype == 2): ?><p style="padding:10px;color: #ff510c;"><span>温馨提示：</span>商家设定了外送起步价为<?php echo ($pricing); ?>元，订单金额不超过<?php echo ($pricing); ?>元的将按<?php echo ($pricing); ?>元收取</p><?php endif; ?>
		</div>
	</footer>
	<div style="display:none;">
	  <input type="hidden" name="mycid" value="<?php echo ($cid); ?>">
	  <input class="hidden" id="totalmoney" name="totalmoney" value="0">
	  <input class="hidden" id="totalnum" name="totalnum" value="0">
	  <input class="hidden" id="ouserName" name="ouserName" <?php if($contact): ?>value="<?php echo ($contact['youname']); ?>"<?php else: ?>value=""<?php endif; ?> >
	  <input class="hidden" id="ouserSex" name="ouserSex" <?php if($contact): ?>value="<?php echo ($contact['yousex']); ?>"<?php else: ?>value="1"<?php endif; ?> >
	  <input class="hidden" id="ouserTel" name="ouserTel" <?php if($contact): ?>value="<?php echo ($contact['youtel']); ?>"<?php else: ?>value=""<?php endif; ?> >
	  <input class="hidden" id="ouserAddres" name="ouserAddres" <?php if($contact): ?>value="<?php echo ($contact['youaddress']); ?>"<?php else: ?>value=""<?php endif; ?>>
	  <input class="hidden" id="oarrivalTime" name="oarrivalTime" value="">
	  <input class="hidden" id="omark" name="omark" value="">
	</div>
	</form>
	<div class="addres_box" id="addresBox">
		  <ul>
			<li><input class="txt" placeholder="预定人" id="userName"></li>
			<li class="get_code">
				<span><input class="txt" placeholder="手机" maxlength="11" id="userTel"></span>
			</li>
			<li class="get_code">
				<span>性别：<label><input type="radio" name="yousex" id="yousex1" value="1" checked="checked" class="sexinput"> 男 </label>
				&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="yousex" id="yousex0" value="0" class="sexinput"> 女 </label></span>
			</li>
			<li><textarea class="txt" placeholder="送餐地址" id="userAddres"></textarea></li>
			<li class="btns_wrap">
				<span><a href="javascript:void(0);" class="comm_btn higher disabled" id="cancleAddres">取消</a></span>
				<span><a href="javascript:void(0);" class="comm_btn higher" id="saveAddres">确认</a></span>
			</li>
		</ul>
	</div>

		<div id="timeBox" class="timeBox">
			<div>
				<a href="javascript:void(0);">尽快送出</a>
				<?php if(!empty($timearr)): if(is_array($timearr)): $tk = 0; $__LIST__ = $timearr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tv): $mod = ($tk % 2 );++$tk;?><a href="javascript:void(0);"><?php echo ($tv); ?></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
			</div>
		</div>

	<div class="addres_box" id="remarkBox">
		<ul>
			<li><textarea class="txt max" placeholder="请填写备注" id="userMark"></textarea></li>
			<li class="btns_wrap">
			<span><a href="javascript:void(0);" class="comm_btn higher disabled" id="cancleRemark">取消</a></span>
			<span><a href="javascript:void(0);" class="comm_btn higher" id="saveRemark">确认</a></span>
			</li>
		</ul>
	</div>
</div>
<script type="text/javascript">
var config  = {isForeign: false};
var addressBox = {
	init: function(){
		this.differTime = 60;
		this.box = $('#addresBox');
		this.errorMsg = {
			userName: '预定人不能为空',
			userTel: '手机不能为空',
			userAddres: '送餐地址不能为空'
		};

		var _this = this;

		$('#addresBtn').click(function(){
			_this.show.call(this, _this);
		});
		$('#saveAddres').click(function(){
			_this.save.call(this, _this);
		});
		$('#cancleAddres').click(function(){
			_this.close();
		});
	},
	show: function(obj){ /**obj是_this**$(this)是$('#addresBtn')***/
		var addressTxt = $.trim($(this).find('strong').text());
		if(addressTxt == '' || addressTxt == '请点击添加送餐地址'){
			
		}else{
			var sex=$.trim($('#ouserSex').val());
			sex=parseInt(sex);
			if(sex==0){
			  $('#yousex0').click();
			}else{
			  $('#yousex1').click();
			}
			$('#userName').val($('#showName').text());
			$('#userTel').val($('#showTel').text());
			$('#userAddres').val($('#showAddres').text());
		}

		obj.box.dialog({title: '送餐地址', closeCb: function(){
			obj.reset();
		}});
	},
	save: function(obj){
		var error = '',
			tel = $('#userTel').val();
		$('#userName, #userTel, #userAddres').each(function(){
			if(this.value == ''){
				error += obj.errorMsg[this.id] + '\n';
			}
		});

		function fillData(){
			$('#showAddres').text($('#userAddres').val());
			$('#showName').text($('#userName').val());
			$('#showTel').text(tel);

			obj.close();
		}

		// 判断是否为空
		if(error){
			alert(error);
			return false;
		}
		if(!/^.{5,20}$/gi.test(tel) || !/^(\+\s?)?(\d*\s?)?(?:\(\s?(\d+[-\s])?\d+\s?\)\s?)?\s?(\d+[-\s]?)+\d+$/gi.test(tel)){
				alert('请输入正确的手机号码');
				return false
			}
			fillData();
	},
	reset: function(){
		$('#codeWrap').hide();
		$('#userTel').attr('disabled', false);
		$('#userCode').val('');
	},
	close:function(){
		this.box.dialog('close');
		this.reset();
	}
}
$(function(){
	addressBox.init();

	var _timeBox = $('#timeBox'),
		_addresBox = $('#addresBox'),
		_remarkBox = $('#remarkBox'),
		_remarkInput = _remarkBox.find('textarea');

	// 选择送餐时间
	$('#timeBtn').bind('click', function(){
		_timeBox.dialog({title: '选择送达时间'});
	});

	_timeBox.find('a').bind('click', function(){
		$('#arriveTime').text($(this).text());
		_timeBox.dialog('close');
	});
    //性别选择
	$('#addresBox .sexinput').bind('click', function(){
		var vsex=$(this).val();
		$('#ouserSex').val(vsex);
	});
	// 添加备注
	$('#remarkBtn').bind('click', function(){
		var remark = $('#remarkTxt').text();
		if(remark == '点击添加订单备注') remark = '';
		$('#userMark').val(remark);
		_remarkBox.dialog({title: '添加备注'});
	});

	$('#cancleRemark').bind('click', function(){
		_remarkBox.dialog('close');
	});

	$('#saveRemark').bind('click', function(){
		$('#remarkTxt').text(_remarkInput.val());
		_remarkInput.val('');
		_remarkBox.dialog('close');
	});

	$("#submit_order").click(function(){
		if(!$(this).hasClass('disabled')){
			$(this).addClass('disabled');
			var money=$.trim($('#totalPrice').text());
			var tnum=$.trim($('#cartNum').text());
			money=parseFloat(money);
			tnum=parseInt(tnum);
			if(!(money>0)||!(tnum>0)){
				alert("您还没有点菜，请至少点一道菜啊");
				return false;
			}
			var wo_user_name = $.trim($("#showName").html());
			var wo_receiver_mobile = $.trim($("#showTel").html());
			var wo_receiver_address = $.trim($("#showAddres").html());
			if(wo_receiver_address == '请点击添加送餐地址') {
				wo_receiver_address = '';
			}
			if(wo_user_name == '' || wo_receiver_mobile == '' || wo_receiver_address == ''){
				alert("请完善送餐地址信息");
				$(this).removeClass('disabled');
				return false;
			}
			$('#totalmoney').val(money);
			$('#totalnum').val(tnum);
			$('#ouserName').val(wo_user_name);
			$('#ouserTel').val(wo_receiver_mobile);
			$('#ouserAddres').val(wo_receiver_address);
			var wo_delivery_time = $.trim($("#arriveTime").html());
			if(wo_delivery_time == '尽快送出'){
				wo_delivery_time = '';
			}
			$('#oarrivalTime').val(wo_delivery_time);
			var wo_memo = $.trim($("#remarkTxt").html());
			if(wo_memo == '点击添加订单备注') {
				wo_memo = '';
			}
			$('#omark').val(wo_memo);
			

			document.cart_confirm_form.submit();
		}
		return false;
	});
});
</script>
<script type="text/javascript">
 <?php if($stype == 1): ?>var Pricing="<?php echo ($pricing); ?>";
   <?php else: ?>
   var Pricing="0";<?php endif; ?>

$(function(){
	var amountCb = $.amountCb();
	$('#orderList li').each(function(){
		var count = parseInt($(this).find('.count').text()),
			_add = $(this).find('.add'),
			i = 0;

		for(; i < count; i++){
			amountCb.call(_add, '+');
		}

		_add.amount(count, amountCb);
	});

});
	window.shareData = {  
		"moduleName":"DishOut",
		"moduleID":"<?php echo ($cid); ?>",
		"imgUrl": "<?php echo ($company['logourl']); ?>", 
		"sendFriendLink": "<?php echo ($f_siteUrl); echo U('DishOut/dishMenu',array('token' => $token,'cid'=>$cid));?>",
		"tTitle": "<?php echo ($metaTitle); ?>",
		"tContent": "<?php echo ($metaTitle); ?>"
     };
</script>
</body>
<?php echo ($shareScript); ?>
</html>