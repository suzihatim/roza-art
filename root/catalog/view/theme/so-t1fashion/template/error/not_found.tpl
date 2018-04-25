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
    <div id="content" class="bg-page-404 <?php echo $class; ?>">
		<?php echo $content_top; ?>
        <div class="row">
            <div class="content_404">
                <div class="item-left col-lg-5 col-md-5">
                    <div class="erro-image">
                        <span class="erro-key">
                            <img src="image/catalog/demo/bonuspage/404/img-404.png" alt="">
                        </span>
                    </div>
                </div>
                <div class="item-right col-lg-7 col-md-7">
                    <div class="block-top font-ct">
                        <h2><span><?php echo $text_error; ?></span></h2>
                    </div>

                    <div class="block-bottom">
                        <a href="<?php echo $continue; ?>" class="btn btn-revo" title="<?php echo $button_continue; ?>"><?php echo $button_continue; ?></a>               
                    </div>
                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
