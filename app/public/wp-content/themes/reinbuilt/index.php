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

<div class="wp-block-cover alignfull" style="min-height:800px" id="hero">
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

<!-- Hero END -->

<div class="swiper mySwiper">
	<div class="swiper-wrapper">
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
		<div class="swiper-slide">
			<img src="https://placehold.co/400x400/png" loading="lazy" />
			<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
		</div>
	</div>
	<div class="swiper-button-next"></div>
	<div class="swiper-button-prev"></div>
</div>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
	var swiper = new Swiper(".mySwiper", {
		lazy: true,
		slidesPerView: 4,
		spaceBetween: 30,

		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});
</script>


<?php
// Include the footer
get_footer();
?>
