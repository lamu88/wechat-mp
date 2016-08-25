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
</head>
<body>
<section class="actPart2 mt20" style="padding-bottom: 60px;">
    <div class="actTitle actTitle03">
        <i></i><h3>排行top<?php echo ($info["rank_num"]); ?></h3>
    </div>
    <div class="setMargin">
        <div class="priceList">
            <ul>
				<?php if(is_array($rank)): $i = 0; $__LIST__ = $rank;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <div class="userAvatar fl"><img src="<?php if($vo['portrait']!=''){echo $vo['portrait'];}else{ echo ($staticPath); ?>/tpl/static/sentiment/images/portrait.jpg<?php }?>"/></div>
                    <div class="desc">
                        <h3><?php echo ($vo["username"]); if($vo['sex'] == 1){?><i class="m1"></i><?php }elseif($vo['sex'] == 2){?><i class="m0"></i><?php }?></h3>
                        <div class="dataInfo">
                            <span><i></i><?php echo ($i); ?></span>
                            <span><i></i><?php echo ($vo["share_num"]); ?></span>
                            <span><em><?php echo ($info["name_zhi"]); ?>：</em><?php echo ($vo["help_count"]); ?></span>
                        </div>
                    </div>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
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