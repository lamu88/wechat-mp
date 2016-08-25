<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/common.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/color.css" media="all">
<title><?php echo ($metaTitle); ?></title>	
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<!-- Mobile Devices Support @begin -->
		<meta content="telephone=no, address=no" name="format-detection">
		<meta name="apple-mobile-web-app-capable" content="yes"> <!-- apple devices fullscreen -->
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!-- Mobile Devices Support @end -->
	<style type="text/css">
  #selecttable,#selecttime{display: inline-block;
		-webkit-appearance: button;
		border: 1px solid #dedede;
		border-radius: 12px;
		padding: 8px;
		background: -webkit-gradient(linear, 0 0, 0 100%, from(#fff), to(#f2f2f2));
		background-size: auto 23px, auto auto;
		outline: none;
		}
		#selecttime{margin-left: 7px;}
	</style>
</head>
<script type="text/javascript">	
var takeaway="<?php echo ($takeaway); ?>";
</script>
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/static/repastnew/css/datePicker.css">
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/showdialog.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/jquery-1-3-2-min.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/jquery-datePicker-min.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/repastnew/js/bookinfo.js"></script>

<body onselectstart="return true;" ondragstart="return false;">
	<div data-role="container" class="container bookInfo">
	<form <?php if($takeaway == 2): ?>action="<?php echo U('Repast/saveOrderAndToPay', array('token'=>$token, 'cid'=>$cid, 'takeaway'=>$takeaway,'wecha_id'=>$wecha_id));?>" <?php else: ?> action="<?php echo U('Repast/preMealInfo', array('token'=>$token, 'cid'=>$cid, 'takeaway'=>$takeaway,'wecha_id'=>$wecha_id));?>"<?php endif; ?> method="post" id="form1">
			<input type="hidden" autocomplete="off" value="<?php echo ($takeaway); ?>" name="takeaway" id="takeaway">
			<input type="hidden" value="<?php echo ($cid); ?>" name="mycid">
			<input type="hidden" autocomplete="off" value="0" id="is_submit">
			<section data-role="body">
				<div class="info"  <?php if($takeaway == 2): ?>style="display:none;"<?php endif; ?>>
				<div>预订信息</div>
				<ul class="info">
					<li>
						<span>就餐时间</span>
						<div>
							<input type="text" id="date" name="date" value="" placeholder=" 年 - 月 - 日" class="M it date-pick dp-applied" readonly="true"><a href="#" class="dp-choose-date" title="选择日期" style="display: none;">选择日期</a> 
							<?php if($dcnamearr AND is_array($dcnamearr)): ?><select name="time" id="selecttime" class="S mr">
							    <option value="">请选择时间段</option>
								<?php if(is_array($dcnamearr)): $i = 0; $__LIST__ = $dcnamearr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><option value="<?php echo ($item['id']); ?>"><?php echo ($item['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							  </select>
							  <input type="hidden" name="timetype" id="timetype" value="1">
							<?php else: ?>
							<input id="time" type="text" name="time" value="" placeholder=" 时 / 分" class="S time" onclick="popup()" readonly="true">
					          <input type="hidden" name="timetype" id="timetype" value="2"><?php endif; ?>
						</div>				
					</li>
					<li>
						<span>就餐人数</span>
						<label> <input id="num" type="number" name="number" value="" placeholder=" 就餐人数" class="L"></label>
					</li>
				 </ul>
			</div>

			<div class="info">
				<div>顾客信息</div>
				<ul class="info">
					<li>
						<span>手机号码</span>
						<label>
							<input id="tel" type="tel" placeholder=" 手机号码" name="youtel" class="L" <?php if(!empty($WechaidInfo)): ?>value="<?php echo ($WechaidInfo['youtel']); ?>"<?php else: ?>value=""<?php endif; ?>>
						</label>	
					</li>
					<li>
						<span>顾客姓名</span>
						<label> 
						<input type="text" placeholder=" 姓名" id="youname" class="S mr" name="youname" <?php if(!empty($WechaidInfo)): ?>value="<?php echo ($WechaidInfo['youname']); ?>"<?php else: ?>value=""<?php endif; ?>>
						<span class="radio"><input type="radio" name="yousex" value="1" <?php if(empty($WechaidInfo) OR $WechaidInfo['yousex'] == 1): ?>checked="checked"<?php endif; ?>></span><span class="radiotitle sex">先生</span>
						<span class="radio"><input type="radio" name="yousex" value="0" <?php if(!empty($WechaidInfo) AND $WechaidInfo['yousex'] == 0): ?>checked="checked"<?php endif; ?>></span><span class="radiotitle sex">女士</span></label>				
					</li>
					<?php if($DishC['offtable'] == 0): ?><li>
					<span>餐桌选择</span>
						<div class="radiolist">
						<select name="youtable" id="selecttable" class="S mr" onchange="getThisinfo(this.value)">
							<?php if(empty($table)): ?><option value="0">暂时没有餐桌可用</option>
							<?php else: ?>
							<option value="0">请选择餐桌</option>
							<?php if(is_array($table)): $i = 0; $__LIST__ = $table;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i; if($item['isbox'] == 1): ?><option value="<?php echo ($item['id']); ?>" <?php if($tid > 0 AND $tid == $item['id']): ?>selected="selected"<?php endif; ?>>包厢：<?php echo ($item['name']); ?> (<?php echo ($item['num']); ?>座)</option>
								<?php else: ?>
								<option value="<?php echo ($item['id']); ?>" <?php if($tid > 0 AND $tid == $item['id']): ?>selected="selected"<?php endif; ?>>大厅：<?php echo ($item['name']); ?> (<?php echo ($item['num']); ?>座)</option><?php endif; endforeach; endif; else: echo "" ;endif; endif; ?>
                        </select>
						<input type="hidden" id="alreadytime" name="alreadytime" value="0">
						</div>	
						<span id="tablestips" style="width: 85%;margin-left: 80px;color:red;line-height: 25px;display: none;"></span>
					</li><?php endif; ?>

					<?php if($takeaway == 0 AND $DishC['subscription'] > 0): ?><li><p>注：商家将收取 <?php echo ($DishC['subscription']); ?>元 餐桌预订金</p></li><?php endif; ?>
				<?php if($DishC['nowpay'] != 1 AND $takeaway == 2 AND $DishC['advancepay'] > 0): ?><li style="font-size: 15px;height: 90px;" id="payoftype">
				    <span>支付方式：</span>
					<label><input type="radio" name="isallpay" value="1" checked="checked">立刻全额支付 </label><br/>
					<label><input type="radio" name="isallpay" value="0">先支付 <?php echo ($DishC['advancepay']); ?> 元就餐预定金（余下的饭后支付）</label>
					</li><?php endif; ?>
					<li class="textarea">
						<span>给商户留言</span>
						<label>
							<textarea name="youremark" placeholder=" 给商户留言"></textarea>
						</label>				
					</li>
				</ul>
			</div>
		</section>

		<footer data-role="footer">
				<nav class="g_nav">
					<div class="footer">
						<?php if($takeaway == 2): ?><a  href="<?php echo U('Repast/sureOrder', array('token' => $token, 'wecha_id' => $wecha_id, 'cid' =>$cid,'orid'=>$orid));?>" class="btn bigfont gray">上一步</a>
						<?php else: ?>
						 <a href="javascript:window.history.back();" class="btn bigfont gray">上一步</a><?php endif; ?>
						<input type="submit" value="下一步" id="btn_submit" form="form1" class="btn bigfont orange" onclick="return submit_F()">
					</div>
				</nav>	
			</footer>
			</form>

			<div class="layer transparent"> </div>
			<div class="layer popup">
				<div class="timestr">营业时间<br><?php echo ($DishC['stimestr']); ?>~<?php echo ($DishC['etimestr']); ?>
				<?php if(isset($DishC['stime2str'])): ?>,<?php echo ($DishC['stime2str']); ?>~<?php echo ($DishC['etime2str']); endif; ?></div>
				<div class="dialogX">	
						<div class="line">
							<span onclick="hourUp();"><label class="icon up"></label></span>
							<span class="colon">&nbsp; </span>
							<span onclick="minuteUp();"><label class="icon up" id="minute_up"></label></span>
						</div>
						<div class="line">
							<span class="hour"><input id="hour" value="12" type="text" readonly="true"></span>
							<span class="colon">:</span>
							<span class="time"><input id="minute" value="15" type="text" readonly="true"></span>
						</div>
						<div class="line noborder">
							<span onclick="hourDown();"> <label class="icon down"></label></span>
							<span class="colon">&nbsp; </span>
							<span onclick="minuteDown();"><label class="icon down" id="minute_down"></label></span>
						</div>
						<div class="btn">
							<a class="cancel" href="javascript:cancel();">取消</a>
							<a href="javascript:sureTime();">确定</a>
						</div>
				</div>			
			</div>
		</div>		
	
<script type="text/javascript">	
function getBusinessHours(){
	var businessHours = [{"stime":"<?php echo ($DishC['stimestr']); ?>","etime":"<?php echo ($DishC['etimestr']); ?>"}<?php if(isset($DishC['stime2str'])): ?>,{"stime":"<?php echo ($DishC['stime2str']); ?>","etime":"<?php echo ($DishC['etime2str']); ?>"}<?php endif; ?>];
	return   businessHours
}		

window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"<?php echo ($company['id']); ?>",
            "imgUrl": "<?php echo ($company['logourl']); ?>", 
            "timeLineLink": "<?php echo $f_siteUrl . U('Repast/dishMenu',array('token' => $token,'cid'=>$cid));?>",
            "sendFriendLink": "<?php echo $f_siteUrl . U('Repast/dishMenu',array('token' => $token,'cid'=>$cid));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };

/**获取餐桌信息****/
var takeaway="<?php echo ($takeaway); ?>";
takeaway=parseInt(takeaway);
function getThisinfo(tid){
    tid=parseInt(tid);
	var timetype=$.trim($('#timetype').val());
	timetype=parseInt(timetype);
	var datas={
	    tid:tid,
		timetype:timetype,
		datee:$.trim($('#date').val())
	};
	if(timetype==1){
	   datas.time=$('#selecttime').val();
	}else{
	   datas.time=$('#time').val();
	}
	datas.time=$.trim(datas.time);
	if((takeaway==0) && (!datas.datee || !datas.time || datas.time=='0_0-0')){
		document.getElementById("selecttable").options[0].selected = true;
	    alert('请选好就餐时间！');
		return false;
	}
	if(tid>0){
	 $.get("<?php echo U('Repast/getTableinfo',array('token' => $token,'cid'=>$cid,'takeaway'=>$takeaway,'wecha_id'=>$wecha_id));?>",datas,function(ret){
	     if(ret.error==0){ 
			   if(ret.msg==11){
				 var tbtips='此餐桌正在被 '+ret.data.name;
				 tbtips+=ret.data.sex==1 ? ' 先生' : ' 女士';
			     tbtips+='使用，就餐开始时间：'+ret.data.reservetimestr;
			   }else{
				 var tbtips='此餐桌已经被 '+ret.data.name;
				 tbtips+=ret.data.sex==1 ? ' 先生' : ' 女士';
			     tbtips+='预定了，预定时间：'+ret.data.reservetimestr;
			   }
			   if(timetype==2 && takeaway==0){
				  $('#alreadytime').val(ret.data.reservetime);
			      tbtips+='<br/>此时间前后3小时内将不接受此餐桌的预定';
			   }else{
			      $('#alreadytime').val('0');
			   }
			$('#tablestips').html(tbtips).show();
		 }else {
		    $('#tablestips').html('').hide();
			$('#alreadytime').val('0');
			if(ret.error==1){
			  alert(ret.msg);
			}
		 }
	 },'json');
	
	}else{
	   $('#tablestips').html('').hide();
	   $('#alreadytime').val('0');
	}
}
<?php if($DishC['offtable'] == 0): ?>var tableid=$.trim($('#selecttable').val());
tableid=parseInt(tableid);
if(tableid>0){
  getThisinfo(tableid);
}
<?php if($tid > 0): ?>getThisinfo(<?php echo ($tid); ?>);<?php endif; endif; ?>
</script>
<?php echo ($shareScript); ?>
</body>
</html>