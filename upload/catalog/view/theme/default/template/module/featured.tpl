      <div class="wrapper_two">
        <div class="title">
          <span class="title_l"><h2>作品欣赏</h2></span>
          <span class="title_c"></span>
          <a class="title_r"  href="#">更多&gt;&gt;</a>
        </div>

        <!-- 选项卡部分 start-->
        <div class="Smenu2">
            <div class="SmenuTitle clearfix">
                <ul>
                <?php $i=0; foreach ($tabs as $tab) { ?>
                  <?php if($i==0) { ?>
                    <li class="SmenuTitleOn0"><a href=""><?php echo $tab['title']?></a></li>
                  <?php } else { ?>
                    <li><a href=""><?php echo $tab['title']?></a></li>
                  <?php } ?>
                <?php $i++; } ?>
                </ul>
            </div>
            <div class="SmenuContent clearfix">
            <?php $i = 0; foreach ($tabs as $tab) { ?>
                <?php if($i==0) { ?>
                <div class="SmenuCont SmenuContentOn0">
                <?php } else { ?>
                <div class="SmenuCont">
                <?php } ?>
                  <ul>
                  <?php foreach ($tab['products'] as $product) { ?>
                    <li>
                        <div class="SmenuImg">
                            <a href=""><img src="<?php echo $product['thumb'];?>"></a>
                            <div class="tip"><span>热卖</span></div>
                        </div>
                        <div class="detail_b">
                            <a href=""><p class="imgTitle"><?php echo $product['name']; ?></p></a>
                            <p>~~简介~~</p>
                            <p class="imgPrice">￥<?php echo $product['price']; ?></p> 
                        </div>
                        <div class="purchase-warp">
                  <div class="product-amount">
                    <a href="javascript:void(0)" class="product-minus">-</a>
                    <input type="text" class="product-amout-text" value="0">
                    <a href="javascript:void(0)" class="product-plus">+</a>
                  </div> 
                  <div class="purchase-btn add-cart"><a href="javascript:void(0)">加入购物车</a></div>
                </div>
                    </li>
                  <?php } ?>

                  </ul>
                </div>
          <?php $i++; } ?>
            </div>
        </div>
        <!--选项卡部分-end-->
      </div>
      <!-- wrapper_two结束 -->