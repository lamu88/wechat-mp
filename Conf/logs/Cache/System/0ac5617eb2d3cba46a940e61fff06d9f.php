<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0058)http://test3.404.cn/merchants.php?m=Index&c=login&a=index# -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
	<meta name="format-detection" content="telephone=no">

    <title><?php echo ($f_siteName); ?>-PigCms后台管理登录</title>

    <link href="<?php echo RES;?>/images/ind/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo RES;?>/images/ind/font-awesome.css" rel="stylesheet">
	 <link href="<?php echo RES;?>/images/ind/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="<?php echo RES;?>/images/ind/animate.css" rel="stylesheet">
	<link href="<?php echo RES;?>/images/ind/style.css" rel="stylesheet">
	<link href="<?php echo RES;?>/images/ind/login.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="<?php echo RES;?>/css/reset.css" />
<link type="text/css" rel="stylesheet" href="<?php echo RES;?>/css/common.css" />
<link type="text/css" rel="stylesheet" href="<?php echo RES;?>/css/page.css" />
</head>
<script type="text/javascript">
    function refresh() {
        var randomRZ = Math.random();
        $("#imgCheckB").attr("src", "/index.php?g=System&m=Admin&a=verify&rz=" + randomRZ);
    }
</script>

<body class="gray-bg">
<div class="addBg" style="height: 756px;">
    <div class="addBgArea" style="height: 756px;">
        <img class="balloon" src="<?php echo RES;?>/images/ind/balloon.png" alt="balloon">
        <img class="cricle" src="<?php echo RES;?>/images/ind/cricle.png" alt="cricle">
        <img class="could" src="<?php echo RES;?>/images/ind/could.png" alt="could">
        <img class="mountain0" src="<?php echo RES;?>/images/ind/mountain0.png" alt="mountain0">
        <img class="mountain1" src="<?php echo RES;?>/images/ind/mountain1.png" alt="mountain1">
        <img class="mountain2" src="<?php echo RES;?>/images/ind/mountain2.png" alt="mountain2">
        <img class="tree tree0" src="<?php echo RES;?>/images/ind/tree.png" alt="tree">
        <img class="tree tree1" src="<?php echo RES;?>/images/ind/tree.png" alt="tree">
        <img class="tree tree2" src="<?php echo RES;?>/images/ind/tree.png" alt="tree">
        <img class="point" src="<?php echo RES;?>/images/ind/point.png" alt="point">
        <img class="stick" src="<?php echo RES;?>/images/ind/stick.png" alt="stick">
        <img class="footprint0" src="<?php echo RES;?>/images/ind/footprint.png" alt="footprint">
        <img class="footprint1" src="<?php echo RES;?>/images/ind/footprint.png" alt="footprint">
        <img class="footprint2" src="<?php echo RES;?>/images/ind/footprint.png" alt="footprint">
        <img class="footprint3" src="<?php echo RES;?>/images/ind/footprint.png" alt="footprint">
    </div>
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <form name="form1" method="post" action="<?php echo U('Admin/insert');?>" id="form1" class="myform">
                <div class="form-group">
                    <input type="test" name="username" class="form-control" placeholder="账号" required="" aria-required="true">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="密码" required="" aria-required="true">
                </div>
				<div class="form-group">
                    <span ><input name="code" type="text" id="txtCheckCode" class="form-control" maxlength="4" style="width:120px;float:left" placeholder="验证码" /></span>
                    <span class="chk_img"><img src="<?php echo U('Admin/verify');?>" id="imgCheckB" style="width:62px;margin-top:-55%"/></span>
                    <span class="chk_txt" style="margin-left:10px"><a href="javascript:refresh();" style="color: #0033CC">看不清？换一张</a></span>
                </div>
				
                <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

            </form>
			  <p class="m-t"> <small style="font-family: 微软雅黑;">Copyright：<?php echo C('server_topdomain');?> © 2015</small> </p>
        </div>
    </div>
</div>
    <!-- Mainly scripts -->
    <script src="<?php echo RES;?>/images/ind/jquery-2.1.1.js"></script>
    <script src="<?php echo RES;?>/images/ind/bootstrap.min.js"></script>
	
	<!-- Jquery Validate -->
    <script src="<?php echo RES;?>/images/ind/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#form").validate({
                 rules: {
                     password: {
                         required: true,
                         minlength: 6
                     },
                     username: {
                         required: true,
                       	 minlength: 4
                     }
                 }
             });
		$(".addBg,.addBgArea").height($(window).height());
            $(window).resize(function(){
                $(".addBg,.addBgArea").height($(window).height());
          })
        });
    </script>



</body></html>