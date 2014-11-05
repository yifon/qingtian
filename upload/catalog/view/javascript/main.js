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

/*************/
 /*悬浮购物车*/
 $(function() {
     $(".count").each(function() {
         var $reduce = $(this).children('.cart_reduce');
         var $countInput = $(this).children('input');
         var $add = $(this).children('.cart_add');
         $add.click(function() {
             //绑定添加按钮事件
             var val = parseInt($countInput.val()) + 1;
             $countInput.val(val);
             getTotal()
         });

         $reduce.click(function() {
             //绑定减少按钮事件
             var val = parseInt($countInput.val()) - 1;
             if (val < 1) {
                 val = 1;
             }
             $countInput.val(val);
             getTotal()
         })
     })

     function getTotal() {
         //设置总价
         var $items = $("#cart_table").find("tr");
         var $item;
         var len = $items.length;
         var num, price, total = 0,
             totalNum = 0;
         for (var i = 0; i < len; i++) {
             $item = $items.eq(i);
             num = $item.find("input.count_input").val();
             price = $item.find("div.cart_click").find("em").text();
             total += num * price;
             totalNum += parseInt(num);
         }
         total = total.toFixed(2);
         $("#pro_num").text(totalNum);
         $("#pro_count").text(totalNum);
         $("#priceTotal").text("￥" + total);
         $("#priceAll").text("￥" + total);
         return total;

     }

     $(".cart_delete").children("img").click(function() {
         var c = confirm("确定删除？");
         if (c == false) {
             return;
         }
         $(this).parents("tr").remove();
         getTotal();
         isEmpty();
     })

     $("#cart_icon").click(function() {
         showCart();
     })
     getTotal();
 })

 function closeCart() {
     $("#cart").hide();
 }

 function showCart() {
     isEmpty();
     $("#cart").show();
 }

 function isEmpty() {
     var num = $("#cart_table").find("tr").length;
     if (num > 0) {
         $("#cart").show();
         $("#fullcart").show();
         $("#emptycart").hide();
     } else {
         $("#cart").show();
         $("#fullcart").hide();
         $("#emptycart").show();
     }
 }
 /********首页购物车加减***************************june*/
 /*$(function(){
   $(".num-each").each(function(index){ //取得整个页面的input值
$(this).attr("value","0");
 }); 
})
 */
 $(function() {
     $(".num-option").click(function() {
         var num = 0;
         num = $(this).parent().find(".num-each").val();
         num = parseInt(num, 10);
         if ($(this).hasClass("minus")) {
             if (num >= 1) {
                 num--;
             }
         } else {
             //缺少获取仓库的数量
             num++;
         }
         $(this).parent().find(".num-each").val(num);
     })
 })
 function getBuyNum(target) {
     var num = $(target).next(".buyNum").find(".num-each").val();
     num = parseInt(num, 10);
     return num;
 }
 /******************首页购物车加减******june*****end******************/
 /***产品详情页中图片预览向左向右轮播部分*****june*******start****/
