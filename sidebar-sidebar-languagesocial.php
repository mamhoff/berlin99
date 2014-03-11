<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>

<div class="inner">

<div class="icons">
	<ul>
		 <?php
		    $languages = icl_get_languages('skip_missing=0&orderby=code');
		    if(!empty($languages)){
		        foreach($languages as $l){
		            if (!$l['active']) {
		            	echo '<a href="'.$l['url'].'">';
		            	echo '<li class="'.$l['language_code'].'"></li>';
		            	echo '</a> ';
		            }
		        }
		    }
		 ?>
	     <a href="/"><li class="fb" ></li></a>
	     <a href="https://twitter.com/b99Property"><li class="tw" ></li></a>
	</ul>
</div>

</div>

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
