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
<script type="text/javascript">
<?php if($isMember AND $discount > 0): ?>var discount="<?php echo ($discount); ?>";
<?php else: ?>
var discount=0;<?php endif; ?>
</script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/dialog.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/scroller.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/dmain.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/showdialog.js"></script>
<body onselectstart="return true;" ondragstart="return false;" style="background-color:#e5e5e5;">
	<script type="text/javascript">
	var islock=false;
	function next(){
		totalPrice=$.trim($('#allmoney').text());
		totalPrice=parseFloat(totalPrice);
		totalNum=$.trim($('#menucount').text());
		totalNum=parseInt(totalNum);
		if((totalNum>0) && (totalPrice>0) && !islock){
		  $('#totalnum').val(totalNum);
		  $('#totalmoney').val(totalPrice);
		  islock=true;
          document.myorderform.submit();
		  islock=false;
	  }
	}
</script>
<div data-role="container" class="container myMenu">
	<section data-role="body">
	<div class="main" >
	<div class="top">
		<span>
			<div>我的菜单</div>						
			<a href="<?php echo U('Repast/dishMenu', array('token'=>$token, 'cid'=>$cid, 'wecha_id'=>$wecha_id,'orid'=>$orid));?>" class="add">加菜</a>
			<a href="javascript:popup();" class="clear">清空</a>
		</span>
	</div>
	<form name="myorderform" method="POST" action="<?php echo U('Repast/orderBooking', array('token'=>$token, 'cid'=>$cid,'wecha_id'=>$wecha_id,'orid'=>$orid));?>">
	<div class="all" id="menuList">
		<ul id="usermenu">
			<?php if(!empty($ordishs)): if(is_array($ordishs)): $i = 0; $__LIST__ = $ordishs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$dditem): $mod = ($i % 2 );++$i;?><li id="dish_li<?php echo ($dditem['id']); ?>">
			    <div class="licontent">
				<div class="span">
					<?php if(!empty($dditem['image'])): ?><img src="<?php echo ($dditem['image']); ?>" alt="" url="<?php echo ($dditem['image']); ?>"><?php endif; ?>
					<?php if($dditem['ishot'] == 1): ?><span class="ishot" style="left: -5px;">推荐</span><?php endif; ?>
				<?php if($isMember AND $discount > 0 AND $dditem['isdiscount']): ?><span class="ishot" style="left: 55px;"><?php echo ($discount); ?>折</span><?php endif; ?>
				</div>
				<div class="menudesc">
					<h3><?php echo ($dditem['name']); ?></h3>
					<?php if($kconoff == 1): ?><p style="line-height: 30px;">库存：<?php echo ($dditem['instock']); ?></p><?php else: ?><br><?php endif; ?>
					<p class="addmark" onclick="addmark($(this))">添加备注</p>
				</div>
				<div class="price_wrap">
					<strong>￥<span class="unit_price"><?php echo ($dditem['price']); ?><input type="hidden" class="tureunit_price" <?php if(isset($dditem['zkprice']) AND $dditem['zkprice'] > 0): ?>value="<?php echo ($dditem['zkprice']); ?>"<?php else: ?>value="<?php echo ($dditem['price']); ?>"<?php endif; ?>></span></strong>
					<div class="fr" <?php if($kconoff == 1): ?>max="<?php echo ($dditem['instock']); ?>" <?php else: ?>max="-1"<?php endif; ?>>
					<a href="javascript:void(0);" class="btn plus" <?php if(isset($dditem['num']) && !empty($dditem['num'])): ?>data-num="<?php echo ($dditem['num']); ?>" <?php else: ?>data-num=""<?php endif; ?>></a>
					</div>
					<input autocomplete="off" class="number" type="hidden" name="dish[<?php echo ($dditem['id']); ?>][num]" value="<?php echo ($dditem['num']); ?>">
					<input autocomplete="off"  type="hidden" name="dish[<?php echo ($dditem['id']); ?>][price]" value="<?php echo ($dditem['price']); ?>">
					<input autocomplete="off"  type="hidden" name="dish[<?php echo ($dditem['id']); ?>][name]" value="<?php echo ($dditem['name']); ?>">
					<input autocomplete="off"  type="hidden" name="dish[<?php echo ($dditem['id']); ?>][discount]" <?php if($isMember AND $discount > 0 AND $dditem['isdiscount']): ?>value="<?php echo ($discount); ?>"<?php else: ?>value="0"<?php endif; ?>>
				</div>
			  </div>
				<input type="text" class="markinput" placeholder="备注(30个汉字以内)" name="dish[<?php echo ($dditem['id']); ?>][omark]" <?php if(isset($dditem['omark']) && !empty($dditem['omark'])): ?>value="<?php echo (htmlspecialchars_decode($dditem['omark'],ENT_QUOTES)); ?>" style="display:block;"<?php else: ?>value=""<?php endif; ?>>
			</li><?php endforeach; endif; else: echo "" ;endif; endif; ?>
		</ul>
		</div>
		<div class="mark">
			<textarea placeholder=" 备注" name="allmark"><?php echo ($allmark); ?></textarea>
			<input autocomplete="off"  type="hidden" name="totalmoney" id="totalmoney" value="">
			<input autocomplete="off"  type="hidden" name="totalnum" id="totalnum" value="">
			<input autocomplete="off"  type="hidden" name="mycid" value="<?php echo ($cid); ?>">
		</div>
	  </form>
	</div>
	</section>
	<footer data-role="footer">			
		<nav class="g_nav">
			<div>
				<span class="cart"></span>
				<span> <span class="money">￥<label id="allmoney">0</label></span>/<label id="menucount">0</label>个菜</span>
				<a href="javascript:next();" class="btn orange show" id="nextstep">下一步</a>
			</div>
		</nav>
	</footer>
	<div class="layer transparent"> </div>
	<div class="layer popup">
		<div class="dialogX">
			<div class="content">
				<div class="title">清空菜单</div>
				<div class="message">您是否要清空该菜单？</div>
			</div>
			<div class="button">
				<a class="cancel" href="javascript:cancel();">取消</a>
				<a href="<?php echo U('Repast/sureOrder', array('token'=>$token, 'cid'=>$cid, 'wecha_id'=>$wecha_id,'isclean'=>1));?>">确定</a>
			</div>
		</div>			
	</div>