$(function(){
    var page = 1;
    var i = 5; //每版放5个图片
    // 点击向后按钮
    $("#right-choice").click(function(){
        var $parent = $(this).parents("div.left_banner");//寻找当前元素的父元素
        var $v_out = $parent.find("div.i-list");//视频外围
        var $v_show = $parent.find("div.i-bot-list");//视频播放区域
        var v_width = $v_out.width();//外围宽度
        var len = $v_show.find("li").length; //图片数量
        var page_count = Math.ceil(len / i) ; //页面数目
         if( !$v_show.is(":animated") ){    //判断“视频内容展示区域”是否正在处于动画
              if( page == page_count ){  //已经到最后一个版面了,如果再向后，必须跳转到第一个版面。
                $v_show.animate({ left : '0px'}, "slow"); //通过改变left值，跳转到第一个版面
                page = 1;
              }else{
                $v_show.animate({ left : '-='+(v_width-38)}, "slow");  //通过改变left值，达到每次换一个版面
                page++;
             }
         }
    });
    //点击向前按钮
    $("#left-choice").click(function(){
        var $parent = $(this).parents("div.left_banner");
        var $v_out = $parent.find("div.i-list");
        var $v_show = $parent.find("div.i-bot-list");
        var v_width = $v_out.width();
        var len = $v_show.find("li").length;
        var page_count = Math.ceil(len / i);
        if(!$v_show.is(":animated")){
            if (page == 1) {
                $v_show.animate({left : "-="+(v_width-37)*(page_count-1)},"slow");
                page = page_count;
            }else{
                $v_show.animate({left : '+='+(v_width-36)},"slow");
                page--;
            }
        }
    });
})
/***产品详情页中图片预览向左向右轮播部分*****june*********end*****/
/*********************** 产品页“搭配、套餐”的切换******june******start*/
 var tabOptionIndex4 = 0;
 $(function() {
     $("#tab4 .daOption span").mouseover(function() {
         tabOptionIndex4 = $(".daOption span").index(this);
         tabOptionHover4(tabOptionIndex4);
     });
 });
 function tabOptionHover4(tabOptionIndex) {
     var  $li_4 = $(".daOption");
     for (var i = 0; i < $li_4.length; i++) {
         $li_4.eq(tabOptionIndex).addClass('daOn0').siblings().removeClass('daOn0');
         $(".da-0").eq(tabOptionIndex).addClass('daOn-0').siblings().removeClass('daOn-0');
     }
 }
 /*********************** 产品详情页“搭配、套餐”的切换******june******end*/
  /*********************** 产品详情页“商品详情、评价、成交记录”的切换******june******start*/
 var tabOptionIndex5 = 0;
 $(function() {
     $(".proOption span").mouseover(function() {
         tabOptionIndex5 = $(".proOption span").index(this);
         tabOptionHover5(tabOptionIndex5);
     });
 });
 function tabOptionHover5(tabOptionIndex) {
     var $li_5 = $(".proOption");
     for (var i = 0; i < $li_5.length; i++) {
         $li_5.eq(tabOptionIndex).addClass('proOn0').siblings().removeClass('proOn0');
         $(".pro-0").eq(tabOptionIndex).addClass('proOn-0').siblings().removeClass('proOn-0');
     }
 }


 /*********************** 产品详情页“商品详情、评价、成交记录”的切换******june******end*/

 // 作品欣赏套餐、搭配切换***bing***start
  // var tabOptionIndex6 = 0;
 $(function() {
     $("#tab6 .daOption span").mouseover(function() {
         tabOptionIndex6 = $(".daOption span").index(this);
         tabOptionHover6(tabOptionIndex6);
     });
 });
 function tabOptionHover6(tabOptionIndex) {
     var  $li_6 = $(".daOption");
     for (var i = 0; i < $li_6.length; i++) {
         $li_6.eq(tabOptionIndex).addClass('daOn0').siblings().removeClass('daOn0');
         $(".da-0").eq(tabOptionIndex).addClass('daOn-0').siblings().removeClass('daOn-0');
     }

 }
 /***********首页最顶端图片向左向右切换**********bing********start************/
$(function(){
    var page = 1;
    var i = 3; //每版放3个图片

    // 点击向后按钮
    $("#next_pic").click(function(){
        var $parent = $(this).parents("div.jscroll");//寻找当前元素的父元素
        var $v_out = $parent.find("div.o-list");//视频外围
        var $v_show = $parent.find("div.v-bot-list");//视频播放区域
        var v_width = $v_out.width();//外围宽度
        var len = $v_show.find("li").length; //图片数量
        var page_count = Math.ceil(len / i) ; //页面数目
         if( !$v_show.is(":animated") ){    //判断“视频内容展示区域”是否正在处于动画
              if( page == page_count ){  //已经到最后一个版面了,如果再向后，必须跳转到第一个版面。
                $v_show.animate({ left : '0px'}, "slow"); //通过改变left值，跳转到第一个版面
                page = 1;
              }else{
                $v_show.animate({ left : '-='+v_width }, "slow");  //通过改变left值，达到每次换一个版面
                page++;
             }
         }

    });

    //点击向前按钮
    $("#prev_pic").click(function(){
        var $parent = $(this).parents("div.jscroll");
        var $v_out = $parent.find("div.o-list");
        var $v_show = $parent.find("div.v-bot-list");
        var v_width = $v_out.width();
        var len = $v_show.find("li").length;
        var page_count = Math.ceil(len / i);
        if(!$v_show.is(":animated")){
            if (page == 1) {
                $v_show.animate({left : "-="+v_width*(page_count-1)},"slow");
                page = page_count;
            }else{
                $v_show.animate({left : '+='+v_width},"slow");
                page--;
            }
        }
    });

    $("#img1").click(function(){

        var $parent = $(this).parents("div.right_product");
        var $v_out = $parent.find("div.pro");
        var $v_show = $parent.find("div.pro2");
        var v_height = $v_out.height();
        var len = $v_show.find("li").length;
        var page_count = Math.ceil(len / i);
        if(!$v_show.is(":animated")){
            if(page==page_count){
                 $v_show.animate({top : '0px'},"slow");
                page=1;
            }else{
                 $v_show.animate({top : '-='+v_height},"slow");
                page++;
            }
        }
    });

      $("#img2").click(function(){
        var $parent = $(this).parents("div.right_product");
        var $v_out = $parent.find("div.pro");
        var $v_show = $parent.find("div.pro2");
        var v_height = $v_out.height();
        var len = $v_show.find("li").length;
        var page_count = Math.ceil(len / i);
        if(!$v_show.is(":animated")){
            if(page==1){
                 $v_show.animate({top :  "-="+v_height*(page_count-1)},"slow");
                page=page_count;
            }else{
                 $v_show.animate({top : '+='+v_height},"slow");
                page--;
            }
        }
    });

})


