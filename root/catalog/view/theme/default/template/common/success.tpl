<?php echo $header; ?>
<div class="breadcrumbs">
  <div class="container">
      <div class="title-breadcrumb">
        <?php $count = count($breadcrumbs);?>
        <?php $i=0; ?>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php if( $i == $count-1){ ?>
               <?php echo '<b>'.$breadcrumb['text'].'</b>'; ?>
            <?php }else{ ?>
              <a href="<?php echo $breadcrumb['href']; ?>"></a>
            <?php } ?>      
          <?php $i++; ?> 
        <?php } ?>
      </div>
      <ul class="breadcrumb-cate">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
      </ul>
  </div>
</div>
<div class="container">
  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>