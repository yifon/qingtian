/**june***首页图片轮播***start***/
$(document).ready(function(){
    var num=$('.slide_span span').length;
    var i_mun=0;
    var timer_banner=null;
    $('.slide_ul li:gt(0)').hide();//页面加载隐藏所有的li 除了第一个   
//底下小图标点击切换
    $('.slide_span span').click(function(){
        $(this).addClass('slide_span_one')
               .siblings('span').removeClass('slide_span_one');
        var i_mun1=$('.slide_span span').index(this);
        $('.slide_ul li').eq(i_mun1).fadeIn('slow')
                               .siblings('li').fadeOut('slow');
        i_mun=i_mun1;
    });   
//左边箭头点击时切换
    $('.slide_left').click(function(){
        if(i_mun==0){
            i_mun=num
        }
        //大图切换
        $('.slide_ul li').eq(i_mun-1).fadeIn('slow')
                                   .siblings('li').fadeOut('slow');
        //小图切换
        $('.slide_span span').eq(i_mun-1).addClass('slide_span_one')
                   .siblings('span').removeClass('slide_span_one');
        i_mun--
    });

    //左边按钮移动到其上时更换背景图片
    $('.slide_left').mouseover(function(){     
        $('.slide_left').addClass('slide_left1');
    });
    //左边按钮移动到其上时还原背景图片
    $('.slide_left').mouseout(function(){      
        $('.slide_left').removeClass('slide_left1');
    });
//右边箭头点击时切换
    $('.slide_right').click(function(){
        move_banner()       
    });
    //右边按钮移动到其上时更换背景图片
    $('.slide_right').mouseover(function(){       
        $('.slide_right').addClass('slide_right1');
    });
    //右边按钮移动到其上时更换背景图片
    $('.slide_right').mouseout(function(){       
        $('.slide_right').removeClass('slide_right1');
    });   
//鼠标移动到幻灯片上时 显示左右切换案例
    $('.slide').mouseover(function(){
        $('.slide_left').show();
        $('.slide_right').show();
    });
//鼠标离开幻灯片上时 隐藏左右切换案例
    $('.slide').mouseout(function(){
        $('.slide_left').hide();
        $('.slide_right').hide();
    });   
    //自动播放函数
    function bannerMoveks(){
        timer_banner=setInterval(function(){
            move_banner()
        },4000)
    };
    bannerMoveks();//开始自动播放
    //鼠标移动到banner上时停止播放
    $('.slide').mouseover(function(){
        clearInterval(timer_banner);
    });
    //鼠标离开 banner 开启定时播放
    $('.slide').mouseout(function(){
        bannerMoveks();
    });
//banner 右边点击执行函数
   function move_banner(){
            if(i_mun==num-1){
                i_mun=-1
            }
            //大图切换
            $('.slide_ul li').eq(i_mun+1).fadeIn('slow')
                                       .siblings('li').fadeOut('slow');
            //小图切换
            $('.slide_span span').eq(i_mun+1).addClass('slide_span_one')
                       .siblings('span').removeClass('slide_span_one');
            i_mun++    
        }
})
/****june***首页图片轮播***end***/

// 选项卡部分
var tabOptionIndex2 = 0; 
 $(function() {  
     var $li_2 = $(".SmenuTitle ul li");
     $li_2.mouseover(function() {
         tabOptionIndex2 = $li_2.index(this);
         tabOptionHover2(tabOptionIndex2);
     });
     $("#assess_nav").children("li").unbind();
 });
 function tabOptionHover2(tabOptionIndex) {
    var $li_2 = $(".SmenuTitle ul li");
    for (var i = 0; i < $li_2.length; i++) {
         $li_2.eq(tabOptionIndex).addClass('SmenuTitleOn0').siblings().removeClass('SmenuTitleOn0');
         $(".SmenuCont").eq(tabOptionIndex).addClass('SmenuContentOn0').siblings().removeClass('SmenuContentOn0');
     }
 }

// 商品交易点击放大图片
$(function(){
    $('.small_img a').mouseover(function(){
        var $parent = $(this).parents('div.content_l');
        var index = $('.small_img a').index(this);
        var $imgscroll = $parent.find('.big_img');
        var newhref = $(this).attr('href');
        $imgscroll.find('a').attr('href',newhref);
        $imgscroll.find('img').eq(index).show().siblings().hide();
        $(this).addClass('current_b').siblings().removeClass('current_b');
    })
})


/*购买数量*/ 
$(function(){
    var amountMinus = $('.product-minus');
    var amountPlus = $('.product-plus');
    amountMinus.click(function(){
        var amount = $(this).parent().find('.product-amout-text');
        if (amount.val() > 0) {
            amount.val(amount.val()-1);
        };
    });
     amountPlus.click(function(){
        var amount = $(this).parent().find('.product-amout-text');
        amount.val(Number(amount.val())+1);
    });
})
