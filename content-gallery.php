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

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<h1 class="entry-title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h1>

		<?php if ( 'post' == get_post_type() ) : ?>
		<div class="entry-meta">
			<?php underscores_posted_on(); ?>
		</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	<?php if ( is_search() ) : // Only display Excerpts for Search ?>
	<div class="entry-summary">
		<?php the_excerpt(); ?>
	</div><!-- .entry-summary -->
	<?php else : ?>
	<div class="entry-content">
		<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'underscores' ) ); ?>
		<?php
			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'underscores' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->
	<?php endif; ?>

	<footer class="entry-meta">
		<?php if ( 'post' == get_post_type() ) : // Hide category and tag text for pages on Search ?>
			<?php
				/* translators: used between list items, there is a space after the comma */
				$categories_list = get_the_category_list( __( ', ', 'underscores' ) );
				if ( $categories_list && underscores_categorized_blog() ) :
			?>
			<span class="cat-links">
				<?php printf( __( 'Posted in %1$s', 'underscores' ), $categories_list ); ?>
			</span>
			<?php endif; // End if categories ?>

			<?php
				/* translators: used between list items, there is a space after the comma */
				$tags_list = get_the_tag_list( '', __( ', ', 'underscores' ) );
				if ( $tags_list ) :
			?>
			<span class="tags-links">
				<?php printf( __( 'Tagged %1$s', 'underscores' ), $tags_list ); ?>
			</span>
			<?php endif; // End if $tags_list ?>
		<?php endif; // End if 'post' == get_post_type() ?>

		<?php if ( ! post_password_required() && ( comments_open() || '0' != get_comments_number() ) ) : ?>
		<span class="comments-link"><?php comments_popup_link( __( 'Leave a comment', 'underscores' ), __( '1 Comment', 'underscores' ), __( '% Comments', 'underscores' ) ); ?></span>
		<?php endif; ?>

		<?php edit_post_link( __( 'Edit', 'underscores' ), '<span class="edit-link">', '</span>' ); ?>
	</footer><!-- .entry-meta -->
</article><!-- #post-## -->
