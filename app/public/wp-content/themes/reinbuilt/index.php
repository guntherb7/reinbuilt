<?php
/**
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

// Define query arguments


// Include the header
get_header();
?>
<!-- <div class="content">
	<h1>Hello world</h1>
Use esc_url() for secure output of URLs
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo dark-icon">
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo light-icon">
</div> -->
<!-- Hero Image -->
<section id="hero">
	<div class="wp-block-cover alignfull" style="min-height:800px">
		<span aria-hidden="true" class="wp-block-cover__background has-background-dim-60 has-background-dim"></span>
		<img class="wp-block-cover__image-background" alt="" src="https://s.w.org/images/core/5.8/forest.jpg"
			data-object-fit="cover" />
		<div class="wp-block-cover__inner-container">
			<div class="wp-block-align-center">
				<!-- <img
					src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
					alt="Reinbuilt Logo" class="hero--logo logo dark-icon">-->
				<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
					alt="Reinbuilt Logo" class="hero--logo logo light-icon">
			</div>
		</div>
	</div>
</section>
<!-- Hero END -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>Swiper demo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
	<!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

	<!-- Demo styles -->
	<style>
		html,
		body {
			position: relative;
			height: 100%;
		}

		body {
			background: #eee;
			font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
			font-size: 14px;
			color: #000;
			margin: 0;
			padding: 0;
		}

		.swiper {
			width: 100%;
			height: 100%;
			margin-left: auto;
			margin-right: auto;
		}

		.swiper-slide {
			text-align: center;
			font-size: 18px;
			background: #fff;
			height: calc((100% - 30px) / 2) !important;

			/* Center slide text vertically */
			display: flex;
			justify-content: center;
			align-items: center;
		}

	</style>
</head>

<body>
	<!-- Swiper -->
	<div class="swiper mySwiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">Slide 1</div>
			<div class="swiper-slide">Slide 2</div>
			<div class="swiper-slide">Slide 3</div>
			<div class="swiper-slide">Slide 4</div>
			<div class="swiper-slide">Slide 5</div>
			<div class="swiper-slide">Slide 6</div>
			<div class="swiper-slide">Slide 7</div>
			<div class="swiper-slide">Slide 8</div>
			<div class="swiper-slide">Slide 9</div>
		</div>
		<div class="swiper-pagination"></div>
	</div>

	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			slidesPerView: 3,

			spaceBetween: 30,
			pagination: {
				el: ".swiper-pagination",
				clickable: true,
			},
		});
	</script>
</body>

</html>

<!--Contact
<section id="contact">
	wp:media-text {"align":"full","mediaType":"image","verticalAlignment":"center"}
	<div class="wp-block-media-text is-stacked-on-mobile is-vertically-aligned-center">
		<figure class="wp-block-media-text__media"><img src="https://s.w.org/images/core/5.8/architecture-04.jpg"
				alt="Close-up, abstract view of architecture." /></figure>
		<div class="wp-block-media-text__content">
			wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#000000"}}}
			<h3 class="wp-block-heading has-text-align-center has-text-color" style="color:#000000"><strong>Open
					Spaces</strong></h3>
			/wp:heading

		wp:paragraph {"align":"center","fontSize":"extra-small"}
			<p class="has-text-align-center has-extra-small-font-size"><a href="#">See case study ↗</a></p>
			/wp:paragraph
		</div>
	</div>
 /wp:media-text
</section> -->
<!--Contact END-->
<!-- /wp:cover -->
<?php
// Include the footer
get_footer();
?>
