<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>
	<?php if ( is_active_sidebar( 'sidebar-languagesocial' ) ) : ?>

						<?php dynamic_sidebar( 'sidebar-languagesocial' ); ?>

					<?php else : ?>

						<!-- This content shows up if there are no widgets defined in the backend. -->
						
						<div class="alert alert-message">
						
							<p><?php _e("Please activate some Widgets","wpbootstrap"); ?>.</p>
						
						</div>

	<?php endif; ?>

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
