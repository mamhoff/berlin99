<?php
/**
 * The Sidebar containing the main widget areas.
 *
 * @package underscores
 */
?>

<div class="icons">
	<ul>
			<?php foreach(qtrans_getSortedLanguages() as $language) {
				$classes = array('lang-'.$language);
				if($language == $q_config['language'])
					$classes[] = 'active';
				echo '<a href="'.qtrans_convertURL($url, $language).'" class="'. implode(' ', $classes) .'"><li ';
				// set hreflang
				echo ' hreflang="'.$language.'" title="'.$q_config['language_name'][$language].'"';
				echo '>'.$q_config['language_name'][$language].'</li></a>';
			} ?>
	     <a href="/"><li class="fb" ></li></a>
	     <a href="/"><li class="tw" ></li></a>
	</ul>
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
