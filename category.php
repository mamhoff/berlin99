<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package underscores
 */

get_header(); 
if (is_category( )) {
  $cat = get_query_var('cat');
  $yourcat = get_category ($cat);
  $slug = $yourcat->slug;
 }?>

<section class="areaintro <?php echo $slug ?>">

	<?php get_sidebar('sidebar-languagesocial'); ?>


    <div class="shadow">
    <div class="inner">
    	<span><h1><?php echo single_cat_title(); ?></h1></span>
    </div>
    </div>
 </section>


  <section class="areainfo">
  	<div class="inner">
	  	<div class="col-2-3 blurb">

	  		<?php echo category_description(); ?>
	  		
	  	</div>
	  	<div class="col-1-3 travel">
		  		
								<?php
			if ( is_category() ) {
			 
			$cat_id = get_query_var('cat');
			$cat_data = get_option("category_$cat_id");
			if (isset($cat_data['bottomdescription'])){
			echo do_shortcode($cat_data['bottomdescription']);
			}
			                    } 

			?>

	  	</div>

      <div class="col-3-4 map">
        <div class="Flexible-container"><iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.kMRyQp7LmtAs" width="640" height="480"></iframe></div>
      </div>
	</div>
  </section>


  <?php while ( have_posts() ) : the_post(); ?>

				<?php
					/* Include the Post-Format-specific template for the content.
					 * If you want to override this in a child theme, then include a file
					 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
					 */
					get_template_part( 'content', get_post_format() );
				?>

			<?php endwhile; ?>




<section class="thumbs" id="section2">
  <div class="inner">

		<?php get_sidebar('sidebar-apartments'); ?>

	</div>
</section>


<?php get_footer(); ?>
