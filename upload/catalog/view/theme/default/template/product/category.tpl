<?php echo $header; ?>
<div id="content" class="content">
  <?php echo $content_top; ?>
  <div class="breadcrumb">
    <img src="catalog/view/theme/default/image/icon/house.png">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
   <div class="pro_course">
    <?php echo $column_left; ?>
<div class="right_div pro_list">
  <p><?php echo "产品页" ?></p> 
  <?php if ($products) { ?>


     <!-- <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a> -->

   <!--<div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?> 
      </select>
    </div>  -->
    <div class="pro_sort"><label><?php echo $text_sort; ?></label>
      <ul>
        <?php foreach ($sorts as $sorts) { ?>
        <li>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <a class="sort-item time" href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?><span class="sort-up"></span></a>
        <?php } else { ?>
        <a class="sort-item time" href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?><span class="sort-up"></span></a>
        <?php } ?>
        <?php } ?>
       </li>
      </ul>
    </div>     
<span class="right_div_underline"></span>
<!--  <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>-->

  <div class="right_innner_text">
    <?php foreach ($products as $product) { ?>
    <div class="sbox sbox-0 pbox">
      <?php if ($product['thumb']) { ?>
      <a href="<?php echo $product['href']; ?>"><span class="s0-01-img"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></span><p><?php echo $product['name']; ?></p></a>
      <?php } ?>
      <p class="s0-01-detail"><?php echo $product['description']; ?></p>

      <?php if ($product['price']) { ?>
      <p class="s0-01-price">
        <?php if (!$product['special']) { ?>
        <span><?php echo $product['price']; ?></span>元
        <?php } else { ?>
        <span><?php echo $product['price']; ?></span>元 <span ><?php echo $product['special']; ?></span>元
        <?php } ?>
       <!-- <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?> -->
      </p>
      <div class="s0-buy">
                        <div class="s0-buyNum">
                         <a href="javascript::" class="num-option minus">-</a>
                          <input type="text" class="num-each" value="0">
                          <a href="javascript::" class="num-option add">+</a>
                      </div>
                      <div class="buy-cart list-buy-cart"><!-- 此处为每个商品的购物车按钮 -->
                        <a class="buyBtn" href="#" title="加入购物车" onclick="addToCart('<?php echo $product['product_id']; ?>');">加入购物车</a>
                      </div>
                      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
     <!-- <div class="cart">
        <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
      </div> -->
     <!-- <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div> -->
    </div>
    <?php } ?>
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
  
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?>
</div>
 <div class="clear"></div>
</div>
</div>


<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display('grid');
} else {
	display('grid');
}
//--></script> 
<script type="text/javascript">
$(document).ready(function(){
$(".pro_sort").children().children().children().eq(0).hide();
$(".pro_sort").children().children().children().eq(2).hide();
$(".pro_sort").children().children().children().eq(4).hide();
$(".pro_sort").children().children().children().eq(6).hide();
$(".pro_sort").children().children().children().eq(7).hide();
$(".pro_sort").children().children().children().eq(8).hide();
$(".pro_sort").children().children().children().eq(9).hide();
});
</script>
<?php echo $footer; ?>