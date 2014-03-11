<?php
/**
 * @package underscores
 */
?>


  	<div class="inner">
  		<div class="col-2-3 apartmentheader">
  			<h2><?php the_title(); ?></h2>
  		</div>
  		<div class="col-2-3 apartmentinfo">
	  		<?php echo get_the_content_with_format($more_link_text = '...Read More');?>
	  	</div>
	  	<div class="col-2-3 apartmentinfo pics">

	  		<?php 
        $o_ID = icl_object_id($post->ID, 'post', false, 'en'); 
        $args = array('post_type' => 'attachment','numberposts' => -1,'post_status' => null,'post_parent' => $o_ID);
        $attachments = get_posts($args);

			  if( $attachments ) : ?>
  
			  <div id="gallery-1" class="gallery-1 royalSlider rsDefault">
			    <?php foreach( array_reverse($attachments) as $attachment ) { 
                  $dimensions = wp_get_attachment_image_src($attachment->ID, 'gallery-full');
                  $img_width = $dimensions[1];
                  $img_height = $dimensions[2];
                  $thumb_dimensions = wp_get_attachment_image_src($attachment->ID, 'gallery-thumb');
                  $thumb_img_width = $thumb_dimensions[1];
                  $thumb_img_height = $thumb_dimensions[2];
                  $img_full_url = $dimensions[0];
                  $img_thumb_url = $thumb_dimensions[0];

            ?>
			      <a class="rsImg" data-rsw="<?php echo $img_width; ?>" data-rsh="<?php echo $img_height; ?>"
               data-rsbigimg="<?php echo $img_full_url; ?>" href="<?php echo $img_full_url; ?>" >
               <img width="<?php echo $thumb_img_width ; ?>" height="<?php echo $thumb_img_height ; ?>" 
               class="rsTmb" src="<?php echo $img_thumb_url ; ?>" />
             </a>

			    
			    <?php } ?>
			  </div>

<?php endif; ?>
      </div>


	</div>	

