$(function()
{
    $('.img_box').each(function(index,element)
    {
        new createBox($,element);
    });
})

function createBox($,element)
{
    var $jq=$(element);
    $jq.width($jq.parent().width());
    var imgs=[];
    $jq.find('[data-img]').each(function(index2,element2){
        imgs.push($(element2).attr('data-img'));
    });
    var ww=$jq.width();
    var liWidth=Math.floor((ww/(imgs.length<3?imgs.length:3))-4);
    $jq.find('.img_item').width(liWidth);
    $jq.find('.img_item').click(function()
    {
        var current=$(this).index();
        var html=$('<div class="img_box_popup"><div class="img_box_shape"></div><ul></ul></div>');
        $('body').append(html);
        var popupWidth=html.width();
        var popupHeight=html.height();
        var $ul=html.find('ul');
        $ul.width(imgs.length*popupWidth);
        for(var i=0;i<imgs.length;i++)
        {
            var li=$('<li><img src="'+imgs[i]+'"></li>');
            li.width(popupWidth);
            li.height(popupHeight);
            html.find('ul').append(li);
            loadingImg(li);
        }
        $ul.css({'margin-left':-(current*popupWidth)});
        function loadingImg($li)
        {
            var $img=$li.find('img');
            if($img.get(0).complete)
            {
                $img.css({'margin-top':(popupHeight-$img.height())/2});
                $img.fadeIn(400,function()
                {
                    $img.css({'margin-top':(popupHeight-$img.height())/2});
                });
            }
            else
            {
                console.log('onload');
                var sp=createSpin($li.get(0));
                $img.get(0).onload=function()
                {
                    $img.css({'margin-top':(popupHeight-$img.height())/2});
                    $img.fadeIn(400,function()
                    {
                        $img.css({'margin-top':(popupHeight-$img.height())/2});
                    });
                    sp.stop();
                }
            }
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
            return new Spinner(opts).spin(element);
        }
        touch.on(html.get(0), 'touchstart', function(ev){
            ev.preventDefault();
        });
        touch.on(html.get(0), 'tap', function(ev){
            html.remove();
        });
        touch.on(html.get(0), 'swipeleft', function(ev){
            if(current>=imgs.length-1)
                return false;
            current++;
            switcher();
        });
        touch.on(html.get(0), 'swiperight', function(ev){
            if(current<=0)
                return false;
            current--;
            switcher();
        });
        function switcher()
        {
            $ul.animate({'margin-left':-(current*popupWidth)},400);
        }
    });
}