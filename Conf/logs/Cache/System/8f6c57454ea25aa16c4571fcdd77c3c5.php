<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo ($f_siteName); ?>-PigCms后台管理系统</title>

    <link href="<?php echo STATICS;?>/artDialog/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo STATICS;?>/artDialog/css/font-awesome.css" rel="stylesheet">

    <link href="<?php echo STATICS;?>/artDialog/css/style.css" rel="stylesheet">

    
    <link href="<?php echo STATICS;?>/artDialog/css/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="<?php echo STATICS;?>/artDialog/css/jquery.gritter.css" rel="stylesheet">

    <link href="<?php echo STATICS;?>/artDialog/css/animate.css" rel="stylesheet">
        <!-- Mainly scripts -->
    <script src="<?php echo STATICS;?>/artDialog/js/jquery-2.1.1.js"></script>
    <script src="<?php echo STATICS;?>/artDialog/js/bootstrap.min.js"></script>
    <script src="<?php echo STATICS;?>/artDialog/js/jquery.metisMenu.js"></script>
    <script src="<?php echo STATICS;?>/artDialog/js/jquery.slimscroll.min.js"></script>
    <script src="<?php echo RES;?>/js/frame.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo STATICS;?>/artDialog/jquery.artDialog.js?skin=default"></script>
    <script type="text/javascript" src="<?php echo STATICS;?>/artDialog/plugins/iframeTools.js"></script>



    <!-- Custom and plugin javascript -->
    <script src="<?php echo STATICS;?>/artDialog/js/inspinia.js"></script>
	
    <script type="text/javascript">
      function setTab(m,n){
            var tli=document.getElementById("side-menu").getElementsByTagName("li");
            for(var i=0;i<tli.length;i++){
              tli[i].className=tli[i].id==n?"active":"";
              if(tli[i].id==m){
              	tli[i].className="active";
              }
            }
            tli[0].className="nav-header";
      }
  </script>
  <style>
	.animated {
    -webkit-animation-duration: 1.5s;
    -moz-animation-duration: 1.5s;
    animation-duration: 1.5s;
    margin-left: 3%;
    margin-right: 3%;
}
@-webkit-keyframes fadeInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(200px);
        -moz-transform: translateX(200px);
        transform: translateX(200px);
    }

    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -moz-transform: translateX(0);
        transform: translateX(0);
    }
}
.fadeInRight {
    -webkit-animation-name: fadeInRight;
    -moz-animation-name: fadeInRight;
}
  	</style>
</head>

<body>
    <div id="wrapper" style="height:100%">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"  id="gd">
                         <span>
                             <i class="fa fa-cogs" style="font-size:50px;color:#44b549;"></i>
                         </span>
                         <span class="text-muted text-xs block" style="margin:5px 0 5px 0"> <strong class="font-bold">名称：</strong><b style="color:#dddddd"><?php echo (session('username')); ?></b>
                             </span> 
                         <span class="text-muted text-xs block" style="margin-bottom:5px"> <strong class="font-bold">角色：</strong><b style="color:#DDDDDD"><?php echo ($role); ?></b>
                         </span>
                        </div>
                        <div class="logo-element">
                            <i class="fa fa-cogs" style="color:#1ab394;font-size:30px;"></i>
                        </div>
                    </li>
                    <?php if(is_array($navs)): $i = 0; $__LIST__ = $navs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li id="<?php echo ($so["id"]); ?>">
                        <a href="index.html"><i class="<?php if($so['name'] == 'Site'): ?>fa fa-home<?php elseif($so['name'] == 'Agent'): ?>fa fa-sitemap<?php elseif($so['name'] == 'User'): ?>fa fa-user<?php elseif($so['name'] == 'extent'): ?>fa fa-th-large<?php elseif($so['name'] == 'Function'): ?>fa fa-cubes<?php elseif($so['name'] == 'article'): ?>fa fa-credit-card<?php else: ?>fa fa-qrcode<?php endif; ?>" style="width:17px;text-align:center"></i> <span class="nav-label"><?php echo ($so['title']); ?></span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                        <?php if(is_array($navx)): $i = 0; $__LIST__ = $navx;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == $so['id']): ?><li onClick="setTab(<?php echo ($so["id"]); ?>,<?php echo ($vo["id"]); ?>)" id="<?php echo ($vo["id"]); ?>"><a href="<?php echo U($vo['name'].'/index',array('pid'=>$vo['id'],'level'=>3));?>" target="main"><?php echo ($vo['title']); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1" style="height: 100%;">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header" style="width:100%;background-color: #E6E6E7;">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                <div class="navbar-form-custom" id="pac">
                    <li>您好：<b style="color:#f60;"><?php echo (session('username')); ?></b> ，欢迎使用PigCMS！</li>    
                    <li><a href="/index.php" target="_blank" style="color:#888888;"> 访问首页</a></li>
                    <li><a href="/index.php?g=User&m=Index&a=index" target="_blank" style="color:#888888;">用户中心</a></li>
                    <li><a href="http://www.meihua.com/waphelp/router.html" target="_blank" style="color:red">微信WIFI路由器使用说明</a></li>
                    <li><a href="http://up.pigcms.cn" target="_blank" style="color:red">提交售后工单</a></li>
                    <li class="fa fa-sign-out"><a href="<?php echo U('Admin/logout');?>" style="color:#888888;">[退出]</a></li>
                </div>
        </div>


        </nav>
        </div>
        <div style="height:90%;margin-left: -30px;margin-right:-20px" class="alert animated fadeInRight">
            <table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="right" border="0">
                <tr>
                    <td align="right" style="height:100%"><iframe class="body_nbsp" id="main" name="main" style="width: 100%; HEIGHT: 100%" src="<?php echo U('System/main');?>" frameBorder=0></iframe></td>
                </tr>
            </table>
        </div>
        <div class="footer">
            <div class="pull-right">
                Copyright &copy; 2012-2013 小猪cms(PigCms)版权所有  
            </div>
        </div>
        </div>
    </div>
</body>
</html>