<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>

<h2>LANDLORDS</h2>
<div class="col-2-3">
        <div class="col-1-4"></div>
          <div class="col-3-4">


<?php if ( is_active_sidebar( 'sidebar-landlords' ) ) : ?>


						<?php dynamic_sidebar( 'sidebar-landlords' ); ?>

					<?php else : ?>

						<!-- This content shows up if there are no widgets defined in the backend. -->
						
						<div class="alert alert-message">
						
							<p><?php _e("Please activate some Widgets","wpbootstrap"); ?>.</p>
						
						</div>

<?php endif; ?>

<br><br> <a href="#" class="landlordscontact">Landlords Contact</a></p>
          </div>
 </div>