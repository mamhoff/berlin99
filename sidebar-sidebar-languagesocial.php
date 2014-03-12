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
