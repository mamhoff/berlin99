<?php
/**
 * The template for displaying apartments. It's a category.
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
        <div class="Flexible-container">
          <?php if (preg_match( '/alt-tegel.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.kMRyQp7LmtAs" width="640" height="480">
          <?php elseif (preg_match( '/kreuzberg.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.ksXps2n99q90" width="640" height="480">
          <?php elseif (preg_match( '/neukoelln.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.kJ8N_ofuSm30" width="640" height="480">
          <?php elseif (preg_match( '/prenzlauer-berg.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.kNjYsAVnYelc" width="640" height="480">
          <?php elseif (preg_match( '/friedrichshain.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.kwxI5TkYL4Rs" width="640" height="480">
          <?php elseif (preg_match( '/spandau.*/', $slug)): ?>
            <iframe src="https://mapsengine.google.com/map/embed?mid=zDkgAOU-k_Zw.ktAfO2Kv6VzQ" width="640" height="480">
          <?php endif ?>
        </iframe>
      </div>
    </div>
	</div>
  </section>

<?php /* variable for alternating post styles */
    $oddpost = '';
?>

  <?php while ( have_posts() ) : the_post(); ?>
        <section class="building <?php echo $oddpost; ?>">
				<?php
					/* Include the Post-Format-specific template for the content.
					 * If you want to override this in a child theme, then include a file
					 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
					 */
          if ($oddpost == 'building2') $oddpost = '';
            else $oddpost = 'building2';
					get_template_part( 'content', get_post_format() );
				?>

        </section>


			<?php endwhile; ?>




<section class="thumbs" id="section2">
  <div class="inner">

		<?php get_sidebar('sidebar-apartments'); ?>

	</div>
</section>


<section class="contact" id="section4">
    <div class="inner">


  		<?php get_sidebar('sidebar-contact'); ?>


  	</div>
</section>


<?php get_footer(); ?>
