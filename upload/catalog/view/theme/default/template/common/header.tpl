<!DOCTYPE html>
<html>
  <head>
    <title><?php echo $title; ?></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9,IE=10">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/main.css" >
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
    <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
    <?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>
  </head>
  <body>
    <div class="header">
      <div class="header_t">
        <div class="logo">
          <img id="logo_t" src="catalog/view/theme/default/image/logo.png" alt="晴天永生花">
          <img id="lace" src="catalog/view/theme/default/image/lace.png">
        </div>
        <div class="nav">
          <a href="#">
            <span class="home"></span>
          </a>
          <a href="#">
            <span class="enjoy"></span>
          </a>
          <a href="#">
            <span class="college"></span>
          </a>
          <a href="#">
            <span class="trade"></span>
          </a>
          <a href="#">
            <span class="purchase"></span>
          </a>
        </div>

          <!-- 搜索栏 -->
        <div class="searchdiv">
          <form class="searchform" method="get"> 
           <input class="search-submit" type="submit" value=""/>
           <input id="search-input" class="search-input" type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" size="30px" />
           <input  type="submit"  class="search-button" id="search-button" value="搜 索" />
          </form>       
        </div>
      <div class="clear"></div>
      
    </div>
    <div class="header_b">
        <div class="myspan">    
          <span class="login"><!-- <a href="#">登录</a>|<a href="#">注册</a> -->
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
          </span>

          <span><a href="#"><img src="catalog/view/theme/default/image/cart/cart.png" alt="购物车">购物车（0）</a></span>
          <span><a href="#">热线电话:000000</a></span>
          <span><a href="#">在线客服</a></span>
        </div>
      </div>
      <!-- header部分结束 -->
      </div>
