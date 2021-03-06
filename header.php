<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package underscores
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>

<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1">
    
  <link href="favicon.ico" rel="shortcut icon">
  <link href="apple-touch-icon.png" rel="apple-touch-icon">

</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">

	<header>
		<div class="inner">

			<nav class="nav-collapse">
				
				<?php wp_nav_menu( array( 
          'menu' => 'Main menu',
          'container' => '',
        ) ); ?>

			</nav><!-- #site-navigation -->
		
			<a class='current' href="<?php echo get_home_url(); ?>"><img  class="logo" src="<?php bloginfo('template_directory'); ?>/images/logo.svg" alt="berlin99 Logo"></a>

			
		</div>

	</header><!-- #masthead -->

	<div id="content" class="site-content">
