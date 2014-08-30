// ***bing***首页图片轮播***start***
$(function(){
    var $imgscroll = $('.pagination li');
    var len = $imgscroll.length;
    var index = 0;
    var adTimer = null;
    var page = 1;
    var page2 = 0;
    $imgscroll.mousemove(function(){

        index = $imgscroll.index(this);
        showHomePage(index);
    }).eq(0).mouseover();
    //用来初始化，让第一个文字高亮并显示第一张图

    $('.slide').hover(function(){

        if(adTimer){
            clearInterval(adTimer);
          }
        },function(){
            adTimer = setInterval(function(){
                showHomePage(index);
                index++;
                if(index == len){
                    index = 0;
                }
            },3000);     
    }).trigger("mouseleave");

    $(".spanBtn .next").hover(function(){
    	clearInterval(adTimer);
    })
    $(".spanBtn .prev").hover(function(){
    	clearInterval(adTimer);
    })
    $(".spanBtn .next").click(function(){
        
        var $v_out = $(this).parents("div.wrapper_one");//视频外围
        var $v_show = $v_out.find("div.slide");//视频播放区域
        var v_width = $v_out.width();//外围宽度
        var page_count = $v_show.find("img").length;
     
	     if( page == page_count ){  
	        $v_show.find("img").eq(0).fadeIn().siblings().fadeOut();
	        $imgscroll.removeClass("current").eq(0).addClass("current");
	        page = 1;
	     }else{
	        $imgscroll.removeClass("current").eq(page).addClass("current");
	        $v_show.find("img").eq(page++).fadeIn().siblings().fadeOut();
	        
	     }
    });

    $(".spanBtn .prev").click(function(){
        clearInterval(adTimer);
        var $v_out = $(this).parents("div.wrapper_one");//视频外围
        var $v_show = $v_out.find("div.slide");//视频播放区域
        var v_width = $v_out.width();//外围宽度
        var page_count = $v_show.find("img").length;           	
        if (page2 == 0) { 
        	var page2_count = page_count-1;
            $v_show.find("img").eq(page2_count).fadeIn().siblings().fadeOut();
            $imgscroll.removeClass("current").eq(page2_count).addClass("current");
            page2 = page2_count;
        }else{

            $v_show.find("img").eq(--page2).fadeIn().siblings().fadeOut();

            $imgscroll.removeClass("current").eq(page2).addClass("current");
        }
    });
})

function showHomePage(index){
    var $rollobj = $('.wrapper_one');
    var $rollList = $rollobj.find(".pagination li");
    var $rolla = $rollList.find('a');
    var newhref = $rolla.eq(index).attr("href");
     $('#JS_imgWrap').attr("href",newhref).find("img").eq(index).fadeIn('slow','linear').siblings().fadeOut('slow','linear');

    $rollList.removeClass("current").eq(index).addClass("current");
}
// ***bing***首页图片轮播***end***



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