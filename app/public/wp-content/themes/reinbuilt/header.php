<?php
/**
 * Theme header.
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
**/
?><!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
<!-- Google Tag Manager -->


<!-- End Google Tag Manager -->
<meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://indestructibletype.com/fonts/Jost.css" type="text/css" charset="utf-8" />
<link href="https://fonts.googleapis.com/css2?family=Syncopate&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.css" rel="stylesheet">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<header>
		<div id="header_container" class="container-full">
			<div id="header_grid">
				<div id="header_left">
					<?php the_custom_logo(); ?>
				</div>
				
				<div id="header_right">
						<?php
							$args = array(
								'container' => false,
								'theme_location' => 'header-nav'
							);
							wp_nav_menu( $args );
						?>			
					<div id="header_mobile">
						<a href="#" id="menu-icon" class="closed"><hr><hr><hr></a>
						<div id="slide-nav">
							<?php
								$args = array(
									'container' => false,
									'theme_location' => 'header-nav'
								);
								wp_nav_menu( $args );
							?>		
						</div>	
					</div>
				</div>
			</div>
		</div>
	</header>
