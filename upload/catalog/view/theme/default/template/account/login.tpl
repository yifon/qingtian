<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content" class="content"><?php echo $content_top; ?>




<div class="leftBanner1">
        <img class="bannerimg" src="catalog/view/theme/default/image/left-banner.jpg">

        <div class="findCode_Box">
           <div class="TmenuTitle TSmenuTitle01 clearfix">
              <ul>
                  <li class="TmenuTitleOn0 fontcolor"><a href="">用户登录</a></li>
                  <li class=""><a href="">用户注册</a></li>
              </ul>
           </div>
            
          <div class="TmenuCont TmenuContentOn0">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="findcode1">
              <label>账　户：</label>
              <input type="text" name="email" placeholder="请输入您在注册时使用的邮箱或手机">
            </div>
            <div class="findcode1">
              <label>密　码：</label>
              <input type="password" name="password">
            </div>
            <div class="findcode2">
              <label>验证码：</label>
              <input type="text">
              <span>Maker</span>
               <a href="#">换一张</a>
            </div>
            <div class="loginBtn">
              <button class="btn_info" type="submit" id="findYourCode">登录</button>
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
            </div>
            </form>
            <div class="boxBottom">
              <span>其他方式登录</span>
              <a class="loginimg" href="#"><img src="catalog/view/theme/default/image/QQ1.png" alt=""></a>
              <a class="loginimg" href="#"><img src="catalog/view/theme/default/image/microblog.png" alt=""></a>
              <a class="freelogin" href="#">免费登录</a>
            </div>

          </div>
        
          <div class="TmenuCont newlabel">
            <div class="findcode1">
              <label>手机/邮箱：</label>
              <input type="text">
            </div>
            <div class="findcode1">
              <label>密　 　码：</label>
              <input type="password">
            </div>
            <div class="findcode2">
              <label>验 证 码：</label>
              <input type="text">
              <span>Maker</span>
               <a href="#">换一张</a>
            </div>
            <div class="protocol">
              <input type="checkbox">
              <span>我接受<a href="#">《尚田用户注册协议》</a></span>
            </div>
            <button class="btn_info" id="findYourCode">注册</button>
          </div>
      </div>
     </div>
<!--
  <h1><?php echo $heading_title; ?></h1><div class="login-content">
   <div class="left">
      <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <p><b><?php echo $text_register; ?></b></p>
        <p><?php echo $text_register_account; ?></p>
        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <div class="right">
      <h2><?php echo $text_returning_customer; ?></h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <p><?php echo $text_i_am_returning_customer; ?></p>
          <b><?php echo $entry_email; ?></b><br />
          <input type="text" name="email" value="<?php echo $email; ?>" />
          <br />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="<?php echo $password; ?>" />
          <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
  </div>
-->
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>