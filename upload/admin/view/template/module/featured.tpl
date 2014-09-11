<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="addForm();" class="button">添加</a><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <?php for ($i=0; $i<sizeof($tabs); $i++) { ?>
        <table class="form">
          <tr><td>标题</td><td><input type="text" name="featured_product[<?php echo $i; ?>][title]" value="<?php echo $tabs[$i]['title'] ?>"></td><td><a class="button" id="form_rm">移除</a></td></tr><!--title-->
          <tr>
            <td>分类</td>
          <td><select id="categories_<?php echo $i; ?>" onchange="selectCat(<?php echo $i; ?>)">
          <option selected>全部</option>
          <?php foreach($categories as $category){
            $op="<option value=\"".$category['category_id']."\">".$category['name']."</option>";
            echo $op;
          }?>
          </select>
          </td>
          </tr>
          <tr>
            <td><?php echo $entry_product; ?></td>
          <td><select id="products_<?php echo $i; ?>" onchange="selectPro(<?php echo $i; ?>)">
          <option selected>请选择</option>
          </select>
          <tr>
            <td>&nbsp;</td>
            <td><div id="featured-product_<?php echo $i; ?>" class="scrollbox">
                <?php $class = 'odd'; ?>
                <?php foreach ($tabs[$i]['products'] as $product) { ?>
                <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                <div id="featured-product<?php echo $product['product_id']; ?>" class="<?php echo $class; ?>"><?php echo $product['name']; ?> <img src="view/image/delete.png" alt="" />
                  <input type="hidden" value="<?php echo $product['product_id']; ?>" />
                </div>
                <?php } ?>
              </div>
              <input type="hidden" name="featured_product[<?php echo $i; ?>][products]" value="<?php echo $featured_product[$i]['products']; ?>" /></td>
          </tr>
        </table>
        <?php } ?>
        <table id="module" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_limit; ?></td>
              <td class="left"><?php echo $entry_image; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
              <td class="left"><input type="text" name="featured_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" size="1" /></td>
              <td class="left"><input type="text" name="featured_module[<?php echo $module_row; ?>][image_width]" value="<?php echo $module['image_width']; ?>" size="3" />
                <input type="text" name="featured_module[<?php echo $module_row; ?>][image_height]" value="<?php echo $module['image_height']; ?>" size="3" />
                <?php if (isset($error_image[$module_row])) { ?>
                <span class="error"><?php echo $error_image[$module_row]; ?></span>
                <?php } ?></td>
              <td class="left"><select name="featured_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="featured_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="featured_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="featured_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="6"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('.scrollbox div img').live('click', function() {
  var id = $(this).parent().parent().attr("id");
  // alert(id);
  $(this).parent().remove();
  $('#'+id+' div:odd').attr('class', 'odd');
  $('#'+id+' div:even').attr('class', 'even');

  data = $.map($('#'+id+' input'), function(element){
    return $(element).attr('value');
  });
  
  var num = id.substr(id.indexOf('_')+1);
  // alert(num);        
  $('input[name=\'featured_product['+num+'][products]\']').attr('value', data.join()); 
});

$('#form_rm').live('click', function(){
  $(this).parent().parent().parent().remove();
});
//--></script> 
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {  
  html  = '<tbody id="module-row' + module_row + '">';
  html += '  <tr>';
  html += '    <td class="left"><input type="text" name="featured_module[' + module_row + '][limit]" value="5" size="1" /></td>';
  html += '    <td class="left"><input type="text" name="featured_module[' + module_row + '][image_width]" value="80" size="3" /> <input type="text" name="featured_module[' + module_row + '][image_height]" value="80" size="3" /></td>'; 
  html += '    <td class="left"><select name="featured_module[' + module_row + '][layout_id]">';
  <?php foreach ($layouts as $layout) { ?>
  html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
  <?php } ?>
  html += '    </select></td>';
  html += '    <td class="left"><select name="featured_module[' + module_row + '][position]">';
  html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
  html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
  html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
  html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
  html += '    </select></td>';
  html += '    <td class="left"><select name="featured_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
  html += '    <td class="right"><input type="text" name="featured_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
  html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
  html += '  </tr>';
  html += '</tbody>';
  
  $('#module tfoot').before(html);
  
  module_row++;
}
//--></script>
<script type="text/javascript"><!--
var form_num = <?php echo sizeof($tabs)?>;
function selectCat(form_num){
  var json='<?php echo $options; ?>';
  var ps=JSON.parse(json);
  var cats=$("select#categories_"+form_num).get(0);
  var x=cats.options.selectedIndex;
  var cat=cats.options[x];
  $("select#products_" + form_num).get(0).options.length=1;
  for(var p in ps){
    if(x==0){
      $("select#products_" + form_num).append("<option value=\""+ps[p].product_id+"\">"+ps[p].name+"</option>");
    }else{
      for(var c in ps[p].categories){
        if(ps[p].categories[c]==cat.value){
          $("select#products_" + form_num).append("<option value=\""+ps[p].product_id+"\">"+ps[p].name+"</option>");
        }
      }
    }
  }

  // alert(form_num); 
}
window.onload=function(){
  for(i=0; i<form_num; i++){
    selectCat(i); 
  }
};
//--></script>
<script type="text/javascript"><!--
function selectPro(form_num) {
  var ops=$("select#products_" + form_num).get(0).options;
  var x=ops.selectedIndex;
  $('#featured-product_' + form_num + ops[x].value).remove();
  $('#featured-product_' + form_num).append('<div id="featured-product' + ops[x].value + '">' + ops[x].text + '<img src="view/image/delete.png" alt="" /><input type="hidden" value="' + ops[x].value + '" /></div>');

  $('#featured-product_'+form_num+' div:odd').attr('class', 'odd');
  $('#featured-product_'+form_num+' div:even').attr('class', 'even');
    
  data = $.map($('#featured-product_'+form_num+' input'), function(element){
    return $(element).attr('value');
  });
            
  $('input[name=\'featured_product['+form_num+'][products]\']').attr('value', data.join());
}

function addForm(){
  html = '<table class="form">'
  html += '<tr><td>标题</td><td><input type="text" name="featured_product['+form_num+'][title]"></td><td><a class="button" id="form_rm">移除</a></td></tr><!--title-->'
  html +=  '<tr>'
  html +=   '<td>分类</td>'
  html +=   '<td><select id="categories_'+form_num+'" onchange="selectCat('+form_num+')">'
  html +=     '<option selected>全部</option>'
  html +=     '<?php foreach($categories as $category){
                $op="<option value=\"".$category['category_id']."\">".$category['name']."</option>";
                echo $op;
                }?>'
  html +=       '</select>'
  html +=          '</td>'
  html +=          '</tr>'
  html +=          '<tr>'
  html +=            '<td><?php echo $entry_product; ?></td>'
  html +=          '<td><select id="products_'+form_num+'" onchange="selectPro('+form_num+')">'
  html +=          '<option selected>请选择</option>'
  html +=          '</select>'
  html +=          '</td>'
  html +=          '</tr>'
  html +=          '<tr>'
  html +=            '<td>&nbsp;</td>'
  html +=            '<td><div id="featured-product_'+form_num+'" class="scrollbox">'
  html +=              '</div>'
  html +=              '<input type="hidden" name="featured_product['+form_num+'][products]" value="" /></td>'
  html +=          '</tr>'
  html += '</table>';

  $('#module').before(html);
  selectCat(form_num);
  form_num++;
}

//--></script> 
<?php echo $footer; ?>
