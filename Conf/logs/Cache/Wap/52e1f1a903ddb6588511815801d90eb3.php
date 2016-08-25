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
	<style>
.loading{position: absolute;left: 0;top: -50px;width: 100%;text-align: center;display:none}
.loading .loadBg{background: rgba(0,0,0,0.7);display: inline-block;color: #fff;padding: 10px 20px;border-radius: 5px}
.userPa a {white-space: inherit;}
	</style>
    <script>
var timer=0;
$(function(){
	
	<?php if($is_nosex == 1 && $is_over == 0){?>
		is_sex();
	<?php }else{?>
		btnClick();
	<?php }?>
    var docHeight = $(document).height();
    $(".fullBg").height(docHeight);
    $(".fullBg2").height(docHeight);
    tab(".tabList .hd .title",".tabList .bd .row","on");
    $(window).scroll(function() {
        if ($(window).scrollTop() > 200) {
            $(".backToTop").fadeIn(0);
        }
        else {
            $(".backToTop").fadeOut(500);
        }
    });
    $(".backToTop").click(function() {
        $('body,html').animate({
                scrollTop: 0
            },
            500);
        return false;
    });
    centerWindow(".w1");
	centerWindow(".w3");
    centerTop(".w0");
    $(".fullBg,.window .oClosed").click(function(){
        $(".window").removeClass("animate").hide();
        $(".fullBg").hide();
        clearTimeout(timer);
    });
    <?php if($is_over != 2){ ?>
    timeShow();//倒计时
	<?php } ?>
	
    point(<?php if($user['help_count'] == 0){echo 0;}else{echo $bili?$bili:0;}?>);//首页红色进度条
    lastLi(".actPart2 .priceList");//处理最后的边框
    lastLi(".userLsit");//处理最后的边框
});

function point(a){
    var point=$(".range .rPoint");
    point.css('width','0%');
    point.animate({width:a+'%'},2000)
}

function lastLi(a){
    $(a).find("li").last().css('borderBottom','0');
}
function btnClick(){
    $.getJSON("<?php echo U('Sentiment/add_share',array('token'=>$token,'id'=>$info['id']));?>",{share_key:'<?php echo ($share_key); ?>',wecha_id:'<?php echo ($wecha_id); ?>'},function(res){
		if(res.err == 0){
			$(".fullBg").show();
			$(".w1").addClass("animate").show();
			$("#help_zhi").text(res.zhi);
			closedWindow();
			setTimeout(function(){
				location.reload();
			},5100);
		}else{
			alert(res.info)
		}
	}); 
}
var daoshi = 60;
function showWindow(){
    $(".fullBg").show();
    $(".w0").addClass("animate").show();
	$('.getCode').click(function(){
		var tel = $('input[name=tel]').val();
		var tel_length = tel.length;
		var thisget = $(this).text();
		if(tel == ''){
			alert('请填写您的手机号');
		}else if(tel_length != 11){
			alert('请填写正确的手机号');
		}else{
			if(thisget == '获取验证码' || thisget == '重新获取'){
				$('.getCode').text('正在发送');
				$.ajax({
					type:"POST",
					url:"<?php echo U('Sentiment/sms',array('token'=>$token,'id'=>$info['id']));?>",
					dataType:"json",
					data:{
						tel:tel,
						token:'<?php echo $token?$token:0;?>',
						id:<?php echo $info['id']?$info['id']:0;?>,
						wecha_id:'<?php echo ($wecha_id); ?>'
					},
					success:function(data){
						if(data.error == 0){
							smsdaoshi()
						}else if(data.error == 'tel'){
							alert('该手机号码已被注册');$('.getCode').text('获取验证码');
						}else if(data.error == 4085){
							alert('该手机号码发送验证码超过每日限制');$('.getCode').text('获取验证码');
						}else if(data.error == null){
							alert('发送失败：该商家未购买短信');$('.getCode').text('获取验证码');
						}else{
							alert('发送失败：请稍后再试<br/>失败原因：'+data.error);$('.getCode').text('获取验证码');
						}
					}
				});
				
			}
		}
		
	});
	$('#telyzbut').click(function(){
		var tel = $('input[name=tel]').val();
		var code = $('input[name=code]').val();
		var tel_length = tel.length;
		if(tel == ''){
			alert('请填写您的手机号');
		}else if(tel_length != 11){
			alert('请填写正确的手机号');
		}else if(code == ''){
			alert('请填写您收到的验证码');
		}else{
			$('#telyzbut').text('手机号码验证中');
			$.ajax({
				type:"POST",
				url:"<?php echo U('Sentiment/smsyz',array('token'=>$token,'id'=>$info['id']));?>",
				dataType:"json",
				data:{
					tel:tel,
					code:code,
					token:'<?php echo $token?$token:0;?>',
					id:<?php echo $info['id']?$info['id']:0;?>,
					wecha_id:'<?php echo ($wecha_id); ?>'
				},
				success:function(data){
					if(data.error == 0){
						$('#telyzbut').text('验证成功');
						window.location.href='<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id']));?>&tel='+tel;
					}else if(data.error == 1){
						alert('验证码不正确');
					}else if(data.error == 2){
						alert('验证码和手机不匹配');
					}else if(data.error == 3){
						alert('验证码超时');
					}
				}
			});
		}
	});
}
function smsdaoshi(){
	if(daoshi < 1){
		daoshi = 60;
		$('.getCode').text('重新获取');
		$('.getCode').addClass('butCode');
	}else{
		if(daoshi == 60){
			$('.getCode').text('发送成功');
		}else{
			$('.getCode').text(daoshi+'s');
		}
		daoshi--;
		setTimeout("smsdaoshi()",1000);
	}
}
function closedWindow(){
    timer=setTimeout(function(){
        $(".fullBg").hide();$(".window").removeClass("animate").hide();
    },5000);
}

