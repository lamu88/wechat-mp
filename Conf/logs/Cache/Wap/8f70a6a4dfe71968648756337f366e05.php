<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo ($info["title"]); ?></title>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/sentiment/css/base.css">
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/sentiment/css/style.css">
    <script src="<?php echo ($staticPath); ?>/tpl/static/sentiment/js/jquery-2.1.4.min.js"></script>
    <script>
$(function(){
    countTop();
    $(window).bind('scroll resize',
        function() {
            countTop();
        });
    function countTop(){
        var ftH=$("footer").height();
        var wHeight = $(window).height();
        var top = wHeight - ftH;
        $("footer").css({"top":top});

    }
	point(<?php echo $bili?$bili:0;?>);//首页红色进度条
});
function point(a){
    var point=$(".range .rPoint");
    point.css('width','0%');
    point.animate({width:a+'%'},2000)
}
window.onload=function(){
    var t=null;
    clearTimeout(t);
    t=setTimeout(function(){
        $(".animate").removeClass("animate");
    },4000);
}
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
	.userLsit ul li time{top:17px}
	.userLsit ul li .userTags a{margin-bottom: 5px;}
	</style>
</head>
<body>
<section class="progress animate">
    <h3 class="up35">
	<?php if($bili <= 10){?>
	仅击败了<?php echo $bili;?>%的对手，人气太低，惨绝人寰，不忍直视
	<?php }elseif($bili > 10 && $bili <= 50){?>
	仅击败<?php echo $bili;?>%的对手，革命尚未成功，同志仍需努力！
	<?php }elseif($bili > 50 && $bili <= 70){?>
	击败了<?php echo $bili;?>%的对手，哎哟，不错哦，人气还可以！
	<?php }elseif($bili > 70 && $bili <= 85){?>
	击败了<?php echo $bili;?>%的对手，哇，好棒！ 人气小达人！
	<?php }elseif($bili > 85 && $bili <= 95){?>
	击败了<?php echo $bili;?>%的对手，人气这么高，一定是万人迷吧！
	<?php }elseif($bili > 95 && $bili <= 99){?>
	击败了<?php echo $bili;?>%的对手，好厉害，人气爆棚，快hold不住了
	<?php }else{?>
	击败了<?php echo $bili;?>%的对手，人气突破天际，已经找不到形容词了！
	<?php }?>
	</h3>

    <div class="range">
        <span class="rBg">        <span class="rPoint"></span>
</span>
    </div>
    <div class="userAvatar">
        <div class="avatarBox animate">
            <div class="info left">
                <div class="addMargin">
                    <!-- <span><em>排名</em><i><?php echo $user['help_rank']?$user['help_rank']:0;?></i></span> -->
                    <span><em>转发</em><i><?php echo $user['share_num']?$user['share_num']:0;?></i></span>
                </div>
            </div>
            <div class="info right">
                <div class="addMargin">
                    <span><em><?php echo ($info["name_zhi"]); ?></em><i><?php echo $user['help_count']?$user['help_count']:0;?></i></span>
					<!-- <span><em>性别</em><?php if($user['sex'] == 1){?><b class="m1"></b><?php }elseif($user['sex'] == 2){?><b class="m0"></b><?php }?></span> -->
                </div>
            </div>
            <div class="avatarImg">
                <img src="<?php if($user['portrait']!=''){echo $user['portrait'];}else{ echo ($staticPath); ?>/tpl/static/sentiment/images/portrait.jpg<?php }?>"/>
				<div class="crown"><em><?php echo $user['help_rank']?$user['help_rank']:0;?></em></div>
            </div>
            <div class="nameAndSex dn50">
                <div class="nameBar left"></div><div class="name"><h2><?php echo ($user["wechaname"]); if($user['sex'] == 1){?><i class="m1"></i><?php }elseif($user['sex'] == 2){?><i class="m0"></i><?php }?></h2></div><div class="nameBar right"></div>
            </div>
        </div>
    </div>
</section>
<section class="userLsit mt20" style="padding-bottom: 60px;padding-top: 60px;">
    <div class="setMargin">
		<!-- <div class="actTitle actTitle01" style="margin-left:10px;">
            <i></i><h3>给<?php echo ($ta); ?>的标签</h3>
        </div> -->
        <ul>
			<?php if(is_array($labels)): $i = 0; $__LIST__ = $labels;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <time><?php echo (date('Y-m-d',$vo["addtime"])); ?></time>
                <div class="userAvatar fl">
                    <img src="<?php if($vo['portrait']!=''){echo $vo['portrait'];}else{ echo ($staticPath); ?>/tpl/static/sentiment/images/portrait.jpg<?php }?>"/>
                </div>
                <div class="info clearfix">
                    <h3><?php echo ($vo["wechaname"]); if($vo['sex'] == 1){?><i class="m1"></i><?php }elseif($vo['sex'] == 2){?><i class="m0"></i><?php }?>对<?php echo ($ta); ?>：</h3>
                    <div class="userTags clearfix">
						<?php foreach($vo['labels'] as $lv){?>
                        <a href="javascript:;"><?php echo $lv;?></a>
                        <?php }?>
                    </div>
                </div>

            </li><?php endforeach; endif; else: echo "" ;endif; ?>
			<?php if($labels_count > 100){ ?>
			<li><center style="color:#fff">只显示最新的100位</center></li>
			<?php } ?>
        </ul>
    </div>
</section>
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