</div>

<script type="text/javascript">
$(function(){
	var amountCb = $.amountCb();
	$('#menuList li').each(function(){
		var count = parseInt($(this).find('.number').val()),
			_add = $(this).find('.plus'),
			i = 0;

		for(; i < count; i++){
			amountCb.call(_add, '+');
		}

		_add.amount(count, amountCb);
	});

});
function addmark(obj){
	obj.parent().parent().siblings(".markinput").toggle();
}


function getMyMenulist(){
	var lis =$("#usermenu li");
	var list = [];
	for(i=0;i<lis.length;i++){		
		var mark= $(".markinput",lis[i]).get(0).value;
		var count = $(".num >input",lis[i]).get(0).value;
		if(count>0){
			var id = lis[i].id;			
			var info = {'id':id,'count':count,'mark':mark}
			list.push(info);
		}
		
	}
	var allmark = $("#allmark").get(0).value;
	return {'data':list,mark:allmark};
}

window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"<?php echo ($company['id']); ?>",
            "imgUrl": "<?php echo ($company['logourl']); ?>", 
            "timeLineLink": "<?php echo $f_siteUrl . U('Repast/dishMenu',array('token' => $token,'cid'=>$cid));?>",
            "sendFriendLink": "<?php echo $f_siteUrl . U('Repast/dishMenu',array('token' => $token,'cid'=>$cid));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };

</script>
<?php echo ($shareScript); ?>
</body>
</html>