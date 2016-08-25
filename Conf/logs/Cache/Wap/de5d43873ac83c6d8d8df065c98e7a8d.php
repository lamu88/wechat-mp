<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title>一键拨号</title>
<style type="text/css">
body,a {margin:0;padding:0;}
body {background:#222;font: bold 18px/20px "Helvetica Neue",Helvetica,Arial,sans-serif;}
a, a:visited {color:#eee;text-decoration:none;font: bold 36px/48px "Helvetica Neue",Helvetica,Arial,sans-serif;}
div.tel {color:#A7EC21;margin-top:100px;text-align:center;font}
</style>
</head>
<body onload="window.location.href='tel:<?php echo ($tel); ?>'">
<div class="tel">
	点击号码一键拨号<br /><br />
	<a id="tel" href="tel:<?php echo ($tel); ?>" title="点击号码一键拨号" ><?php echo ($tel); ?></a>
</div>
</body>
</html>