<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><?php if($zdydh1['name'] == ''): ?>功能介绍<?php else: echo ($zdydh1['name']); endif; ?>－<?php echo C('site_title');?></title>
    </head>
    <style>
        img{max-width:740px;}
        .banner img{max-width:100%}
    </style>
    <body>
        <!--startof header-->
        <link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/public.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/index2.css" rel="stylesheet" type="text/css" />
<!--<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/jquery-1.9.1.min.js" type="text/javascript"></script>-->
<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/jquery1.js" type="text/javascript"></script>
<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/daohang.js" type="text/javascript"></script>

<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/jquery-1.7.2.min.js"></script>
<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/ss.js"></script>
<link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/gongneng.css" rel="stylesheet" type="text/css" />
<script src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/js/gongnneg.js" type="text/javascript"></script>
<link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/gongneng.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/help.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/zifei.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/case.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/css/about us.css" rel="stylesheet" type="text/css" />
<!--startof header-->
<div class="header clr">
    <div class="biaotilan clr">
        <div class="shang clr">
            <div class="zhongJian clr">
                <div class="zLeft clr">欢迎使用<?php echo ($f_siteName); ?>!</div>
                <div class="zRight clr">
                    <?php if($_SESSION[uid]==false): ?><span class="ones clr"><a href="<?php echo U('Index/login');?>">注册</a></span>
                        <span class="twos clr"><a href="<?php echo U('Index/login');?>">登录</a></span>
                    <?php else: ?>
                        你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php if($_SESSION['role_name']== 'staff'): echo (session('staff_username')); else: echo (session('uname')); endif; ?></span></a>（uid:<?php echo ($_SESSION['uid']); ?>）
                        <a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>   
                </div>
            </div>
        </div>
    
        <div class="xia clr">
            <div class="logo clr" style="height:60px"><a href="/"><img src="<?php echo ($f_logo); ?>" /></a></div>
            <div class="daohang1 clr">
            <ul id="topMenu">
                <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/" >首页</a></li>
                <?php if($type['fc'] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 1): ?><li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                        <a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('Home/Index/fc'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>功能介绍<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <?php else: ?>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li><?php endif; ?>
                <?php if($type['about'] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 2): ?><li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>><a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('Home/Index/about'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>关于我们<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <?php else: ?>
                    <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li><?php endif; ?>
                <?php if($type['prize'] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 3): ?><li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>><a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('Home/Index/price'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>资费说明<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <?php else: ?>
                    <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li><?php endif; ?>
                <?php if($type['common'] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 4): ?><li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('Home/Index/common'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>产品案例<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <?php else: ?>
                    <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/common');?>">产品案例</a></li><?php endif; ?>
                <?php if($type['login'] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 5): ?><li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('User/Index/index'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>管理中心<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                <?php else: ?>
                    <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li><?php endif; ?> 
                <?php if($type[help] == 1): if(is_array($zdydh)): $i = 0; $__LIST__ = $zdydh;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['type'] == 6): ?><li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?> <?php if($vo['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($vo['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($vo['url'] == ''): echo U('Home/Index/help'); else: echo ($vo['url']); endif; ?>"><?php if($vo['name'] == ''): ?>帮助中心<?php else: echo ($vo['name']); endif; ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?> 
                <?php else: ?>
                    <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li><?php endif; ?>
            </ul>
            </div>
        </div>
    </div>
            <!--banner-->
            <div class="banner clr" >
                <p  style="background:url(<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/images/onebg_02.png) repeat-x;" class="zhutu clr">
                    <?php if($images['fc'] == null): ?><img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/images/1.png" style="height:300px;"/>
                    <?php else: ?>
                        <img src="<?php echo ($images['fc']); ?>" style="width:100%;height:300px;"><?php endif; ?>
                </p>
            </div>
            <!--end banner-->
        </div>
        <!--ENDOF header-->
        
        
        <!--start content-->
        <div class="content clr">
            <!--contLt-->
            <div class="contLt clr" id="ttl">
            	<?php if($pre == ''): ?><div class="vtitle clr"><em class="v v02 clr"></em>微信电商</div>
	                <div class="vcon clr">
	                    <ul class="vconlist clearfix clr" id="menu">
							<li class="select" id="1"><div class="">微商城</div></a></li>
							<li class="" id="2"><div class="">微购物</div></a></li>
	                    </ul>
	                </div>
	                <div class="vtitle clr"><em class="v v01 clr"></em>活动游戏</div>
	                <div class="vtitle clr"><em class="v v01 clr"></em>互动功能</div>
	                <div class="vtitle clr"><em class="v v01 clr"></em>其他</div>
            	<?php else: ?>
	                <?php if(is_array($pre)): $i = 0; $__LIST__ = $pre;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="vtitle clr" id="vtb"><em class="v v01 clr"></em><?php echo ($vo["name"]); ?></div>
		                <div class="vcon" id="<?php echo ($vo["id"]); ?>" style="display:<?php if($fun['classid'] == $vo['id']): ?>block<?php else: ?>none<?php endif; ?>;">
		                    <ul class="vconlist clearfix clr"  id="menu">
		                    	<?php if(is_array($funs)): $i = 0; $__LIST__ = $funs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vf): $mod = ($i % 2 );++$i; if($vf['classid'] == $vo['id']): ?><li class="<?php if($vf["id"] == $id): ?>select <?php elseif($vf["id"] == $fun['id']): ?>select<?php else: endif; ?>"><a href="<?php echo U('Home/Index/fc',array('id'=>$vf['id']));?>"><div class="" style="	height: 40px;line-height: 40px;font-size: 11px;"><?php echo ($vf["title"]); ?></div></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		                    </ul>
		                </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
	        </div>
	    <div class="contRt clr" style="text-align:left" id="">
	    	<?php if($pre == ''): ?><div class="contNei clr">
                    <p class="chaxun clr" style="text-align:center">微商城</p>
                    <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/mrtp.jpg" style="margin-bottom:10px;" />
                    <p class="ziduan clr">微信中输入“商城”会自动回复，可以设置商品分类，支持商品搜索，多种属性排序，多商品购物车结算，瀑布流展示。</p>
                </div>
	    	<?php else: ?>
            	<div class="contNei clr">
                    <p class="chaxun clr" style="text-align:center"><?php echo ($fun["title"]); ?></p>

                    <div style="line-height:180%;test-align:left;">
                    <?php
 if ($fun['url']){ ?>
                    <script src="/tpl/static/jquery.qrcode.min.js"></script>
                    
                    <div id="demofunc" style="width:200px;height:200px;margin:10px auto;"></div>
                    <script>
                    jQuery('#demofunc').qrcode({width:200,height:200,correctLevel:0,text:'<?php echo ($fun["url"]); ?>'});  
                    </script>
                    <div style="color:orange;text-align:center">用微信扫描二维码体验该功能</div>
                    <?php
 } ?>
                    <p class="ziduan clr" style="text-align:left;text-indent: 30px;"><?php echo ($fun["content"]); ?></p></div>

                </div><?php endif; ?>
                <!---->
                
            </div>
        </div>
        <!--endof content-->
       
        <!--startof footer-->
        <!--悬浮框-->
            <div id="leftsead">
                <ul>
                    <?php if($agentid == 0): ?><li>
                            <a href="javascript:void(0)" class="youhui">
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l02.png" width="47" height="49" class="shows" />
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/a.png" width="57" height="49" class="hides"/>
                                <img src="<?php echo C('site_twm');?>" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0"/>
                                <map name="taklhtml"><area shape="rect" coords="26,273,115,300 " href="#" /></map>
                            </a>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes" target="_blank">
                                <div class="hides" style="width:161px;display:none;" id="qq">
                                    <div class="hides" id="p1">
                                        <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/ll04.png">
                                    </div>
                                    <?php if(C('site_qq') == ''): ?><div class="hides" id="p2">
                                            <span style="color:#FFF;font-size:13px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($siteqq)): $i = 0; $__LIST__ = $siteqq;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p2">
        	                                    <span style="color:#FFF;font-size:13px"><?php echo ($vo); ?></span>
        	                                </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l04.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                        <li id="tel">
                            <a href="javascript:void(0)">
                                <div class="hides" style="width:161px;display:none" id="tels"/>
                                    <div class="hides" id="p1">
                                        <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/ll05.png">
                                    </div>
                                    <?php if(C('site_mp') == ''): ?><div class="hides" id="p3">
                                            <span style="color:#FFF;font-size:12px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($sitemp)): $i = 0; $__LIST__ = $sitemp;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p3">
        	                                    <span style="color:#FFF;font-size:12px"><?php echo ($vo); ?></span>
        	                                </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l05.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                    <?php else: ?>
                        <li>
                            <a href="javascript:void(0)" class="youhui">
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l02.png" width="47" height="49" class="shows" />
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/a.png" width="57" height="49" class="hides"/>
                                <img src="<?php echo ($qrcode); ?>" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0"/>
                                <map name="taklhtml"><area shape="rect" coords="26,273,115,300 " href="#" /></map>
                            </a>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($qq); ?>&site=qq&menu=yes" target="_blank">
                                <div class="hides" style="width:161px;display:none;" id="qq">
                                    <div class="hides" id="p1">
                                        <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/ll04.png">
                                    </div>
                                    <?php if(siteqq == ''): ?><div class="hides" id="p2">
                                            <span style="color:#FFF;font-size:13px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($siteqq)): $i = 0; $__LIST__ = $siteqq;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p2">
                                                <span style="color:#FFF;font-size:13px"><?php echo ($vo); ?></span>
                                            </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l04.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                        <li id="tel">
                            <a href="javascript:void(0)">
                                <div class="hides" style="width:161px;display:none" id="tels"/>
                                    <div class="hides" id="p1">
                                        <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/ll05.png">
                                    </div>
                                    <?php if(sitemp == ''): ?><div class="hides" id="p3">
                                            <span style="color:#FFF;font-size:12px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($sitemp)): $i = 0; $__LIST__ = $sitemp;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p3">
                                                <span style="color:#FFF;font-size:12px"><?php echo ($vo); ?></span>
                                            </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l05.png" width="47" height="49" class="shows" />
                            </a>
                        </li><?php endif; ?>
                    <li id="btn">
                        <a id="top_btn">
                        <div class="hides" style="width:161px;display:none"><img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/ll06.png" width="161" height="49" /></div>
                        <img src="<?php echo ($staticPath); ?>/tpl/Home/pigcms/common/images/xufu/l06.png" width="47" height="49" class="shows" />
                        </a>
                    </li>
                </ul>
            </div>
        	<!--leftsead end-->
        </div>
        <!--startof footer-->
        <div class="footer clr" style="padding-bottom:10px;padding-top:10px;position:fixed;bottom:0;z-index:3;">
        	<div class="last clr">
            	<P style="padding-bottom: 0px;">© <?php echo ($time); ?>  <?php if($agenturl != ''): echo ($agenturl); else: echo C('server_topdomain'); endif; ?>   <a href="<?php echo icp_link();?>" style="color: #5c5c5c;" target="_blank" ><?php if($agentid == 0): echo C('ipc');?>   <?php echo ($copyright); else: echo ($copyright); endif; ?></a></P>
            	<?php
 if (C('server_topdomain')=='pigcms.cn'){ echo '<P style="padding:20px 0 0 0;"><a  key ="549258c23b05a3da0fbc6eb3"  logo_size="83x30"  logo_type="realname"  href="http://www.anquan.org" ><script src="http://static.anquan.org/static/outer/js/aq_auth.js"></script></a></p>'; } ?>
            	
            </div>
        </div>
    <script type="text/javascript">
        //功能更新
        $(".tuPian").mouseover(function(){
          $(this).children().children(".tubiao").hide();
          $(this).children().children(".tubiao1").show();
        });
        $(".tuPian").mouseout(function(){
          $(this).children().children(".tubiao").show();
          $(this).children().children(".tubiao1").hide();
        });
        //右侧导航 - 二维码
        $(".youhui").mouseover(function(){
            $(this).children(".2wm").show();
        })
        $(".youhui").mouseout(function(){
            $(this).children(".2wm").hide();
        });
        //右侧导航 - QQ
        var ndiv = $("#qq").children().length;;
        var npx = ((ndiv-2)*49)+"px";
        $("#qq").mouseover(function(){
            $("#tel").css("margin-top",npx);
        })
        $("#qq").mouseout(function(){
            $("#tel").css("margin-top","0px");
        })
        //右侧导航 - 电话
        var ndiv = $("#tels").children().length;
        var npx1 = ((ndiv-2)*49)+"px";
        $("#tels").mouseover(function(){
            $("#btn").css("margin-top",npx1);
        })
        $("#tels").mouseout(function(){
            $("#btn").css("margin-top","0px");
        })
    </script>
    	<div style="display:none"><?php echo html_entity_decode(base64_decode(C('countsz')));?></div>
</div><span style="display:none"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5524076'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D5524076' type='text/javascript'%3E%3C/script%3E"));</script></span>
        <script type="text/javascript">
        $(function(){
            //菜单隐藏展开
            var tabs_i=0
            $('.vtitle').click(function(){
                var _self = $(this);
                var j = $('.vtitle').index(_self);
                if( tabs_i == j ) ; tabs_i = j;
                $('.vtitle em').each(function(e){
                    if(e==tabs_i){
                        $('em',_self).removeClass('v01').addClass('v02');
                    }else{
                        $(this).removeClass('v02').addClass('v01');
                    }
                });
                $('.vcon').slideUp().eq(tabs_i).slideDown();
            });
        })
        </script>
    </body>
</html>