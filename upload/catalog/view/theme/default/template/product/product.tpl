<?php echo $header; ?>

<div id="content" class="content wrapper"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <img src="catalog/view/theme/default/image/icon/house.png">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="product">
    <?php if ($thumb || $images) { ?>
    <div class="left_product">
       <div class="left_banner">
        <div id="image-choice" class="i-list">
      <?php if ($thumb) { ?>
      <div class="tb-booth tb-pic tb-s310"><a href="<?php echo $popup; ?>" target="_blank"><img src="<?php echo $thumb; ?>"   class="jqzoom" style="cursor: crosshair;"/></a></div>
      <?php } ?>

      <?php if ($images) { ?>
      <div id="left-choice" class="ctrl"><img src="catalog/view/theme/default/image/icon/prev.png" alt="左切换"></div>
      <div class="i-bot-list">
        <ul class="tb-thumb" id="thumblist">
          <?php  $i = 0;  ?>
        <?php foreach ($images as $image) { ?>
        
        <?php  $i++; if($i==1){  ?>
        <li class="tb-selected">
          <?php }else{?>
        <li >
          <?php } ?>
          <div class="tb-pic tb-s40">
        <a href="#"><img class="small-img" src="<?php echo $image['thumb']; ?>"  alt="<?php echo $heading_title; ?>" mid="<?php echo $image['popup']; ?>" big="<?php echo $image['popup']; ?>"  /></a></div></li>

        <?php } ?>
      </ul>
      </div>
      <div id="right-choice" class="ctrl"><img src="catalog/view/theme/default/image/icon/next.png" alt="右切换"></div>
      <?php } ?>
    </div>
    <script type="text/javascript">
$(document).ready(function(){
  $(".jqzoom").imagezoom();
  $("#thumblist li a").mouseover(function () {
      $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
    $(".jqzoom").attr('src',$(this).find("img").attr("mid"));
    $(".jqzoom").attr('rel',$(this).find("img").attr("big"));
  });
});
</script>
<div class="bottom_link">
              <img src="catalog/view/theme/default/image/icon/share.png">
              <a href="#">分享</a>
              <img src="catalog/view/theme/default/image/icon/collect.png">
              <a href="#">收藏</a>
</div>
    </div>
<div class="center_state">
      <h3>国产玫瑰花头批发</h3>
            <p>颜色多款</p>
            <p>尺寸：2-3cm,4-5cm,5-6cm</p>
            <?php if ($price) { ?>
      <div class="price_place">
      <!--  <?php echo $text_price; ?>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
         <?php } ?> -->
      </div>
     
            <!--price 结束 -->
      <div class="detail">
        <div class="weight">
                <p class="myfont" style="float:left;">净含量</p>
                <p style="float:left;
                margin-left:30px;">1000g</p>
              </div>
              <div class="detail_info">
                <div class="info1">
                  <p class="num1">2880</p>
                  <p class="myfont">月销量</p>
                </div>
                <div class="info2">
                  <p class="num2">2880</p>
                  <p class="myfont">累计评价</p>
                </div>
              </div>
              <div class="account">
                <p class="myfont">数量</p>
                <div class="s0-buyNum account-num">
                      <span class="num-option minus">-</span>
                      <input type="text" class="num-each" value="0">
                      <span class="num-option num-add">+</span>
                </div>
                <p>库存34123件</p>
              </div>
              <div class="shopping_button">
                <a class="buy_btn" href="#">立即购买</a>
                <a class="cart_btn" href="#">加入购物车</a>
              </div>
              <div class="promise">
                <p class="myfont">服务承诺</p>
              </div>

     <!-- <div class="cart">
        <div><?php echo $text_qty; ?>
          <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          &nbsp;
          <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
          <span>&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span>
          <span class="links"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
            <a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></span>
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div> -->
    </div>
  
    
  </div>


    </div>
    <?php } ?>
    <div class="right_product">
         <div class="recommend">
            <p>晴天热销推荐</p>           
          </div>
          <div class="pro">
            <div class="pro2">
              <ul>
               <li>
                 <a href="#"><img src="catalog/view/theme/default/image/pro/pro1.jpg">
                   <span class="price_p"><span>￥46.00</span></span>
                 </a>
               </li>
               <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro2.jpg"></a>
                 <span class="price_p"><span>￥46.00</span></span>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro3.jpg"></a>
                 <span class="price_p"><span>￥46.00</span></span>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro4.jpg">
                  <span class="price_p"><span>￥46.00</span></span>
                  </a>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro5.jpg"></a>
                  <span class="price_p"><span>￥46.00</span></span>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro6.jpg"></a>
                  <span class="price_p"><span>￥46.00</span></span>
                </li>
                 <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro7.jpg">
                  <span class="price_p"><span>￥46.00</span></span>
                  </a>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro8.jpg"></a>
                  <span class="price_p"><span>￥46.00</span></span>
                </li>
                <li>
                  <a href="#"><img src="catalog/view/theme/default/image/pro/pro9.jpg"></a>
                  <span class="price_p"><span>￥46.00</span></span>
                </li>
              </ul>
            </div>
          </div>

          <div class="btn">
            <div><img id="img1" src="catalog/view/theme/default/image/icon/bottom.png"></div>
             <div><img id="img2" src="catalog/view/theme/default/image/icon/top.png"></div>
          </div>      
       

          <!-- 更多商品 -->
          <div class="more_pro"><a href="#">更多商品</a></div>
        </div>
  </div>
  <div class="combo">     
      
          <ul class="daBox" id="tab4">
          <li class="daOption daOn0"><span id="dapei" class="dapei"><a href="#da-0">搭配</a></span></li>
          <li class="daOption"><span id="taocan" class="taocan"><a href="#da-1">套餐</a></span></li>
          </ul>
 <div class="da-area">
            <div id="da-0" class="da-0 daOn-0">
             <div class="da-0-pro">
               <span class="da-0-img"><img src="catalog/view/theme/default/image/pro/pro9.jpg"></span>
               <p class="da-0-title">樱桃番茄 300g/包</p>
               <p class="da-0-price">￥<span>46.00</span>元</p>
               <p class="da-0-ad">搭配省140.00元</p>
             </div>
             
             <div class="da-0-add">+</div><!-- 第一项产品后面会跟个“+” -->

             <div class="da-0-pro">
               <span class="da-0-img"><img src="catalog/view/theme/default/image/pro/pro4.jpg"></span>
               <p class="da-0-title">樱桃番茄 300g/包</p>
               <p class="da-0-price">￥<span>46.00</span>元</p>
               <p class="da-0-ad">搭配省140.00元</p>
             </div>
             <div class="da-0-pro">
               <span class="da-0-img"><img src="catalog/view/theme/default/image/pro/pro5.jpg"></span>
               <p class="da-0-title">樱桃番茄 300g/包</p>
               <p class="da-0-price">￥<span>46.00</span>元</p>
               <p class="da-0-ad">搭配省140.00元</p>
             </div>
             <div class="da-0-pro">
               <span class="da-0-img"><img src="catalog/view/theme/default/image/pro/pro6.jpg"></span>
               <p class="da-0-title">樱桃番茄 300g/包</p>
               <p class="da-0-price">￥<span>46.00</span>元</p>
               <p class="da-0-ad">搭配省140.00元</p>
             </div>
             <div class="da-0-pro">
               <span class="da-0-img"><img src="catalog/view/theme/default/image/pro/pro7.jpg"></span>
               <p class="da-0-title">樱桃番茄 300g/包</p>
               <p class="da-0-price">￥<span>46.00</span>元</p>
               <p class="da-0-ad">搭配省140.00元</p>
             </div>

             <!-- 价格、立即购买 -->
             <div class="da-all">
               <p class="da-why">搭配买共省140.00元</p>
               <p class="da-money">套餐价：￥<span class="da-price">268.00</span>X</p>
               <input type="text" value="1" class="da-num">
               <span class="da-buy"><a href="#">立即购买套餐</a></span>
               <span class="da-cart"><a href="#">加入购物车</a></span>
             </div>
            </div>
            <div id="da-1" class="da-0">
               aaa
              
            </div>
          </div>       
    </div>
    <div class="product-ad">广告位</div>
    <div class="main">
      <!-- 左侧栏 -->
      <div class="left_list">
          <div class="list_title">热销榜</div>
          <div class="list_content">
            <div class="content_icon">
              <img src="catalog/view/theme/default/image/pro/pro5.jpg">
            </div>
            <div class="pro_click">
              <a href="">2斤59元 顺丰包 海南</a>
              <div class="list_price">¥ 46.00</div>
              <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
            </div>
            </div>
        <div class="list_content">
          <div class="content_icon">
              <img src="catalog/view/theme/default/image/pro/pro6.jpg">
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <img src="catalog/view/theme/default/image/pro/pro7.jpg">
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
            <img src="catalog/view/theme/default/image/pro/pro8.jpg">
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <img src="catalog/view/theme/default/image/pro/pro9.jpg">
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_more">
          <a href=""><span class="list_text">&nbsp;&nbsp;查看更多宝贝</span>
          <img src="catalog/view/theme/default/image/icon/checkMore.jpg" alt=""></a>
        </div>
      </div>
      <div class="left_list">
        <div class="list_title">尚田推荐</div>
          <div class="list_content">
            <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro7.jpg"></a>
            </div>
            <div class="pro_click">
              <a href="">2斤59元 顺丰包 海南</a>
              <div class="list_price">¥ 46.00</div>
              <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
            </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro6.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro8.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
            <a href=""><img src="catalog/view/theme/default/image/pro/pro9.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro4.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_more">
          <a href=""><span class="list_text">&nbsp;&nbsp;查看更多宝贝</span>
          <img src="catalog/view/theme/default/image/icon/checkMore.jpg" alt=""></a>
        </div>
      </div>
      <div class="left_list">
        <div class="list_title">浏览过的商品</div>
          <div class="list_content">
            <div class="content_icon">
              <img src="catalog/view/theme/default/image/pro/pro4.jpg">
            </div>
            <div class="pro_click">
              <a href="">2斤59元 顺丰包 海南</a>
              <div class="list_price">¥ 46.00</div>
              <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
            </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro3.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro2.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
            <a href=""><img src="catalog/view/theme/default/image/pro/pro1.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_content">
          <div class="content_icon">
              <a href=""><img src="catalog/view/theme/default/image/pro/pro2.jpg"></a>
          </div>
          <div class="pro_click">
            <a href="">2斤59元 顺丰包 海南</a>
            <div class="list_price">¥ 46.00</div>
            <div class="list_saled">已售出<span class="saled_num">7719</span>件</div>
          </div>
        </div>
        <div class="list_more">
          <a href=""><span class="list_text">&nbsp;&nbsp;查看更多宝贝</span>
          <img src="catalog/view/theme/default/image/icon/checkMore.jpg" alt=""></a>
        </div>
      </div>
      <!-- 产品详情页“商品详情、评价、成交记录”的切换 june-->
      <div class="pro_detail">
        
         <ul class="proBox">
          <li class="proOption proOn0"><span id="spxq" class="spxq"><a href="#pro-0">商品详情</a></span></li>
          <li class="proOption"><span id="pj" class="pj"><a href="#pro-1">评价</a></span></li>
          <li class="proOption"><span id="cjjl" class="cjjl"><a href="#pro-2">成交记录</a></span></li>
          </ul>
          <div class="pro-area">
            <div id="pro-0" class="pro-0 proOn-0">
             <img src="catalog/view/theme/default/image/pro/qtxq.jpg" alt="晴天花材" class="hdst">
            </div>
            <div id="pro-1" class="pro-0">              
                <div class="ass_detail">      
                  <div class="ass_contt">
                    <div style="overflow: hidden;">
                      <div class="fl ass_user"><img src="catalog/view/theme/default/image/ass_user.png">酒暖回忆思念<span class="fr">说</span></div>
                      <div class="fr ass_time">
                        2013-07-28 10:59:21
                      </div>
                      <div class="ass_says">&nbsp;&nbsp;打开包装，满屋子的香味啊，吃着口感也非常好，打开包装，满屋子的香味啊，吃着口感也非常好，打开包装，满屋子的香味啊，吃着口感也非常好，打开包装，满屋子的香味啊，吃着口感也非常好，打开包装，满屋子的香味啊，吃着口感也非常好，
                      </div>
                    </div>
                  </div> 
                  <div class="_page_">
                    <ul>
                      <li class="up_page"><a><img src="catalog/view/theme/default/image/icon/PgUp.png">上一页</a></li>
                      <li><a>1</a></li>
                      <li class="current_page"><a>2</a></li>
                      <li><a>3</a></li>
                      <li><a>4</a></li>
                      <li><a>5</a></li>
                      <li class="down_page"><a>下一页<img src="catalog/view/theme/default/image/icon/PgDn.png"></a></li>
                    </ul>
                 </div>
              </div>
            </div>
            <div id="pro-2" class="pro-0">
              <div class="right_div_table">
                <table class="tb_th">
                  <tbody><tr>
                    <th style="width: 120px;">买家</th>
                    <th style="width: 160px;">拍下价格</th>
                    <th style="width: 110px;">数量</th>
                    <th style="width: 285px;">付款时间</th>
                    <th style="width: 230px;">菜品和型号</th>
                  </tr>
                </tbody></table>
                <table class="deal_table">
                  <tbody><tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                  <tr>
                    <td class="buyer">刘先生</td>
                    <td class="deal_price">12050元</td>
                    <td class="deal_num">5</td>
                    <td class="deal_time">2014-07-29 13:37:06</td>
                    <td class="deal_pro">奶白菜 300g/包&nbsp;&nbsp;套装</td>
                  </tr>
                </tbody></table>
              </div>
            <div class="_page_">
                    <ul>
                      <li class="up_page"><a><img src="catalog/view/theme/default/image/icon/PgUp.png">上一页</a></li>
                      <li><a>1</a></li>
                      <li class="current_page"><a>2</a></li>
                      <li><a>3</a></li>
                      <li><a>4</a></li>
                      <li><a>5</a></li>
                      <li class="down_page"><a>下一页<img src="catalog/view/theme/default/image/icon/PgDn.png"></a></li>
                    </ul>
                 </div>
              
            </div>
          </div>       

      </div>
      <!-- 产品详情页“商品详情、评价、成交记录”的切换 june-->

    </div>
  <div class="cart_icon" id="cart_icon">
    <span id="pro_count">7</span>
  </div>
  <div class="cart" id="cart">
    <div class="go_acc">
      <div class="cart_close">
        <a href="javascript:closeCart()">
          <img src="catalog/view/theme/default/image/icon/cart_close.jpg">
        </a>
      </div>
      <div class="acc">去结算</div>
    </div>
    <div class="cart_title">
      <div style="float:left;">
        <span class="tit_black">&nbsp;预估金额</span>
        (
        <span class="tit_red" id="priceAll">￥69.30</span>
        )
      </div>
      <div style="float:right;">
        <span class="tit_black">商品数量</span>
        (
        <span class="tit_red" id="pro_num">7</span>
        )&nbsp;
      </div>
    </div>
    <div class="cart_content" id="fullcart">
      <table id="cart_table">
        <tbody><tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
        <tr>
          <td class="cart_count count">
            <span class="cart_reduce reduce"></span>
            <input class="count_input" type="text" value="1">
            <span class="cart_add add"></span>
          </td>
          <td>
            <div class="pro_icon">
              <img src="catalog/view/theme/default/image/icon/icon55.jpg"></div>
          </td>
          <td>
            <div class="cart_click">
              <a href="#">
                春盛达】生态大态态态大态态
态大态态约500g/份
              </a>
              <div style="margin-top:10px;">
                促销价：
                <span>
                  ￥ <em>9.90</em>
                </span>
                /份
              </div>
            </div>
          </td>
          <td class="cart_delete">
            <img src="catalog/view/theme/default/image/icon/deletebtn.jpg">
          </td>
        </tr>
      </tbody></table>
    </div>
    <div class="cart_content" id="emptycart">
      <span class="empty">
        <img src="catalog/view/theme/default/image/icon/emptycart.png">
      </span>
    </div>
  </div>
    <!--
  <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
    <?php if ($products) { ?>
    <a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
    <?php } ?>
  </div>
  <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
-->
<!-- 评论区-->
<!--
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
-->
<!--
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
-->
  <!--
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
-->
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
    $(".jqzoom").imagezoom();
  $("#thumblist li a").mouseover(function () {
      $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
    $(".jqzoom").attr('src',$(this).find("img").attr("mid"));
    $(".jqzoom").attr('rel',$(this).find("img").attr("big"));
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
 
 
  });
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
  <script type="text/javascript" src="catalog/view/javascript/jquery.imagezoom.min.js"></script>

<?php echo $footer; ?>