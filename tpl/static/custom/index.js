$(function()
{
    $('.uploader_list').each(function(index,element)
    {
        var config={server:uploaderServer,formData:uploadFormData};
        $(element).data('uploadImgList',new uploadImgList($(element),config));
    });
})


function uploadImgList($jq,config)
{
    var id=$jq.attr('field_id'),fileSize=parseInt($jq.attr('file_size')),fileNum=parseInt($jq.attr('file_num')),fileCount=0;
    config['server']=config['server']?config['server']:'';
    config['formData']=config['formData']?config['formData']:{};
    config['formData']['field_id']=id;
    var uploader=WebUploader.create({
        server:config.server,
        auto:true,
        runtimeOrder:'html5',
        pick:{id:'#uploader_pick_'+id,innerHTML:'',multiple:(fileNum>1)},
        accept:{mimeTypes:'image/*',extensions:'png,jpg,jpeg,gif',title:'Image'},
        chunked:true,
        compress:false,//安卓版微信内置浏览器不支持压缩
        fileNumLimit:fileNum,
        fileSizeLimit:fileNum*(fileSize*1024*1024),
        fileSingleSizeLimit:fileSize*1024*1024,
        formData:config.formData
    });

    var errorInfo=
    {
        'Q_EXCEED_NUM_LIMIT':'文件数量不能超出'+fileNum+'个',
        'F_EXCEED_NUM':'文件数量不能超出'+fileNum+'个',
        'F_EXCEED_SIZE':'文件大小不能超出'+fileSize+'MB',
        'Q_EXCEED_SIZE_LIMIT':'文件大小不能超出'+fileSize+'MB',
        'Q_TYPE_DENIED':'文件类型不合法',
        'F_TYPE_DENIED':'文件类型不合法',
        'F_DUPLICATE':'图片重复'
    };

    //文件加入队列
    uploader.onFileQueued = function(file)
    {
        var item=$('<div id="uploader_item_'+file.id+'" class="uploader_item"><div class="progress_box"></div><div class="close_box"><div class="icon-close"></div></div></div>');
        //取消并删除
        item.find('.close_box').click(function()
        {
            uploader.removeFile(file,true);
        });
        $jq.find('.uploader_add').before(item);
        uploader.makeThumb( file, function( error, ret ) {
            if ( error) {
                item.append('<div class="upload_tip">无法预览</div>');
            } else {
                item.append('<img alt="" src="' + ret + '" />');
            }
        });
        fileCount++;
        if(fileCount>=fileNum)
            $jq.find('.uploader_add').hide();
    }

    //文件移出队列
    uploader.onFileDequeued=function(file)
    {
        var item=$('#uploader_item_'+file.id);
        item.remove();
        fileCount--;
        if(fileCount<fileNum)
            $jq.find('.uploader_add').show();
        eachVal();
    }

    //加入队列错误
    uploader.onError=function(err)
    {
        layer.open({
            style: 'border:none; background-color:rgba(0,0,0,0.6); color:#fff;',
            content:errorInfo[err]?errorInfo[err]:'选择错误'+err,
            time:2
        })
    }

    //开始上传
    uploader.onUploadStart=function(file)
    {
        var item=$('#uploader_item_'+file.id);
        item.find('.progress_box').show();
        createSpin(item.find('.progress_box').get(0));
    }

    //上传成功
    uploader.onUploadSuccess=function(file,response)
    {
        var item=$('#uploader_item_'+file.id);
        item.find('.progress_box').hide();
        item.find('.spinner').remove();
        if(!response||response['status']!='1')
        {
            layer.open({
                style: 'border:none; background-color:rgba(0,0,0,0.6); color:#fff;',
                content:file.name+':'+(response['info']?response['info']:'未知错误'),
                time:2
            })
            file.setStatus('error',(response['info']?response['info']:'未知错误'));
            uploader.removeFile(file,true);
        }
        else
        {
            item.attr('file_path',response['data']);
            eachVal();
        }
    }

    uploader.uploadError=function(file,reason)
    {
        layer.open({
            style: 'border:none; background-color:rgba(0,0,0,0.6); color:#fff;',
            content:'图片上传错误('+reason+')',
            time:2
        })
        uploader.removeFile(file,true);
    }

    //创建加载动画
    function createSpin(element)
    {
        var opts = {
            lines: 13, // The number of lines to draw
            length: 7, // The length of each line
            width: 4, // The line thickness
            radius: 10, // The radius of the inner circle
            corners: 1, // Corner roundness (0..1)
            rotate: 0, // The rotation offset
            color: '#fff', // #rgb or #rrggbb
            speed: 1, // Rounds per second
            trail: 60, // Afterglow percentage
            shadow: false, // Whether to render a shadow
            hwaccel: false, // Whether to use hardware acceleration
            className: 'spinner', // The CSS class to assign to the spinner
            zIndex: 2e9, // The z-index (defaults to 2000000000)
            top: 'auto', // Top position relative to parent in px
            left: 'auto' // Left position relative to parent in px
        };
        var spinner = new Spinner(opts).spin(element);
    }

    //遍历值
    function eachVal()
    {
        var str='';
        $jq.find('.uploader_item').each(function (index,element) {
            var path=$(element).attr('file_path');
            if(path&&path!='')
                str+=path+',';
        });
        str=str.replace(/\,$/,'');
        $jq.find('.uploader_input').val(str);
    }
}