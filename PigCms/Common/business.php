<?php
/*业务逻辑 @xulinyang*/

function getExtsByFileType($fileType,$type='exts')
{
    $fileType=is_array($fileType)?$fileType:explode(',',$fileType);
    $list=array(
        'image'=>array('exts'=>'jpg,png,gif,jpeg,jpe','complete'=>'image/jpeg,image/gif,image/png'),
        'document'=>array('exts'=>'doc,docx,txt','complete'=>'application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,text/plain'),
        'table'=>array('exts'=>'xls,xlsx,csv','complete'=>'application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,text/comma-separated-values'),
        'video'=>array('exts'=>'mp4,mpeg,mpg,mpe,rmvb,qt,mov,3gp,avi,flv','complete'=>'video/mp4,video/mpeg,video/vnd.rn-realvideo,video/quicktime,video/3gpp,video/x-msvideo,application/octet-stream'),
        'audio'=>array('exts'=>'mp3,wav,wax,wma,wmv,ape','complete'=>'audio/mpeg,audio/x-wav,audio/x-ms-wax/audio/x-ms-wma,audio/x-ms-wmv,audio/ape'),
        'package'=>array('exts'=>'rar,zip','complete'=>'application/zip,application/octet-stream'),
    );
    $tmp=array();
    for($i=0;$i<count($fileType);$i++)
    {
        $tmp=array_merge($tmp,explode(',',$list[$fileType[$i]][$type]));
    }
    return implode(',',$tmp);
}

//单选或多选
function selectList($list,$val=null,$default=null,$markName=null)
{
    $enumList=C('ENUM_LIST');
    $list=is_array($list)?$list:$enumList[$list];
    $markName=isset($markName)?$markName:(is_array($val)?'checked':'selected');
    for($i=0;$i<count($list);$i++)
    {
        $tmp=$list[$i]['value'];
        if((is_array($default)&&in_array($tmp,$default))||$default===$tmp)
        {
            $list[$i]['mark']=!isset($val)?$markName:'';
            $list[$i]['default']='1';
        }
        else
        {
            $list[$i]['mark']='';
        }
    }
    if(isset($val))
    {
        for($i=0;$i<count($list);$i++)
        {
            $tmp=$list[$i]['value'];
            $list[$i]['mark']=((is_array($val)&&in_array($tmp,$val))||$val===$tmp)?$markName:'';
        }
    }
    return $list;
}

//时间格式
function format_time($time,$default='--',$format='sta')
{
    if(is_null($time))
        return $default;
    $format=($format=='sta')?'Y-m-d H:i':($format=='date'?'Y-m-d':'Y-m-d H:i:s');
    return date($format,$time);
}

//调试输出
function pre_echo($val,$exit=true)
{
    echo '<pre>';
    is_array($val)?print_r($val):print($val);
    echo '</pre>';
    if($exit)
        exit();
}

//对象转数组
function object_to_array($stdclassobject)
{
    $_array = is_object($stdclassobject) ? get_object_vars($stdclassobject) : $stdclassobject;
    foreach ($_array as $key => $value)
    {
        $value = (is_array($value) || is_object($value)) ? std_class_object_to_array($value) : $value;
        $array[$key] = $value;
    }
    return $array;
}

//存储数据格式
function format_bytes($size, $delimiter = '')
{
    $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
    for ($i = 0; $size >= 1024 && $i < 5; $i++) $size /= 1024;
    return round($size, 2) . $delimiter . $units[$i];
}

//判断一个时间是否在今天内
function isInToday($time)
{
    $list=explode('-',date('Y-m-d'));
    $today=mktime(0,0,0,$list[1],$list[2],$list[0]);
    $tmp=$time-$today;
    return ($tmp>=0)?true:false;
}

//以前
function time_before($time,$suffix="",$num=null)
{
    if(!isset($time)&&!isset($num))return "";
    $num=isset($num)?$num:time()-$time;
    $val='';
    if($num<60)$val=$num.'秒';
    if($num/60<60&&$num>=60)$val=floor($num/60).'分钟';
    if($num/3600<24&&$num/60>=60)$val=floor($num/3600).'小时';
    if($num/86400<30&&$num/3600>=24)$val=floor($num/86400).'天';
    if($num/2592000<12&&$num/86400>=30)$val=floor($num/2592000).'月';
    if($num>31536000&&$num/2592000>=12)$val=floor($num/31536000).'年';
    return $val.$suffix;
}

