<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> <?php echo ($f_siteTitle); ?> <?php echo ($f_siteName); ?></title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>" />
<meta name="description" content="<?php echo ($f_metaDes); ?>" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<script>var SITEURL='';</script>
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/User/default/common/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
</head>
<body id="nv_member" class="pg_CURMODULE">
<div class="topbg">
<div class="top">
<div class="toplink">
<style>
<?php if($usertplid == 1): ?>.topbg{background:url(<?php echo ($staticPath); ?>/tpl/static/newskin/images/top.gif) repeat-x; height:101px; /*box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;*/}
.top {
    margin: 0px auto; width: 988px; height: 101px;
}

.top .toplink{ height:30px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {width: 990px; color: #333; height:70px; font-size:16px;}
.top h1{ font-size:25px;float:left; width:230px; margin:0; padding:0; margin-top:6px; }
.top .navr {WIDTH:750px; float:right; overflow:hidden;}
.top .navr ul{ width:850px;}
.navr li {text-align:center; float: right; height:70px; font-size:1em; width:103px; margin-right:5px;}
.navr li a {width:103px; line-height:70px; float: left; height:100%; color: #333; font-size: 1em; text-decoration:none;}
.navr li a:hover { background:#ebf3e4;}
.navr li.menuon {background:#ebf3e4; display:block; width:103px;}
.navr li.menuon a{color:#333;}
.navr li.menuon a:hover{color:#333;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}
<?php else: ?>

.topbg{BACKGROUND-IMAGE: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/top.png);BACKGROUND-REPEAT: repeat-x; height:124px; box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;}
.top {
	MARGIN: 0px auto; WIDTH: 988px; HEIGHT: 124px;
}

.top .toplink{ height:27px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {WIDTH: 990px;COLOR: #333; height:70px;  FONT-SIZE:16px; PADDING-TOP:25px}
.top h1{ font-size:25px; margin-top:20px; float:left; width:230px; margin:0; padding:0;}
.top .navr {WIDTH:750px; float:right; overflow:hidden; margin-top:10px;}
.top .navr ul{ width:850px;}
.navr LI {TEXT-ALIGN:center;FLOAT: left;HEIGHT:32px;FONT-SIZE:1em;width:103px; margin-right:5px;}
.navr LI A {width:103px;TEXT-ALIGN:center; LINE-HEIGHT:30px; FLOAT: left;HEIGHT:32px;COLOR: #333; FONT-SIZE: 1em;TEXT-DECORATION: none
}
.navr LI A:hover {BACKGROUND: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/navhover.gif) center no-repeat;color:#009900;}
.navr LI.menuon {BACKGROUND: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/navon.gif) center no-repeat; display:block;width:103px;HEIGHT:32px;}
.navr LI.menuon a{color:#FFF;}
.navr LI.menuon a:hover{BACKGROUND: url(img/navon.gif) center no-repeat;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}<?php endif; ?>
</style>
<div class="welcome">欢迎使用<?php echo ($f_siteName); ?>!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">注册</a>
			<?php else: ?>
			你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>（uid:<?php echo (session('uid')); ?>）
			<a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>	
	</div>
</div>
    <div class="logo">
        <div style="float:left"><h1><a href="/" title="多用户微信营销服务平台"><img src="<?php echo ($f_logo); ?>" height="55" /></a></h1></div>
            
            <div class="navr">
        	<ul id="topMenu">
                <li style="width:85px"></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?> <?php if($zdydh6['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh6['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh6['url'] == ''): echo U('Home/Index/help'); else: echo ($zdydh6['url']); endif; ?>"><?php if($zdydh6['name'] == ''): ?>帮助中心<?php else: echo ($zdydh6['name']); endif; ?></a>
                </li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?> <?php if($zdydh5['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh5['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh5['url'] == ''): echo U('User/Index/index'); else: echo ($zdydh5['url']); endif; ?>"><?php if($zdydh5['name'] == ''): ?>管理中心<?php else: echo ($zdydh5['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?> <?php if($zdydh4['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh4['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh4['url'] == ''): echo U('Home/Index/common'); else: echo ($zdydh4['url']); endif; ?>"><?php if($zdydh4['name'] == ''): ?>产品案例<?php else: echo ($zdydh4['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?> <?php if($zdydh3['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh3['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh3['url'] == ''): echo U('Home/Index/price'); else: echo ($zdydh3['url']); endif; ?>"><?php if($zdydh3['name'] == ''): ?>资费说明<?php else: echo ($zdydh3['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?> <?php if($zdydh2['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh2['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh2['url'] == ''): echo U('Home/Index/about'); else: echo ($zdydh2['url']); endif; ?>"><?php if($zdydh2['name'] == ''): ?>关于我们<?php else: echo ($zdydh2['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?> <?php if($zdydh1['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh1['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh1['url'] == ''): echo U('Home/Index/fc'); else: echo ($zdydh1['url']); endif; ?>"><?php if($zdydh1['name'] == ''): ?>功能介绍<?php else: echo ($zdydh1['name']); endif; ?></a></li>                        
           		<li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/">首页</a></li>       
            </ul>
        </div>
        </div>
    </div>
</div>
<div id="aaa"></div>


<div id="mu" class="cl"></div>
</div>
</div>
<div id="aaa"></div>

<div id="wp" class="wp">
    <?php if($usertplid == 0): ?><link href="<?php echo ($staticPath); ?>/tpl/User/default/common/css/style.css?id=103" rel="stylesheet" type="text/css" />
  <?php else: ?>
    <link href="<?php echo ($staticPath); ?>/tpl/User/default/common/css/style-<?php echo ($usertplid); ?>.css?id=103" rel="stylesheet" type="text/css" /><?php endif; ?>
 <div class="contentmanage">
    <div class="developer">
       <div class="appTitle normalTitle">
        <h2>管理平台</h2>
        <div class="accountInfo">
        
        </div>
        <div class="clr"></div>
      </div>
      <div class="tableContent">
        <!--左侧功能菜单-->
        <div class="sideBar">
          <div class="catalogList">
            <ul class="<?php if($usertplid != 0): ?>newskin<?php endif; ?>">
            	<li class="subCatalogList"> <a class="secnav_1" href="<?php echo U('Index/useredit');?>">修改密码</a> </li>
				<li class=" subCatalogList "> <a class="secnav_2" href="<?php echo U('Index/index');?>">我的公众号</a></li>
				<li class=" subCatalogList "> <a class="secnav_3" href="<?php if(($hasWeixin) == "0"): ?>javascript:alert('您不可以使用此功能，请联系您的网站管理员处理');<?php else: echo U('Index/add'); endif; ?>">添加公众号</a> </li>
				<li class=" subCatalogList "> <a class="secnav_4" href="<?php echo U('Alipay/index');?>">会员充值</a> </li>
				<li class=" subCatalogList "> <a class="secnav_6" href="<?php echo U('Sms/index');?>">短信管理</a> </li>
				<?php if($thisUser['invitecode']): ?><li class=" subCatalogList "> <a class="secnav_7" href="<?php echo U('Index/invite');?>">邀请朋友</a> </li><?php endif; ?>
        <li class=" subCatalogList "> <a class="secnav_8" href="<?php echo U('Index/switchTpl');?>">切换模板</a> </li>
        <li class=" subCatalogList "> <a class="secnav_9" href="<?php if(C('open_biz') == 0): ?>javascript:alert('请联系站长在后台开启企业号');<?php else: echo U('Index/add',array('biz'=>1)); endif; ?>">添加企业号</a> </li>
            </ul>
          </div>
        </div>

<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/jquery.min.js"></script>
<div class="content">
          <div class="cLineB"><h4>切换管理中心模板<span class="FAQ"></span></h4></div>
          
          <div class="msgWrap">
            <table class="userinfoArea" border="0" cellspacing="0" cellpadding="0" width="100%">
             
              <tbody>
				<tr>
                  <td style="font-size:14px;" align="center">
                    <div style="width:250px;" id="wrap_old">
                        <label for="radio_old"><img width="250" src="<?php echo ($staticPath); ?>/tpl/static/newskin/images/s_oldtp.jpg" /></label>
                        <p style="text-align:center;margin-top:20px">
                          <input type="radio" name="usertpl" value="0" id="radio_old" <?php if($usertplid == 0): ?>checked<?php endif; ?> /> <label for="radio_old">蓝色简洁版</label>
                        </p>
                    </div>
                  </td>
                	<td style="font-size:14px;" align="center">
                		

                    <div style="width:250px;">
                      <label for="radio_new"><img width="250" src="<?php echo ($staticPath); ?>/tpl/static/newskin/images/s_newtp.jpg" /></label>
                      <p style="text-align:center;margin-top:20px">
                        <input type="radio" name="usertpl" value="1" id="radio_new" <?php if($usertplid == 1): ?>checked<?php endif; ?> /> <label for="radio_new">高端大气版</label>
                      </p>
                    </div>
                      
                	</td>
                </tr>

              </tbody>
            </table>

             
          </div>
         <script>
          jQuery(function($) {
            var obj = $("input[name=usertpl]");
           
            obj.bind("change",function(){
               var objval =  $("input[name=usertpl]:checked").val();
               $.ajax({
                url:"<?php echo U('Index/switchTpl');?>",
                type:"post",
                data:"value="+objval,
                success:function(d){
                  if(d == 200){
                    alert('切换模板成功');
                    location.reload();
                  }else{
                    alert('失败了，请稍后再试~');
                  }
                }
               });
            });
             
          });
         </script>
          
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <!--底部-->
  	</div>