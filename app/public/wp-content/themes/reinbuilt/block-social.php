<?php
/**
 * Social Media Block
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

?>
<?php if (have_rows('social_media', 'options')): ?>
    <div class="social">
        <?php while (have_rows('social_media', 'options')):
            the_row();
            $icon = get_sub_field('icon');
            $link = get_sub_field('link');
            if ($icon):
                $title = $icon['title'];
                ?>
                <a href="<?php echo $link; ?>" target="_blank"><img src="<?php echo esc_url($icon['url']); ?>"
                        alt="<?php echo esc_attr($icon['alt']); ?>" class="<?php echo esc_attr($icon['title']); ?>" /></a>
            <?php endif; ?>
        <?php endwhile; ?>
    </div>
<?php endif; ?>