function tab(a,b,c){
    var len=$(a);
    len.bind("click",function(){
        var index = 0;
        $(this).addClass(c).siblings().removeClass(c);
        index = len.index(this);
        $(b).eq(index).show().siblings().hide();
        return false;
    }).eq(0).trigger("click");
}
//2.将盒子方法放入这个方，方便法统一调用
function centerWindow(a) {
    center(a);
    //自适应窗口
    $(window).bind('scroll resize',
        function() {
            center(a);
        });
}

//1.居中方法，传入需要剧中的标签
function center(a) {
    var wWidth = $(window).width();
    var wHeight = $(window).height();
    var boxWidth = $(a).width();
    var boxHeight = $(a).height();
    var scrollTop = $(window).scrollTop();
    var scrollLeft = $(window).scrollLeft();
    var top = scrollTop + (wHeight - boxHeight) / 2;
    var left = scrollLeft + (wWidth - boxWidth) / 2;
    $(a).css({
        "top": top,
        "left": left
    });
}
function centerTop(a) {
    var wWidth = $(window).width();
    var boxWidth = $(a).width();
    var scrollLeft = $(window).scrollLeft();
    var left = scrollLeft + (wWidth - boxWidth) / 2;
    $(a).css({
        "left": left
    });
}

function timeShow(){
    var show_time = $(".timeShow");
    endtime = new Date("<?php if($is_over == 1){echo date('m',$info['start']).'/'.date('d',$info['start']).'/'.date('Y',$info['start']).' '.date('H:i:s',$info['start']);}else{echo date('m',$info['end']).'/'.date('d',$info['end']).'/'.date('Y',$info['end']).' '.date('H:i:s',$info['end']);}?>");//结束时间
    today = new Date();//当前时间
    delta_T = endtime.getTime() - today.getTime();//时间间隔
    if(delta_T < 0){
        clearInterval(auto);
        alert("倒计时已经结束");
    }
    window.setTimeout(timeShow,1000);
    total_days = delta_T/(24*60*60*1000);//总天数
    total_show = Math.floor(total_days);//实际显示的天数
    total_hours = (total_days - total_show)*24;//剩余小时
    hours_show = Math.floor(total_hours);//实际显示的小时数
    total_minutes = (total_hours - hours_show)*60;//剩余的分钟数
    minutes_show = Math.floor(total_minutes);//实际显示的分钟数
    total_seconds = (total_minutes - minutes_show)*60;//剩余的分钟数
    seconds_show = Math.floor(total_seconds);//实际显示的秒数
    if(total_days<10){
        total_days="0"+total_days;
    }
    if(hours_show<10){
        hours_show="0"+hours_show;
    }
    if(minutes_show<10){
        minutes_show="0"+minutes_show;
    }
    if(seconds_show<10){
        seconds_show="0"+seconds_show;
    }
    show_time.find("li").eq(0).find("em").text(total_show);//显示在页面上
    show_time.find("li").eq(1).find("em").text(hours_show);
    show_time.find("li").eq(2).find("em").text(minutes_show);
    show_time.find("li").eq(3).find("em").text(seconds_show);
}


