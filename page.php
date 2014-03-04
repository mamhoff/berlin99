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

get_header(); ?>


<section class="intro">
	
	<div class="inner">

		<?php get_sidebar('sidebar-languagesocial'); ?>
		
	</div>

</section>

<section class="about" id="section1">
	
	<div class="inner">

					<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', 'page' ); ?>

			<?php endwhile; // end of the loop. ?>
		
	</div>

</section>

<section class="thumbs" id="section2">
  	<div class="inner">

		<?php get_sidebar('sidebar-apartments'); ?>

	</div>
</section>


<?php get_footer(); ?>
