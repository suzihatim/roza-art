
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<!-- HEADER TOP -->
	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="header-top-left  col-lg-4 col-md-3">
					<div class="header-search">
						<?php  echo $content_search; ?>
					</div>
				</div>
				<div class="header-top-center col-lg-4 col-sm-5 col-md-4 col-xs-5">
					<?php if($welcome_message_status):?>
						<div class="ct-font">
							<strong>
							<?php
								if (isset($welcome_message) && is_string($welcome_message)) {
									echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
								} else {echo 'Default welcome msg!';}
							?>
							</strong>
						</div>
						<?php endif; ?>
				</div>
				<div class="header-top-right collapsed-block col-lg-4 col-sm-7 col-md-5 col-xs-7 ">
					<ul class="top-link list-inline">
						<li class="account" id="my_account"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="btn-xs dropdown-toggle" data-toggle="dropdown"> <span><?php echo $text_account; ?></span> <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu ">
								
								<?php if ($logged) { ?>
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
								<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
								<li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="top-link-wishlist" title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
								<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
								
								<?php } else { ?>
								<li><a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a></li>
								<li><a href="<?php echo $login; ?>"><i class="fa fa-pencil-square-o"></i> <?php echo $text_login; ?></a></li>
								<?php } ?>
							</ul>
						</li>
						<!-- LANGUAGE CURENTY -->
						<?php if($lang_status):?>
							
							<li ><?php echo $language; ?></li>
							<li class="currency" > <?php echo $currency; ?> </li>
						<?php endif; ?>	
					</ul>
					<div class="block-cart">
						<div class="shopping_cart">
						 	<?php echo $cart; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-center">
		<div class="container">
			<div class="box-policy">
				<?php if (trim($content_topbar)) : 
						echo $content_topbar;
				endif; ?>
			</div>
			<div class="navbar-logo">
			   <?php  $this->soconfig->get_logo();?>
			</div>
			<?php if($phone_status):?>
			<div class="telephone hidden-xs pull-right">
				<?php
					if (isset($contact_number) && is_string($contact_number)) {
						echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
					} else {echo 'Telephone No';} 
				?>
			</div>
			<?php endif; ?>
		</div>
	</div>
	
	<!-- HEADER BOTTOM -->
	<div class="header-bottom">
		<div class="container">
			<div class="header-bottom-inner">
				<?php echo $content_menu; ?>
			</div>
		</div>
	  
	</div>
	
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>