$(function(){
   $(".putTags a").click(function(){
       $(this).addClass("on").siblings().removeClass("on");
   });
});

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

</head>
<body>

<?php if($memberNotice != ''): echo ($memberNotice); endif; ?>
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
    <section class="oTime animate">
        <div class="timeBox">
        <h2>
            <?php if($is_over == 1){echo '距离开始还剩';}else{echo '时间还剩';} ?>
        </h2>
        <ul class="timeShow">
            <li>
                <em>00</em>
                <i>天</i>
            </li>
            <li>
                <em>00</em>
                <i>时</i>
            </li>
            <li>
                <em>00</em>
                <i>分</i>
            </li>
            <li>
                <em>00</em>
                <i>秒</i>
            </li>
        </ul>
    </div>
    </section>
<section class="progress animate">
    <h3 class="up35">
	<?php if($bili <= 10 || $user['help_count'] == 0){?>
	仅击败了<?php echo $user['help_count']>0?$bili:0;?>%的对手，人气太低，惨绝人寰，不忍直视
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
				<?php if($user['help_count'] > 0){?><div class="crown"><em><?php echo $user['help_rank']?$user['help_rank']:0;?></em></div><?php }?>
            </div>
            <div class="nameAndSex dn50">
                <div class="nameBar left"></div><div class="name"><h2><?php echo ($user["wechaname"]); if($user['sex'] == 1){?><i class="m1"></i><?php }elseif($user['sex'] == 2){?><i class="m0"></i><?php }?></h2></div><div class="nameBar right"></div>
            </div>
        </div>
    </div>
</section>
<section class="tabList animate">
    <div class="hd">
        <div class="title on"><h3>好友印象</h3></div>
        <div class="title"><h3>好友性别比</h3></div>
    </div>
    <div class="bd">
        <div class="row">
            <div class="qxData">
                <div class="tags" id="wrap">
				
                </div>
                <script type="text/javascript">
                    var word_list = [
						<?php foreach($label_list as $lvo){?>
                        {text: "<?php echo $lvo['label'];?>", frequency: <?php echo $lvo['count'];?>},
						<?php }?>
                    ];

                    $(function(){
                        word_list.sort(function(){ return 0.5 - Math.random() });//打乱排序
                        var oData = "";
                        $.each(word_list,function(k,v) {
                            var trs = "";
                            /*if(v.frequency<2){
                                trs += "<a href='javascript:;' style='font-size:0.9rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            }else */if( v.frequency<6/* && v.frequency>=2*/){
                                trs += "<a href='javascript:;' style='font-size:1.4rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            } else if( v.frequency>=6 && v.frequency<10){
                                trs += "<a href='javascript:;' style='font-size:1.8rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            }else if( v.frequency>=10 && v.frequency<15){
                                trs += "<a href='javascript:;' style='font-size:2.2rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            }else if( v.frequency>=15 && v.frequency<20){
                                trs += "<a href='javascript:;' style='font-size:2.6rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            }else if( v.frequency>=20 && v.frequency<100000000){
                                trs += "<a href='javascript:;' style='font-size:2.8rem;  margin: 2px 5px 15px 5px;'"+"data='"+ v.frequency+"'>" + v.text +"</a>";
                            }
                            oData += trs;
                        });
                        $("#wrap").append(oData);
						
						<?php if($share_key == ''){?>
							hide_label();
						<?php }else{?>
							label_too();
						<?php }?>
						del_label();
                    });
					function hide_label(){
						$('#wrap a').click(function(){
							var this_label_name = $(this).text();
							is_hide_label(this_label_name);
						});
					}
					function is_hide_label(name){
						$('.w3 h2').text('是否隐藏“'+name+'”？');
						$('.w3 div a').eq(0).text('是');
						$('.w3 div a').eq(0).attr('href','<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'del_label'=>1));?>&label_name='+name);
						$('.w3 div a').eq(1).text('否');
						$('.w3 div a').eq(1).attr('href','javascript:is_hide_label_hide()');
						$(".fullBg").show();
						$('.w3').show();
					}
					function is_hide_label_hide(){
						$('.w3').hide();
						$(".fullBg").hide();
					}
					function label_too(){
						$('#wrap a').click(function(){
							var this_label_name = $(this).text();
							is_label_too(this_label_name);
						});
					}
					function is_label_too(name){
						$('.w3 h2').text('我也贴这个标签？');
						$('.w3 div a').eq(0).text('是');
						$('.w3 div a').eq(0).attr('href','javascript:do_label_too("'+name+'")');
						$('.w3 div a').eq(1).text('否');
						$('.w3 div a').eq(1).attr('href','javascript:is_label_too_hide()');
						$(".fullBg").show();
						$('.w3').show();
					}
					function is_label_too_hide(){
						$('.w3').hide();
						$(".fullBg").hide();
					}
					function do_label_too(name){
						$('.w3').hide();
						$(".fullBg").hide();
						label(name);
					}
					function del_label(){
						$('.userPa a').click(function(){
							var this_label_name = $(this).text();
							is_del_label(this_label_name);
						});
					}
					function is_del_label(name){
						$('.w3 h2').text('是否删除“'+name+'”？');
						$('.w3 div a').eq(0).text('是');
						$('.w3 div a').eq(0).attr('href','<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'del_tolabel'=>1));?>&label_name='+name);
						$('.w3 div a').eq(1).text('否');
						$('.w3 div a').eq(1).attr('href','javascript:is_del_label_hide()');
						$(".fullBg").show();
						$('.w3').show();
					}
					function is_del_label_hide(){
						$('.w3').hide();
						$(".fullBg").hide();
					}
					var hideloading;
					var tolabel = 1;
					function label(name){
						if(tolabel == 1){
						tolabel = 2;
						$('.loading').hide();
						$('.loading').show();
						var label_name = name;
						$.ajax({
							type:"POST",
							url:"<?php echo U('Sentiment/label',array('token'=>$token,'id'=>$info['id']));?>",
							dataType:"json",
							data:{
								label_wecha_id:'<?php echo $user['wecha_id'];?>',
								help_wecha_id:'<?php echo $wecha_id;?>',
								token:'<?php echo $token?$token:0;?>',
								id:<?php echo $info['id']?$info['id']:0;?>,
								label:label_name
							},
							success:function(data){
								clearTimeout(hideloading);
								if(data.error == 1){
									$('.loading p').text(data.msg);
									hideloading = setTimeout(function(){$('.loading').hide();$('.loading p').text('系统正在为您贴标签……');tolabel = 1;},2000);
								}else if(data.error == 0){
									label_name = data.label;
									$('#divlabel').val('');
									$('.loading p').text('成功贴上标签');
									hideloading = setTimeout(function(){$('.loading').hide();$('.loading p').text('系统正在为您贴标签……');tolabel = 1;},2000);
									$('.nolabel').hide();
									$('#label_list').show();
									var same_label = true;
									for(l=0;l<8;l++){
										var label_text = $('#wrap a').eq(l).text();
										if(label_text == label_name){
											//prepend
											var this_style = $('#wrap a').eq(l).attr('style');
											var this_data = $('#wrap a').eq(l).attr('data');
											$('#wrap a').eq(l).detach();
											var new_a = "<a href='javascript:;' style='"+this_style+"'"+"data='"+(this_data+1)+"'>"+label_name+"</a>";
											$("#wrap").prepend(new_a);
											same_label = false;
										}
									}
									if(same_label){
										$('#wrap a').eq(7).detach();
										var new_a = "<a href='javascript:;' style='font-size:1.4rem;  margin: 2px 5px 15px 5px;'"+"data='1'>"+label_name+"</a>";
										$("#wrap").prepend(new_a);
									}
									<?php if($share_key == ''){?>
										hide_label();
									<?php }else{?>
										label_too();
									<?php }?>
									
									$('.userPa').prepend("<a href='javascript:;'>"+label_name+"<i></i></a>");
									del_label();
									
									if(data.count == 1){
										$('.ro2').attr('src','<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_2.png');
									}else if(data.count == 2){
										$('.ro2').attr('src','<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_1.png');
									}else if(data.count == 3){
										$('.ro2').attr('src','<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_3.png');
									}
								}
							}
						});
						}
					}
					function divlabel(){
						var divlabel_name = $('#divlabel').val();
						if(divlabel_name != ''){
							label(divlabel_name);
						}
					}
                </script>
                <div class="noData noData0 nolabel"  <?php if($label_list != ''){?>style="display: none"<?php }?>>
                    <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/nodata00.png"/>
                </div>
            </div>
            <div class="yellowBtn" id="label_list" <?php if($label_list == ''){?>style="display:none"<?php }?>>
                <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'labels'=>1));?>">查看谁给<?php echo ($ta); ?>贴标签>></a>
            </div>
			<div class="yellowBtn" style="margin-top:20px;">
                <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'rank'=>1));?>">排行榜top<?php echo ($info["rank_num"]); ?>>></a>
            </div>
            <div class="tagPut animate">
                <div class="titleBox">
                    <div class="title">
						<div>
                        <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/gt.png" width="48" height="64">
						<?php if($label_help_labels_count < 1){?>
						<img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_00.png" height="17" class="ro2"/>
						<?php }elseif($label_help_labels_count > 2){?>
						<img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_33.png" height="17" class="ro2"/>
						<?php }elseif($label_help_labels_count == 1){?>
						<img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_22.png" height="17" class="ro2"/>
						<?php }elseif($label_help_labels_count == 2){?>
						<img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/label_alert_11.png" height="17" class="ro2"/>
						<?php }?>
						</div>
                    </div>
                </div>
				<div class="userPa">
					<?php foreach($tolabel_list as $tov){?>
						<a href='javascript:;'><?php echo $tov;?><i></i></a>
					<?php }?>
				</div>

                <div class="putBox">
                    <diiv class="putBorder">
                        <input placeholder="以下标签都不符合？我来原创  " type="text" name="divlabel" id="divlabel"/><input type="button" onclick="divlabel()" value="贴上"/>
                    </diiv>
                </div>
                <div class="putTags">
					<?php if($user['sex'] == 1){ foreach($man_label as $mv){ ?>
                    <a href="javascript:label('<?php echo $mv?>');"><?php echo $mv?></a>
					<?php }}elseif($user['sex'] == 2){ foreach($woman_label as $wv){ ?>
                    <a href="javascript:label('<?php echo $wv?>');"><?php echo $wv?></a>
					<?php }}else{ foreach($nosex_label as $nv){ ?>
					<a href="javascript:label('<?php echo $nv?>');"><?php echo $nv?></a>
					<?php }}?>
                </div>
				<div class="loading">
                    <div class="loadBg">
                        <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/loading.GIF"/>
                        <p>系统正在为您贴标签……</p>
                    </div>
                </div>
            </div>
			
        </div>
        <div class="row doughnut">
            <div class="qxData">
                <div class="clearfix" <?php if($user['help_count'] <= 0){?>style="display:none"<?php }?>>
                    <div class="gender  clearfix">
                        <ul>
                            <li class="g0"><i></i><?php echo ($man_zhi); ?>人</li>
                            <li class="g1"><i></i><?php echo ($woman_zhi); ?>人</li>
							<?php if($info['is_nosex'] == 1){?>
                            <li class="g2" style="margin: 0"><i></i><?php echo ($nosex_zhi); ?>人</li>
							<?php }?>
                        </ul>
                    </div>
                    <div class="fr rightPart">
                        <div class="ren">
                            <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/ren<?php if($user['sex'] == 1){echo 2;}elseif($user['sex'] == 2){echo '';}else{echo '';}?>.png" width="109" height="150" class="imgRen"/>
                            
							<?php  if($user['sex'] == 0){ if($man_zhi > $woman_zhi && $man_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/n2.png" height="41" class="wen"/>'; }elseif($woman_zhi > $man_zhi && $woman_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/n1.png" height="41" class="wen"/>'; }elseif($nosex_zhi > $man_zhi && $nosex_zhi > $woman_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/nn.png" height="41" class="wen"/>'; }else{ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y3.png" height="41" class="wen"/>'; } }elseif($user['sex'] == 1){ if($man_zhi > $woman_zhi && $man_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y2.png" height="41" class="wen"/>'; }elseif($woman_zhi > $man_zhi && $woman_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y1.png" height="41" class="wen"/>'; }elseif($nosex_zhi > $man_zhi && $nosex_zhi > $woman_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/nn.png" height="41" class="wen"/>'; }else{ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y3.png" height="41" class="wen"/>'; } }elseif($user['sex'] == 2){ if($man_zhi > $woman_zhi && $man_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y1.png" height="41" class="wen"/>'; }elseif($woman_zhi > $man_zhi && $woman_zhi > $nosex_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y2.png" height="41" class="wen"/>'; }elseif($nosex_zhi > $man_zhi && $nosex_zhi > $woman_zhi){ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/nn.png" height="41" class="wen"/>'; }else{ echo '<img src="'.$staticPath.'/tpl/static/sentiment/images/y3.png" height="41" class="wen"/>'; } } ?>
							
                        </div>
                    </div>
                    <div class="fl leftPart">
                        <div class="canvasBox">
                            <canvas id="canvas" height="120" width="120" style="margin: 10px;"><?php echo $people_zhi?$people_zhi:0;?>人</canvas>
                            <h3 style="top:61px"><!-- 好友支持<br/><?php echo $people_zhi?$people_zhi:0;?> --><?php echo $people_zhi?$people_zhi:0;?>人</h3>
                        </div>
                    </div>
				</div>
				
                <div class="noData noData0"  <?php if($user['help_count'] > 0){?>style="display:none"<?php }?>>
                    <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/nodata1.png"/>
                </div>
				
            </div>

            <div class="yellowBtn" <?php if($user['help_count'] < 1){?>style="display:none"<?php }?>>
                <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'helps'=>1));?>">查看谁支持<?php echo ($ta); ?>>></a>
            </div>

            <div class="yellowBtn">
                <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'rank'=>1));?>">排行榜top<?php echo ($info["rank_num"]); ?>>></a>
            </div>
        </div>
    </div>
