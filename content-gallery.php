<?php
/**
 * @package underscores
 */
?>

<section class="building">
  	<div class="inner">
  		<div class="col-2-3 apartmentheader">
  			<h2><?php the_title(); ?></h2>
  		</div>
  		<div class="col-2-3 apartmentinfo">
	  		<?php echo get_the_content_with_format($more_link_text = '...Read More');?>
	  	</div>
	  	<div class="col-2-3 apartmentinfo pics">

	  		<?php $attachments = new Attachments( 'attachments' ); /* pass the instance name */ ?>
			<?php if( $attachments->exist() ) : ?>
  
			  <div id="gallery-1" class="gallery-1 royalSlider rsDefault">
			    <?php while( $attachments->get() ) : 
                  $dimensions = wp_get_attachment_image_src($attachments->id(), 'gallery-full');
                  $img_width = $dimensions[1];
                  $img_height = $dimensions[2];
                  $thumb_dimensions = wp_get_attachment_image_src($attachments->id(), 'gallery-thumb');
                  $thumb_img_width = $thumb_dimensions[1];
                  $thumb_img_height = $thumb_dimensions[2];
                  $img_full_url = $attachments->src( 'gallery-full' );
                  $img_thumb_url = $attachments->src( 'gallery-thumb' );

            ?>
			      <a class="rsImg" data-rsw="<?php echo $img_width; ?>" data-rsh="<?php echo $img_height; ?>"
               data-rsbigimg="<?php echo $img_full_url; ?>" href="<?php echo $img_full_url; ?>" >
               <img width="<?php echo $thumb_img_width ; ?>" height="<?php echo $thumb_img_height ; ?>" 
               class="rsTmb" src="<?php echo $img_thumb_url ; ?>" />
             </a>

			    
			    <?php endwhile; ?>
			  </div>

<?php endif; ?>
      </div>


	</div>	
  </section>

