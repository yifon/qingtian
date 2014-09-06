<div class="clear"></div>
<!-- 图片轮播 -->
<div class="wrapper_one">
  <div class="slide">
    <div class="slide_main">
      <ul class="slide_ul">
        <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
        <li><a href="<?php echo $banner['link']; ?>" class="img"><img src="<?php echo $banner['image']; ?>"    alt="<?php echo $banner['title']; ?>" /></a></li>
        <?php } else { ?>
        <li><a href="" class="img"><img src="<?php echo $banner['image']; ?>"    alt="<?php echo $banner['title']; ?>" /></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  <p class="slide_left"></p>
  <p class="slide_right"></p>
  <div class="slide_span"><p>
  <?php for ($i=0; $i<sizeof($banners); $i++) { ?>
    <?php if($i==0) {?>
     <span class="slide_span_one"></span>
    <?php } else { ?>
      <span></span>
    <?php } ?>
  <?php } ?>
  </p> </div>
  </div>
</div>