</section>


    <footer>
        <div class="oBtn">
			<?php if($memberNotice != '' && $share_key == ''){if($sms == 1){echo "<a href='javascript:;' onclick='showWindow()'>我也参与</a>";}else{echo "<a href='#memberNoticeBox' id='modaltrigger_notice'>我也参与</a>";}}else{ ?>
			<?php if($is_over == 1){echo "<a href='javascript:;'>活动未开始</a>";}elseif($is_over == 2){echo "<a href='javascript:;'>活动已结束</a>";}else{ ?>
			<?php if($share_key != ''){ ?>
			<?php if($memberNotice != ''){?>
			<?php if($sms == 1){?>
			<a href="javascript:;" onclick="showWindow()">
                <?php echo ($backtext); ?>
            </a>
			<?php }else{?>
            <a href="#memberNoticeBox" id="modaltrigger_notice">
                <?php echo ($backtext); ?>
            </a>
			<?php }?>
			<?php }else{?>
            <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id']));?>">
                <?php echo ($backtext); ?>
            </a>
			<?php }?>
            <a href="javascript:;" onclick=" share()">
                给TA支持
            </a>
			<?php }else{ ?>
			<a href="javascript:;" onclick="share()">
				找朋友帮忙
			</a>
			<?php } ?>
			<?php } ?>
			<?php } ?>
			
            <a href="<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'info'=>1));?>" style="background: #fff368;color: #ff7495;">
                活动详情
            </a>
        </div>
    </footer>
