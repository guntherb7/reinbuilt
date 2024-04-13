<?php
/**
 * Results
 * Template Name: Results
 *
 * @package reinbuilt
 * @author X
 */
$contact = get_field('contact_block_copy');
get_header(); ?>
<?php if (has_post_thumbnail()) { ?>
	<?php $backgroundImg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
	<div id="team"
		style="background: linear-gradient(0deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 100%),  url('<?php echo $backgroundImg[0]; ?>') no-repeat; background-size:100vw; background-position:bottom -20px center;">

		<div id="team_header" class="container-full">
			<img src="/wp-content/uploads/2022/10/signal-orange-1.png" class="img-responsive" />
			<h1>
				<?php the_title(); ?>
			</h1>
			<p>Select a state below to view our results</p>
		</div>

	<?php } else { ?>
	<?php } ?>
	<div id="results_list" class=" container-full">

		<div id="results_selector" class="tabs">
			<div data-tab-target="#illinois-results" class="tab">
				<h2>Our Results in Illinois</h2>
				<img src="/wp-content/uploads/2022/10/illinois-1.png" alt="Illinois">
			</div>
			<div data-tab-target="#wisconsin-results" class="tab">
				<h2>Our Results in Wisconsin</h2>
				<img src="/wp-content/uploads/2022/10/wisconsin-1.png" alt="Wisconsin">
			</div>
		</div>

		<div class="results-list" id="illinois-results" data-tab-content>
			<?php if (have_rows('illinois_results')): ?>
				<?php while (have_rows('illinois_results')):
					the_row();

					// vars
					$title = get_sub_field('category_title');
					$link = get_sub_field('single_result');
					?>

					<?php if ($link):
						// Extract variables.
						$url = $link['url'];
						$title = $link['title'];
						?>
						<a href="<?php echo esc_attr($url); ?>" title="<?php echo esc_attr($title); ?>" target="_blank">

							<span>
								<?php echo esc_html($title); ?>
							</span>
						</a>
					<?php else: ?>
						<h3>
							<?php echo $title; ?>
						</h3>
					<?php endif; ?>
				<?php endwhile; ?>
			<?php endif; ?>
		</div>
		<div class="results-list" id="wisconsin-results" data-tab-content>
			<?php if (have_rows('wisconsin_results')): ?>
				<?php while (have_rows('wisconsin_results')):
					the_row();


					// vars
					$title = get_sub_field('category_title');
					$link = get_sub_field('single_result');
					?>

					<?php if ($link):
						// Extract variables.
						$url = $link['url'];
						$title = $link['title'];
						?>
						<a href="<?php echo esc_attr($url); ?>" title="<?php echo esc_attr($title); ?>" target="_blank">

							<span>
								<?php echo esc_html($title); ?>
							</span>
						</a>
					<?php else: ?>
						<h3>
							<?php echo $title; ?>
						</h3>
					<?php endif; ?>
				<?php endwhile; ?>
			<?php endif; ?>
		</div>
	</div>
</div>

<div id="contact-block">
	<div id="contact-block_content">
		<?php echo $contact; ?>
	</div>
</div>
<style>
	#results_header {
		padding: 100px 25px;
		text-align: center;
	}

	#results_header img {
		display: block;
		margin: 0 auto;
		width: 180px !important;
	}

	#results_header h1 {
		font-family: $jost;
		font-size: 52px;
		line-height: 56px;
		color: $white;
		margin-top: 0;
	}

	.results_title h2 {
		font-size: 40px;
		line-height: 46px;
		color: #fff;
		z-index: 3;
		display: block;
		position: relative;
		text-align: center;
	}



	#results_selector {
		display: grid;
		max-width: 800px;
		margin: 0 auto;
		gap: 30px;
		grid-template-columns: 1fr 1fr;
		cursor: pointer;
	}


	#results_selector h2 {
		font-size: 40px;
		line-height: 46px;
		color: #fff;
		z-index: 3;
		display: block;
		position: relative;
		text-align: center;
	}

	#results_selector div.active h2 {
		color: #F89A1C;
	}

	#results_selector img {
		max-width: 100%;
		position: relative;
		z-index: 2;
		top: 0;
		display: block;
		margin: 0 auto;
	}


	.results_title h3 {
		text-align: center;
	}

	[data-tab-content] {
		display: none;
	}

	.active[data-tab-content] {
		display: block;
	}

	.results-list {
		margin-bottom: 100px;
		grid-template-columns: 1fr;
		grid-template-columns: 1fr;
		gap: 5px;
		max-width: 800px;
		margin: 0 auto;
	}

	.results-list a {
		display: block;
		text-align: center;
		text-transform: uppercase;
		color: #fff;
		text-decoration: underline;
		font-size: 18px;
		line-height: 30px;
		margin-top: 15px;
	}

	.results-list h3 {
		text-align: center;
	}

	@media (max-width: 768px) {
		#results_selector {
			padding: 20px;
		}

		#results_selector h2 {
			font-size: 30px;
			line-height: 46px;
		}

		#results_selector img {
			top: 0;
		}

		.results-list a {
			font-size: 16px;
			margin-top: 10px;
		}
	}
</style>
<script>
	const tabs = document.querySelectorAll('[data-tab-target]')
	const tabContents = document.querySelectorAll('[data-tab-content]')

	tabs.forEach(tab => {
		tab.addEventListener('click', () => {
			const target = document.querySelector(tab.dataset.tabTarget)
			tabContents.forEach(tabContent => {
				tabContent.classList.remove('active')
			})
			tabs.forEach(tab => {
				tab.classList.remove('active')
			})
			tab.classList.add('active')
			target.classList.add('active')
		})
	})
</script>

<?php get_footer(); ?>