// 收缩--产品列表
 $(function() {
     $('.current2').find('h4').toggle(function() {
         var $parent = $(this).parents('.current2');
         var $dips = $parent.find('.current_list');
         $dips.css("display", "none");
         $parent.find('h4').css("background", "url(./images/icon/listup.png)");
     }, function() {
         var $parent = $(this).parents('.current2');
         var $dips = $parent.find('.current_list');
         $dips.css("display", "block");
         $parent.find('h4').css("background", "url(./images/icon/listdown.png)");
     });
 })

// **产品列表页底部图片切换***start****
$(function(){

    var page = 1;
    var i = 5; //每版放5个图片

    $('#bot_prev').click(function(){
        var $parent = $(this).parents("div.pro_bottom_pic01");
        var $v_out = $parent.find("div.proBot_slide0");
        var $v_show = $parent.find("div.proBot_slide01");
        var v_width = $v_out.width();
        var len = $v_show.find("li").length;
        var page_count = Math.ceil(len / i);
        if(!$v_show.is(":animated")){
            if (page == 1) {
                $v_show.animate({left : "-="+v_width*(page_count-1)},"slow");
                page = page_count;
            }else{
                $v_show.animate({left : '+='+v_width},"slow");
                page--;
            }
        }
    });


    $('#bot_Next').click(function(){
        var $parent = $(this).parents("div.pro_bottom_pic01");//寻找当前元素的父元素
        var $v_out = $parent.find("div.proBot_slide0");//视频外围
        var $v_show = $parent.find("div.proBot_slide01");//视频播放区域
        var v_width = $v_out.width();//外围宽度
        var len = $v_show.find("li").length; //图片数量
        var page_count = Math.ceil(len / i) ; //页面数目
         if( !$v_show.is(":animated") ){    //判断“视频内容展示区域”是否正在处于动画
              if( page == page_count ){  //已经到最后一个版面了,s如果再向后，必须跳转到第一个版面。
                $v_show.animate({ left : '0px'}, "slow"); //通过改变left值，跳转到第一个版面
                page = 1;
              }else{
                $v_show.animate({ left : '-='+v_width }, "slow");  //通过改变left值，达到每次换一个版面
                page++;
             }
         }
    });
}) 

/**********产品列表页排序**************start***/
$(function(){
 $('.sort-item').live('click',function() {
        var $span = $(this).find('span');
         if ($span.hasClass("sort-up")){
            $span.removeClass("sort-up");
            $span.addClass("sort-down");
         }
         else
         {
            $span.removeClass("sort-down");
            $span.addClass("sort-up");
         }
});   
})

// *****登录、注册选项卡*****bing****start****
  var tabOptionIndex8 = 0;
 $(function() {
     $(".TmenuTitle ul li").mouseover(function() {
         tabOptionIndex8 = $(".TmenuTitle ul li").index(this);
         tabOptionHover8(tabOptionIndex8);
     });

 });
 function tabOptionHover8(tabOptionIndex) {
     var $li_8 = $(".TmenuTitle ul li");
     for (var i = 0; i < $li_8.length; i++) {
         $li_8.eq(tabOptionIndex).addClass('TmenuTitleOn0 fontcolor').siblings().removeClass('TmenuTitleOn0 fontcolor');
         $(".TmenuCont").eq(tabOptionIndex).addClass('TmenuContentOn0').siblings().removeClass('TmenuContentOn0');
     }
 }

// *****登录、注册选项卡*****bing****end****

// 更多详情
$(function(){
    $(".more-detail").toggle(function(){
        var index = $(".more-detail").index(this);
        $(".detail-info").eq(index).css('display','block')
    },function(){
        var index = $(".more-detail").index(this);
        $(".detail-info").eq(index).css('display','none');
    })
})