//年龄
function time_age($time)
{
    if(!isset($time))return '';
    $birth=date("Y-n-j",$time);
    list($by,$bm,$bd)=explode('-',$birth);
    $cm=date('n');
    $cd=date('j');
    $age=date('Y')-$by-1;
    if ($cm>$bm || $cm==$bm && $cd>$bd) $age++;
    return $age;
}

/**
 * 字符串截取，支持中文和其他编码
 * @static
 * @access public
 * @param string $str 需要转换的字符串
 * @param string $start 开始位置
 * @param string $length 截取长度
 * @param string $charset 编码格式
 * @param string $suffix 截断显示字符
 * @return string
 */
function _msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true)
{
    if(function_exists("mb_substr"))
        $slice = mb_substr($str, $start, $length, $charset);
    elseif(function_exists('iconv_substr')) {
        $slice = iconv_substr($str,$start,$length,$charset);
        if(false === $slice) {
            $slice = '';
        }
    }else{
        $re['utf-8']   = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
        $re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
        $re['gbk']    = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
        $re['big5']   = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
        preg_match_all($re[$charset], $str, $match);
        $slice = join("",array_slice($match[0], $start, $length));
    }
    return $suffix ? $slice.'...' : $slice;
}

//字符串截取
function short($str='',$length=10)
{
    $re['utf-8']   = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
    preg_match_all($re['utf-8'], $str, $match);
    $num=count($match[0]);
    //自动加上省略号
    if($num<=$length)
        return $str;
    $length-=3;
    return _msubstr($str,0,$length,'utf-8',true);
}

//预置regex验证
function validate_regex($value,$param)
{
    $list=C('REGEX_PATTERN');
    $param=!empty($list)&&isset($list[$param])?$list[$param]:$param;
    return preg_match($param,$value);
}

//验证范围
function validate_range($value,$range,$not=false)
{
    if(is_array($range)||strpos($range,',')!==false)
    {
        //取值范围
        list($min,$max)=is_array($range)?$range:explode(',',$range);
        if($not)
        {
            $result=false;
            if($min!==''&&!is_null($min)&&$value<$min)$result=true;
            if($max!==''&&!is_null($max)&&$value>$max)$result=true;
        }
        else
        {
            $result=true;
            if($min!==''&&!is_null($min)&&$value<$min)$result=false;
            if($max!==''&&!is_null($max)&&$value>$max)$result=false;
        }
    }
    else
    {
        $result=$not?$value!=$range:$value == $range;
    }
    return $result;
}

//验证码是否正确
function validate_code($code=null,$life_time=null,$name="vcode",$clear=true)
{
    $tmp=is_string($name)?session($name):$name;
    $time=isset($tmp['time'])?$tmp['time']:$tmp['send_time'];
    if(is_string($name)&&$clear)session($name,null);//清空验证码
    if(isset($life_time)&&(time()>$time+$life_time))
        return 1;
    if(isset($code)&&md5(strtolower($code))!=$tmp['code'])
        return 2;
    return 0;
}

//删除文件夹及其所有文件
function del_dir($dir,&$tmp=array())
{
    $dh = opendir($dir);
    $file = readdir($dh);
    while( $file)
    {
        if ( $file != "." && $file != ".." )
        {
            $fullpath = $dir . "/" . $file;
            is_dir($fullpath)?del_dir($fullpath,$tmp):array_push($tmp,array('result'=>unlink($fullpath),'type'=>'file','path'=>$fullpath));
        }
        $file = readdir($dh);
    }
    closedir( $dh );
    array_push($tmp,array('result'=>rmdir($dir),'type'=>'dir','path'=>$dir));
}

function img_url($path,$version='',$default='')
{
    //为空则取默认图片
    if(empty($path))
    {
        $defaults=C('IMAGE_DEFAULTS');
        return empty($defaults)||empty($defaults[$default])?$default:$defaults[$default];
    }
    //按照版本修改路径
    if(!empty($version))
    {
        $dirName=dirname($path);
        $imgName=basename($path);
        return $dirName.'/'.$version.'/'.$imgName;
    }
    return $path;
}

