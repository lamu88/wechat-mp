<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo ($info["title"]); ?></title>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/sentiment/css/base.css">
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/sentiment/css/swiper.min.css">
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/sentiment/css/style.css">
    <script src="<?php echo ($staticPath); ?>/tpl/static/sentiment/js/jquery-2.1.4.min.js"></script>
    <script src="<?php echo ($staticPath); ?>/tpl/static/sentiment/js/swiper.jquery.min.js"></script>
    <script>
$(function(){
	var wHeight = $(window).height();
	var boxHeight = $("footer").height();
	var top = wHeight - boxHeight;
	if(gt_ios8()){
		$("footer").css({
			bottom:"inherit",
			top:top
		});
	}else{
		return false
	}
});

function gt_ios8() {
	// 判断是否 iPhone 或者 iPod
	if((navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i))) {
		// 判断系统版本号是否小于 8，下面条件成立就表示小于8否则>=8
		return Boolean(navigator.userAgent.match(/OS [3-7]_\d[_\d]* like Mac OS X/i));
	} else {
		return false;
	}
}
	</script>
	<style>
	.actPart1 .priceList li p i{color: red;font-style: italic;  font-size: 1.4rem;}
	</style>
</head>
<body>
<header class="scroll">
    <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <?php if(is_array($news_list)): $i = 0; $__LIST__ = $news_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nv): $mod = ($i % 2 );++$i;?><div class="swiper-slide">
				<a href="<?php echo $nv['url']?$nv['url']:'#';?>"><img src="<?php echo ($nv["imgurl"]); ?>" width="100%"></a>
				<?php if($nv['title'] != ''){ ?>
				<div class="title"><?php echo ($nv["title"]); ?></div>
				<?php } ?>
			</div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
    <script>
        var swiper = new Swiper('.swiper-container', {
            loop:true,
            autoplay: 5000//可选选项，自动滑动
        });
    </script>
</header>

<div class="partBigBox" style="padding-bottom: 60px;">
    <section class="actPart0">
        <div class="actTitle actTitle01">
            <i></i><h3>活动规则</h3>
        </div>
        <div class="desc" style="padding:10px;color:#fff;line-height:20px">
            <?php echo (htmlspecialchars_decode($info["info"])); ?>
        </div>
    </section>
    <section class="actPart1">
        <div class="actTitle actTitle02">
            <i></i><h3>活动奖品</h3>
        </div>
        <div class="setMargin">
            <div class="priceList">
                <ul>
					<?php if(is_array($prize_list)): $pi = 0; $__LIST__ = $prize_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$pv): $mod = ($pi % 2 );++$pi;?><li>
                        <div class="priceImg fl">
                            <img src="<?php echo ($pv["imgurl"]); ?>"/>
                        </div>
                        <div class="detail">
                            <h3><?php echo ($pi); ?>等奖</h3>
                            <p><?php echo ($pv["title"]); ?></p>
                            <p>数量：<i>x<?php echo ($pv["num"]); ?></i></p>
                        </div>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
    </section>
</div>
	<footer>
        <div class="oBtn">
			<a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key']));?>">
                返回首页
            </a>
		</div>
    </footer>
<p class="backToTop"><a href="javascript:;"><span></span></a></p>
<script type="text/javascript">
<?php if(($memberNotice == '' || $share_key != '') && $is_over == 0){?>
window.shareData = {  
            "moduleName":"Sentiment",
            "moduleID":"0",
            "imgUrl": "<?php echo ($info["reply_pic"]); ?>", 
            "timeLineLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id'],'share_key'=>$user['share_key']));?>",
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id'],'share_key'=>$user['share_key']));?>",
            "weiboLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id'],'share_key'=>$user['share_key']));?>",
			<?php if($info['fxtitle'] == ''){?>
            "tTitle": "我正在参加“<?php echo $info['title'];?>”活动，快来帮我拿大奖！",
			<?php }else{ $info['fxtitle'] = str_replace(array('{{活动名称}}','{{魅力值}}'),array($info['title'],$user['help_count']),$info['fxtitle']); ?>
			"tTitle": "<?php echo $info['fxtitle'];?>",
			<?php }?>
            <?php if($info['fxinfo'] == ''){?>
            "tContent": "<?php echo (sharefilter($info["intro"])); ?>",
            "fTitle": "<?php echo (sharefilter($info["intro"])); ?>",
			<?php }else{?>
			"tContent": "<?php echo (sharefilter($info["fxinfo"])); ?>",
			"fTitle": "<?php echo (sharefilter($info["fxinfo"])); ?>",
			<?php }?>
			"isShareNum":1,
			<?php if($user['is_join'] != 1){?>
			"isShareNumReload":1,
			<?php }?>
			"ShareNumData":"sentiment_user,share_key,<?php echo ($user['share_key']); ?>,share_num"
};
<?php }else{?>
window.shareData = {  
            "moduleName":"Sentiment",
            "moduleID":"0",
            "imgUrl": "<?php echo ($info["reply_pic"]); ?>", 
            "timeLineLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id']));?>",
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id']));?>",
            "weiboLink": "<?php echo ($f_siteUrl); echo U('Sentiment/index',array('token'=>$token,'id'=>$info['id']));?>",
            "tTitle": "我正在参加“<?php echo $info['title'];?>”活动，快来帮我拿大奖！",
            "tContent": "<?php echo (sharefilter($info["intro"])); ?>"
};
<?php }?>
</script>
<?php echo ($shareScript); ?>
</body>
</html>