<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>
	<div id="secondary" class="widget-area" role="complementary"> 
		<?php if ( ! dynamic_sidebar( 'sidebar-1' ) ) : ?>

<!-- #secondary 

			<aside id="search" class="widget widget_search">
				<?php get_search_form(); ?>
			</aside>





			<aside id="meta" class="widget">
				<h1 class="widget-title"><?php _e( 'Meta', 'underscores' ); ?></h1>
				<ul>
					<?php wp_register(); ?>
					<li><?php wp_loginout(); ?></li>
					<?php wp_meta(); ?>
				</ul>
			</aside>

-->

		<?php endif; // end sidebar widget area ?>
	</div><!-- #secondary -->