/**
 * 获取输入参数 支持过滤和默认值
 * 使用方法:
 * <code>
 * I('id',0); 获取id参数 自动判断get或者post
 * I('post.name','','htmlspecialchars'); 获取$_POST['name']
 * I('get.'); 获取$_GET
 * </code>
 * @param string $name 变量的名称 支持指定类型
 * @param mixed $default 不存在的时候默认值
 * @param mixed $filter 参数过滤方法
 * @param mixed $datas 要获取的额外数据源
 * @return mixed
 */
function I($name,$default='',$filter=null,$datas=null) {
    static $_PUT	=	null;
    if(strpos($name,'/')){ // 指定修饰符
        list($name,$type) 	=	explode('/',$name,2);
    }elseif(C('VAR_AUTO_STRING')){ // 默认强制转换为字符串
        $type   =   's';
    }
    if(strpos($name,'.')) { // 指定参数来源
        list($method,$name) =   explode('.',$name,2);
    }else{ // 默认为自动判断
        $method =   'param';
    }
    switch(strtolower($method)) {
        case 'get'     :
            $input =& $_GET;
            break;
        case 'post'    :
            $input =& $_POST;
            break;
        case 'put'     :
            if(is_null($_PUT)){
                parse_str(file_get_contents('php://input'), $_PUT);
            }
            $input 	=	$_PUT;
            break;
        case 'param'   :
            switch($_SERVER['REQUEST_METHOD']) {
                case 'POST':
                    $input  =  $_POST;
                    break;
                case 'PUT':
                    if(is_null($_PUT)){
                        parse_str(file_get_contents('php://input'), $_PUT);
                    }
                    $input 	=	$_PUT;
                    break;
                default:
                    $input  =  $_GET;
            }
            break;
        case 'path'    :
            $input  =   array();
            if(!empty($_SERVER['PATH_INFO'])){
                $depr   =   C('URL_PATHINFO_DEPR');
                $input  =   explode($depr,trim($_SERVER['PATH_INFO'],$depr));
            }
            break;
        case 'request' :
            $input =& $_REQUEST;
            break;
        case 'session' :
            $input =& $_SESSION;
            break;
        case 'cookie'  :
            $input =& $_COOKIE;
            break;
        case 'server'  :
            $input =& $_SERVER;
            break;
        case 'globals' :
            $input =& $GLOBALS;
            break;
        case 'data'    :
            $input =& $datas;
            break;
        default:
            return null;
    }
    if(''==$name) { // 获取全部变量
        $data       =   $input;
        $filters    =   isset($filter)?$filter:C('DEFAULT_FILTER');
        if($filters) {
            if(is_string($filters)){
                $filters    =   explode(',',$filters);
            }
            foreach($filters as $filter){
                $data   =   array_map_recursive($filter,$data); // 参数过滤
            }
        }
    }elseif(isset($input[$name])) { // 取值操作
        $data       =   $input[$name];
        $filters    =   isset($filter)?$filter:C('DEFAULT_FILTER');
        if($filters) {
            if(is_string($filters)){
                if(0 === strpos($filters,'/')){
                    if(1 !== preg_match($filters,(string)$data)){
                        // 支持正则验证
                        return   isset($default) ? $default : null;
                    }
                }else{
                    $filters    =   explode(',',$filters);
                }
            }elseif(is_int($filters)){
                $filters    =   array($filters);
            }

            if(is_array($filters)){
                foreach($filters as $filter){
                    if(function_exists($filter)) {
                        $data   =   is_array($data) ? array_map_recursive($filter,$data) : $filter($data); // 参数过滤
                    }else{
                        $data   =   filter_var($data,is_int($filter) ? $filter : filter_id($filter));
                        if(false === $data) {
                            return   isset($default) ? $default : null;
                        }
                    }
                }
            }
        }
        if(!empty($type)){
            switch(strtolower($type)){
                case 'a':	// 数组
                    $data 	=	(array)$data;
                    break;
                case 'd':	// 数字
                    $data 	=	(int)$data;
                    break;
                case 'f':	// 浮点
                    $data 	=	(float)$data;
                    break;
                case 'b':	// 布尔
                    $data 	=	(boolean)$data;
                    break;
                case 's':   // 字符串
                default:
                    $data   =   (string)$data;
            }
        }
    }else{ // 变量默认值
        $data       =    isset($default)?$default:null;
    }
    is_array($data) && array_walk_recursive($data,'think_filter');
    return $data;
}

