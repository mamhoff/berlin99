<?php
/**
 * underscores functions and definitions
 *
 * @package underscores
 */

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 640; /* pixels */
}

if ( ! function_exists( 'underscores_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function underscores_setup() {

	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on underscores, use a find and replace
	 * to change 'underscores' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'underscores', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	if ( function_exists( 'add_theme_support' ) ) {
			add_theme_support( 'post-thumbnails' );
	    set_post_thumbnail_size( 150, 150 ); // default Post Thumbnail dimensions   
	}

	if ( function_exists( 'add_image_size' ) ) { 
		add_image_size( 'gallery-full', 500, 700 ); //300 pixels wide (and unlimited height)
		add_image_size( 'gallery-thumb', 92, 76, false ); //(cropped)
	}


	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'underscores' ),
	) );

	// Enable support for Post Formats.
	add_theme_support( 'post-formats', array( 'aside', 'image', 'video', 'quote', 'link', 'gallery' , 'audio' ) );

	// Setup the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'underscores_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );

	// Enable support for HTML5 markup.
	add_theme_support( 'html5', array( 'comment-list', 'search-form', 'comment-form', ) );
}
endif; // underscores_setup
add_action( 'after_setup_theme', 'underscores_setup' );

/**
 * Register widgetized area and update sidebar with default widgets.
 */
function underscores_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Sidebar', 'underscores' ),
		'id'            => 'sidebar-1',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h1 class="widget-title">',
		'after_title'   => '</h1>',
	) );

	register_sidebar( array(
		'name'          => 'Language and social buttons',
		'id'            => 'sidebar-languagesocial',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );

	register_sidebar( array(
		'name'          => 'About',
		'id'            => 'sidebar-about',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );

	register_sidebar( array(
		'name'          => 'Apartments',
		'id'            => 'sidebar-apartments',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );

	register_sidebar( array(
		'name'          => 'Landlords',
		'id'            => 'sidebar-landlords',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );

	register_sidebar( array(
		'name'          => 'Contact',
		'id'            => 'sidebar-contact',
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );
}
add_action( 'widgets_init', 'underscores_widgets_init' );

/**
 * Enqueue scripts and styles.
 */ 
function underscores_scripts() {
	wp_enqueue_style( 'underscores-style', get_stylesheet_uri() );

	wp_enqueue_script( 'underscores-complied-js', get_template_directory_uri() . '/js/44d6fb1ebae1dd3f4e8515537655eabc.js', array(), '20120206', true ); 

	wp_enqueue_script( 'underscores-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20130115', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'underscores_scripts' );

/**
 * Implement the Custom Header feature.
 */
//require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

if( !function_exists('get_the_content_with_format') ):
		function get_the_content_with_format ($more_link_text = '', $stripteaser = 0, $more_file = '') {
		$content = get_the_content($more_link_text, $stripteaser, $more_file);
		$content = preg_replace('/\[gallery[^\]]*?\]/', '', $content); 
		return $content;
	}
endif;