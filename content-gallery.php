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
			    <?php while( $attachments->get() ) : ?>
			      <a class="rsImg">
			      	Width: <?php echo wp_get_attachment_image_src($attachments->id())[1]; ?><br/>
			      	Height: <?php echo wp_get_attachment_image_src($attachments->id())[2]; ?><br/>
			        ID: <?php echo $attachments->id(); ?><br />
			        Type: <?php echo $attachments->type(); ?><br />
			        Subtype: <?php echo $attachments->subtype(); ?><br />
			        URL: <?php echo $attachments->url(); ?><br />
			        Image: <?php echo $attachments->image( 'thumbnail' ); ?><br />
			        Source: <?php echo $attachments->src( 'full' ); ?><br />
			        Size: <?php echo $attachments->filesize(); ?><br />
			        Title Field: <?php echo $attachments->field( 'title' ); ?><br />
			        Caption Field: <?php echo $attachments->field( 'caption' ); ?>
			      </a>
			    <?php endwhile; ?>
			  </div>
<?php endif; ?>


	  		<div id="gallery-1" class="gallery-1 royalSlider rsDefault">
    			
    			<a class="rsImg" data-rsw="640" data-rsh="360" data-rsbigimg="assets/images/apartments/kreuzberg/forster/1.jpg" href="assets/images/apartments/kreuzberg/forster/1.jpg"><img width="96" height="72" class="rsTmb" src="assets/images/apartments/kreuzberg/forster/1.jpg"></a>
    
    			<a class="rsImg" data-rsw="640" data-rsh="360" data-rsbigimg="assets/images/apartments/kreuzberg/forster/1.jpg" href="assets/images/apartments/kreuzberg/forster/2.jpg"><img width="96" height="72" class="rsTmb" src="assets/images/apartments/kreuzberg/forster/2.jpg"></a>
    
    			<a class="rsImg" data-rsw="336" data-rsh="500" data-rsbigimg="../img/paintings/3.jpg" href="../img/paintings/700x500/3.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/3.jpg"></a>
    
    			<a class="rsImg" data-rsw="417" data-rsh="500" data-rsbigimg="../img/paintings/4.jpg" href="../img/paintings/700x500/4.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/4.jpg"></a>
    
    			<a class="rsImg" data-rsw="601" data-rsh="500" data-rsbigimg="../img/paintings/5.jpg" href="../img/paintings/700x500/5.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/5.jpg"></a>
    
    			<a class="rsImg" data-rsw="350" data-rsh="500" data-rsbigimg="../img/paintings/6.jpg" href="../img/paintings/700x500/6.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/6.jpg"></a>
    
    			<a class="rsImg" data-rsw="596" data-rsh="500" data-rsbigimg="../img/paintings/7.jpg" href="../img/paintings/700x500/7.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/7.jpg"></a>
    
    			<a class="rsImg" data-rsw="700" data-rsh="414" data-rsbigimg="../img/paintings/8.jpg" href="../img/paintings/700x500/8.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/8.jpg"></a>
    
    			<a class="rsImg" data-rsw="470" data-rsh="500" data-rsbigimg="../img/paintings/9.jpg" href="../img/paintings/700x500/9.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/9.jpg"></a>
    
    			<a class="rsImg" data-rsw="500" data-rsh="500" data-rsbigimg="../img/paintings/10.jpg" href="../img/paintings/700x500/10.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/10.jpg"></a>
     
     			<a class="rsImg" data-rsw="700" data-rsh="475" data-rsbigimg="../img/paintings/11.jpg" href="../img/paintings/700x500/11.jpg"><img width="96" height="72" class="rsTmb" src="../img/paintings/t/11.jpg"></a>
          
  			</div>
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
