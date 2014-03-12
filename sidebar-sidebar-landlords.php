<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>

 

<?php if ( is_active_sidebar( 'sidebar-landlords' ) ) : ?>
  		

						<?php dynamic_sidebar( 'sidebar-landlords' ); ?>

					<?php else : ?>

						<!-- This content shows up if there are no widgets defined in the backend. -->
						
						<div class="alert alert-message">
						
							<p><?php _e("Please activate some Widgets","wpbootstrap"); ?>.</p>
						
						</div>


			</div>
         
  		</div>
      <div class="col-2-3">
        <a class="btn" href="#" class="landlordscontact"><?php _e('LANDLORDS CONTACT', 'underscores') ?></a></p>
</div>
<?php endif; ?>