<div class="share_bg">
    <img src="<?php echo ($staticPath); ?>/tpl/static/live/default/share-guide.png">
</div>
<style>
	.fullBg2{background-color: #000;left: 0;opacity: 0.8;position: fixed;top: 0;z-index: 3;filter: alpha(opacity=80);-moz-opacity: 0.8;-khtml-opacity: 0.8;display: none;z-index: 888;width: 100%;}
	.w0 .windowThis .bd .row button{width: 100%;height: 30px;background: #f6514b;text-align: center;line-height: 30px;font-size: 1.4rem;color: #fff;border-radius: 5px}
	.tips{width: 100%;position: fixed;top: 0;left: 0;display: none;z-index: 999999}
	.tips h3{width: 70%;padding: 10px 0;  margin: 0 auto;  background: rgba(255,255,255,1);  text-align: center;  font-size: 1.2rem; color: red;}
	.share_bg {
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		text-align: center;
		background: rgba(0,0,0,0.7);
		z-index: 99;
	}
</style>
<div class="tips" style="display: none;"><h3></h3></div>
<script src="<?php echo ($staticPath); ?>/tpl/static/sentiment/js/Chart.min.js"></script>
<script>
function alert(text){
	var t=null;
	clearTimeout(t);
	var tip= $(".tips");
	tip.find('h3').text(text);
	tip.slideDown();
	t=setTimeout(function(){ tip.slideUp()},3000);
}
function share(){
	$('.share_bg').show();
	$('.share_bg').click(function(){
		if($(this).css('display') == 'block'){
			$(this).css('display','none');
		}
	});
}

    var DoughnutChart = [{
        value: <?php echo ($man_zhi); ?>,
        color: "#73d7bd"
    }, {
        value: <?php echo ($nosex_zhi); ?>,
        color: "#fff368"
    }, {
        value: <?php echo ($woman_zhi); ?>,
        color: "#ff7495"
    }];
    var context=document.getElementById("canvas").getContext("2d");
    var myDoughnutChart = new Chart(context).Doughnut(DoughnutChart);
</script>



    <div class="fullBg"></div>
    <div class="fullBg2"></div>
    <div class="window w1">
        <div class="windowThis">

            <div class="succeed">
                <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/girl.png" width="90" height="108" class="girl"/>
                <div class="greenBox">
                    <div>
                        <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/s1.png" width="72" height="16" class="s1"><em><?php echo ($user["wechaname"]); ?></em><img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/s2.png" width="8" height="6" class="s2"/>
                    </div>
                    <div><img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/s1-1.png"width="41" height="15" /><em id="help_zhi">0</em>点<?php echo ($info["name_zhi"]); ?></div>
                    <div>
                        <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/s3.png" width="168" height="15">
                    </div>
                </div>
                <img src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/cloud1.png" class="cloud1"/>
                <div class="roundLight rotate360">
                    <img class="" src="<?php echo ($staticPath); ?>/tpl/static/sentiment/images/roundLight.png"/>
                </div>
                <a href="javascript:;" class="oClosed"></a>
            </div>
        </div>
    </div>

    <div class="window w0">
        <div class="windowThis">
            <div class="bd">
                <div class="adMargin">
                    <div class="row">
                        <div class="putBorder">
                            <i></i><input type="text" name="tel" onfocus="if(this.value == '手机号'){this.value = ''}; this.style.color = '#ff6d81';" onblur="if (!value) { value = defaultValue; this.style.color = '#ff6d81'; }"  value="手机号"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="putBorder">
                            <a href="javascript:;" class="getCode">获取验证码</a> <i></i><input type="text" name="code" onfocus="if(this.value == '验证码'){this.value = ''}; this.style.color = '#ff6d81';" onblur="if (!value) { value = defaultValue; this.style.color = '#ff6d81'; }"  value="验证码"/>
                        </div>
                    </div>
                    <div class="row">
                       <button id="telyzbut">确定</button>
                    </div>
                </div>
                <a href="javascript:;" class="oClosed"></a>
            </div>
        </div>
    </div>
    <!-- <p class="backToTop"><a href="javascript:;"><span></span></a></p> -->
	
	<script>
	function is_sex(){
		$('.w3 h2').text('请选择您的性别：');
		$('.w3 div a').eq(0).text('男');
		$('.w3 div a').eq(0).attr('href','<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'sex'=>1));?>');
		$('.w3 div a').eq(1).text('女');
		$('.w3 div a').eq(1).attr('href','<?php echo U('Sentiment/index',array('token'=>$token,'id'=>$_GET['id'],'share_key'=>$_GET['share_key'],'sex'=>2));?>');
		$(".fullBg2").show();
		$('.w3').show();
	}
	</script>
	<style>
	.w3{z-index: 99999}
	.w2,.w3{width: 200px;background: rgba(0,0,0,0.6);border-radius: 5px;display: none}
	.w2 h2,.w3 h2{font-size: 14px;text-align: center;color: #fff;padding: 10px 0}
	.w2 label{font-size: 14px;color: #fff;margin: 0 15px}
	.w2 label input{-webkit-appearance: radio;margin-right: 5px}
	.w2 .row,.w3 .row{text-align: center;;padding: 0 0 10px 0}
	.w3 .aBtn{padding: 10px 0 10px 0}
	.w3 .aBtn a{display: inline-block;padding: 2px 15px;background: red;color: #fff;border-radius: 5px}
	.w3 .aBtn a:nth-child(1){background: #009900;margin-right: 15px}
	</style>
	<div class="window w3">
		<h2></h2>
		<div class="row aBtn">
			<a href="##"></a>
			<a href="##"></a>
		</div>
	</div>
	
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