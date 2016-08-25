<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
 <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo $apikey;?>"></script>
 <link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/cymain.css" />
 <script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
</head>
<body style="background:#fff">
<?php if(!isset($_GET['error'])){ ?>
<div></div>
<div style="background:#fefbe4;border:1px solid #f3ecb9;color:#993300;padding:10px;width:90%;margin:40px auto 5px auto;">选中文件后点击上传按钮或者点击“从素材库选择”直接从已上传文件中选择</div>
<form enctype="multipart/form-data" action="" id="thumbForm" method="POST" style="font-size:14px;padding:30px 20px 10px 20px;">
<p id="picsize" style="margin-bottom:20px"></p>
<p><div><div style="font-size:14px;">选择本地文件：<br><br><input type="file" style="width:80%;border:1px solid #ddd" name="photo"></input></div><div style="padding:20px 0;text-align:center;"><input id="submitbtn" name="doSubmit" type="submit" class="btnGreen" value="上传" onclick="this.value='上传中...'"></input> <input name="btnchoose" onclick="location.href='<?php echo U('Attachment/my',array('type'=>'my'));?>'" type="button" class="btnGreen" value="从素材库选择" /></div></p>
<input type="hidden" value="" id="width" name="width" /><input type="hidden" value="" id="height" name="height" />
</form>
<script>
    var origin = artDialog.open.origin;
if (art.dialog.data('width')) {
    var getid = origin.document.getElementsByName('radios');
    if(getid && art.dialog.data('domid')=='radiobg'){
        for(var i=0;i<getid.length;i++){
            if(getid[i].checked){
                if(getid[i].value == 1){
                    $('#picsize').html('<span style="color:#930; font-size:14px;margin-bottom:20px;">图片最佳尺寸：宽640px 高400px</span>');
                } else if(getid[i].value == 2){
                    $('#picsize').html('<span style="color:#930; font-size:14px;margin-bottom:20px;">图片最佳尺寸：宽640px 高1008px</span>');
                }else{
                    $('#picsize').html('<span style="color:#930; font-size:14px;margin-bottom:20px;">图片最佳尺寸：宽640px 高180px</span>');
                }

            }
        }
        //alert(getid.length);
    }else{
        document.getElementById('width').value = art.dialog.data('width');// 获取由主页面传递过来的数据
        document.getElementById('height').value = art.dialog.data('height');
        if(document.getElementById('height').value){
            $('#picsize').html('<span style="color:#930; font-size:14px;margin-bottom:20px;">图片最佳尺寸：宽'+document.getElementById('width').value+'px 高'+document.getElementById('height').value+'px</span>');
        }else{
            $('#picsize').html('<span style="color:red; font-size:14px;margin-bottom:20px;">图片宽高不限</span>');
        }
    }

};
</script>
<?php }else{ ?>
<div style="text-align:center;line-height:140px;font-size:14px;"> <img src="/tpl/User/default/common/images/export.png" align="absmiddle" /> <?php if($_GET['error']==0){echo '上传成功';}else{echo $_GET['msg'];} ?> </div>
<script>
var domid=art.dialog.data('domid');
// 返回数据到主页面
function returnHomepage(url){
	var origin = artDialog.open.origin;
	var dom = origin.document.getElementById(domid);
    var dom_head = origin.document.getElementsByName('radios');
    for(var i = 1;i <= dom_head.length;i++){
        if(origin.document.getElementById('radiov'+i).checked && domid == 'touxiang'){
            origin.document.getElementById('head'+i).src=url;
            break;
        }
        if(origin.document.getElementById('radiov'+i).checked && domid == 'radiobg'){
            origin.document.getElementById('backbg'+i).src=url;
            origin.document.getElementById('backbg'+i).style.display='block';
            break;
        }
    }
	var domsrcid=domid+'_src';
	if(origin.document.getElementById(domsrcid)){
	origin.document.getElementById(domsrcid).src=url;
	}
	dom.value=url;
	setTimeout("art.dialog.close()", 1500 )
}
<?php if($_GET['error']==0){ ?>
returnHomepage('<?php echo $_GET['msg']; ?>');
<?php } ?>
</script>
<?php } ?>
</body>
</html>