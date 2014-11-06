<div class="pro_left list_left_list">
  <div class="pro_left_01">
    <h2><?php echo $heading_title; ?></h2>
      <?php foreach ($categories as $category) { ?>
      <div class = "current2">
        <?php if ($category['category_id'] == $category_id) { ?>
        <h4> <a href="<?php echo $category['href']; ?>" class="active">
                      <?php echo $category['name']; ?></a></h4>   
        <?php } else { ?>
       <h4> <a href="<?php echo $category['href']; ?>"></a>
       <?php echo $category['name']; ?></h4>

        <?php } ?>
        <?php if ($category['children']) { ?>
           <div class="current_list">
              <ul>
                <?php foreach ($category['children'] as $child) { ?>
                <li>
                  <?php if ($child['category_id'] == $child_id) { ?>
                  <a href="<?php echo $child['href']; ?>" class="active">  <?php echo $child['name']; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $child['href']; ?>">  <?php echo $child['name']; ?></a>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
          </div>
        <?php } ?>
      </div>
      <?php } ?>
  </div>
  <div class="left_list pro_clear">
                <div class="list_title">热销榜</div>
                <div class="list_content">
                  <div class="content_icon">
                    <img src="image/littleIcon.jpg">
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
                </div>
                <div class="list_content">
                  <div class="content_icon">
                      <img src="image/littleIcon.jpg">
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
                </div>
                <div class="list_content">
                  <div class="content_icon">
                      <img src="image/littleIcon.jpg">
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
                </div>
                <div class="list_content">
                  <div class="content_icon">
                    <img src="image/littleIcon.jpg">
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
                </div>
                <div class="list_content">
                  <div class="content_icon">
                      <img src="image/littleIcon.jpg">
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
                </div>
                <div class="list_more">
                  <a href=""><span class="list_text">&nbsp;&nbsp;查看更多宝贝</span>
                  <img src="image/icon/checkMore.jpg" alt=""></a>
                </div>
            </div>
            <div class="left_list  pro_clear">
              <div class="list_title">尚田推荐</div>
              <div class="list_content">
                  <div class="content_icon">
                    <a href=""><img src="image/littleIcon.jpg"></a>
                  </div>
                  <div class="pro_click">
                    <a href="">2斤59元 顺丰包 海南</a>
                    <div class="list_price">¥ 46.00</div>
                     
                  </div>
              </div>
              <div class="list_content">
                <div class="content_icon">
                    <a href=""><img src="image/littleIcon.jpg"></a>
                </div>
                <div class="pro_click">
                  <a href="">2斤59元 顺丰包 海南</a>
                  <div class="list_price">¥ 46.00</div>     
                </div>
              </div>
              <div class="list_content">
                <div class="content_icon">
                    <a href=""><img src="image/littleIcon.jpg"></a>
                </div>
                <div class="pro_click">
                  <a href="">2斤59元 顺丰包 海南</a>
                  <div class="list_price">¥ 46.00</div>   
                </div>
              </div>
              <div class="list_content">
                <div class="content_icon">
                  <a href=""><img src="image/littleIcon.jpg"></a>
                </div>
                <div class="pro_click">
                  <a href="">2斤59元 顺丰包 海南</a>
                  <div class="list_price">¥ 46.00</div>   
                </div>
              </div>
              <div class="list_content">
                <div class="content_icon">
                    <a href=""><img src="image/littleIcon.jpg"></a>
                </div>
                <div class="pro_click">
                  <a href="">2斤59元 顺丰包 海南</a>
                  <div class="list_price">¥ 46.00</div>   
                </div>
              </div>
              <div class="list_more">
                <a href=""><span class="list_text">&nbsp;&nbsp;查看更多宝贝</span>
                <img src="image/icon/checkMore.jpg" alt=""></a>
              </div>
            </div>
</div>

