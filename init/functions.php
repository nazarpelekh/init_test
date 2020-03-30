<?php

// Run pre-installed plugins
require_once('inc/themer.php');

// uncomment if need CPT
require_once('inc/cpt.php');

//register menus
register_nav_menus(array(
    'main_menu' => 'Main menu'
));

//Custom images sizes
//add_image_size( 'top_default', '1920', '500', true );

//register sidebar
$reg_sidebars = array (
	'page_sidebar'     => 'Page Sidebar',
	'blog_sidebar'     => 'Blog Sidebar'
);
foreach ( $reg_sidebars as $id => $name ) {
	register_sidebar(
		array (
			'name'          => __( $name ),
			'id'            => $id,
			'before_widget' => '<div class="widget %2$s">',
			'after_widget'  => '</div>',
			'before_title'  => '<mark class="widget_title">',
			'after_title'   => '</mark>',
		)
	);
}

if(function_exists('acf_add_options_page') ) {
	acf_add_options_page(array(
		'page_title'    => 'Theme General Settings',
		'menu_title'    => 'Theme Settings',
		'menu_slug'     => 'theme-general-settings',
		'capability'    => 'edit_posts',
		'redirect'      => false
	));
}

function get_alt($id){
	$c_alt = get_post_meta($id, '_wp_attachment_image_alt', true);
	$c_tit = get_the_title($id);
	return $c_alt?$c_alt:$c_tit;
}

function cats($pid){
	$post_categories = wp_get_post_categories($pid);
	$cats = '';
	$co = count($post_categories); $i = 1;
	foreach($post_categories as $c){
		$cat = get_category($c);
		$cats .= '<a href="'.get_category_link($cat->term_id).'">'.$cat->name.'</a>' .($i++ != $co?'<span>,</span> ':'');
	}
	return $cats;
}

function transliterate($textcyr = null, $textlat = null) {
	$cyr = array(
		'ы', ' ', 'є', 'ї', 'ж',  'ч',  'щ',   'ш',  'ю',  'а', 'б', 'в', 'г', 'д', 'е', 'з', 'и', 'й', 'і', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ъ', 'ь', 'я',
		'Ы','Є', 'Ї', 'Ж',  'Ч',  'Щ',   'Ш',  'Ю',  'А', 'Б', 'В', 'Г', 'Д', 'Е', 'З', 'И', 'Й', 'І', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ъ', 'Ь', 'Я');
	$lat = array(
		'y', '_', 'ye', 'yi', 'zh', 'ch', 'sht', 'sh', 'yu', 'a', 'b', 'v', 'g', 'd', 'e', 'z', 'i', 'j', 'i', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'h', 'c', 'y', 'x', 'ya',
		'Y','Ye', 'Yi', 'Zh', 'Ch', 'Sht', 'Sh', 'Yu', 'A', 'B', 'V', 'G', 'D', 'E', 'Z', 'I', 'J', 'I', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F', 'H', 'c', 'Y', 'X', 'Ya');
	if($textcyr) return str_replace($cyr, $lat, $textcyr);
	else if($textlat) return str_replace($lat, $cyr, $textlat);
	else return null;
}

function get_current_url() {
	$pageURL = 'http';
	if (array_key_exists('HTTPS', $_SERVER) && $_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
	$pageURL .= "://";
	if ($_SERVER["SERVER_PORT"] != "80") {
		$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
	} else {
		$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	}
	return str_replace('www.', '', $pageURL);
}

function get_loader(){
	return '<div class="show_box"><div class="loader"><svg class="circular" viewBox="25 25 50 50"><circle class="path" cx="50" cy="50" r="20" fill="none" stroke-miterlimit="10"/></svg></div></div>';
}

/*function wpa_example_ajax(){
	extract($_POST);

	var_dump($action);

	exit;
}
add_action('wp_ajax_wpa_example_ajax', 'wpa_example_ajax');
add_action('wp_ajax_nopriv_wpa_example_ajax', 'wpa_example_ajax');*/

function load_posts_ajax($paged = 1) {
    extract($_POST);

    global $post;

    $tax_query = array();

    if ( $manufacturer != "*" && $manufacturer != null ) {
        $tax_query = array_merge($tax_query,array(
            'relation' => 'AND',
            array(
                'taxonomy' => 'manufacturer',
                'field'    => 'slug',
                'terms'    => array($manufacturer),
            ),
        ));
    }

    if( $class != "*" && $class != null ) :
        $tax_query = array_merge($tax_query,array(
            array(
                'taxonomy' => 'class',
                'field'    => 'slug',
                'terms'    => array($class),
            ),
        ));
    endif;

    $args = array(
        'posts_per_page'  => wp_doing_ajax() ? 9 : 6,
        'paged'           => $paged,
        'tax_query'       => $tax_query,
        'post_type'       => 'vehicle',
        'post_status'     => 'publish',
        'meta_key'		  => 'price',
        'orderby'		  => 'meta_value',
        'order'			  => 'ASC'
    );

    $blog_posts = new WP_Query( $args );

    $num_pages = $blog_posts->max_num_pages;

    if($blog_posts->have_posts()) : while ( $blog_posts->have_posts() ) : $blog_posts->the_post(); ?>

        <div class="vehicle_item">
            <div class="vehicle_item_img" style="background-image: url(<?php the_post_thumbnail_url() ?>);"></div>
            <div class="vehicle_info flex__mob">
                <div class="vehicle_info_item">
                    <h4><i><?php the_title(); ?></i></h4>
                    <p><strong>Year:</strong><span> <?php the_field('year') ?></span></p>
                    <?php $cur_class = get_the_terms( get_the_ID(), 'class' ) ?>
                    <?php $cur_man = get_the_terms( get_the_ID(), 'manufacturer' ) ?>
                    <p><strong>Manufacturer:</strong><span> <?php echo $cur_man[0]->name; ?></span></p>
                    <p><strong>Class:</strong><span> <?php echo $cur_class[0]->name; ?></span></p>
                </div>
                <div class="vehicle_info_item">
                    <span class="price">
                        $<?php the_field('price') ?>
                    </span>
                </div>
            </div>
        </div>

    <?php endwhile;

        if ($num_pages != $paged) :
            echo '
            <div class="load_more_holder"> 
                <a href="" class="button more_posts" data-href="'. ($paged + 1) .'" data-manufacturer="'. $manufacturer .'" data-class="'. $class .'">Load More</a>
            </div>';
        endif;

    else :
        echo '<div><p class="custom_coming_soon">Ooops! Nothing found.</p></div>';
    endif;

    if (wp_doing_ajax()) :
        exit();
    endif;

}
add_action( 'wp_ajax_load_posts_ajax', 'load_posts_ajax');
add_action( 'wp_ajax_nopriv_load_posts_ajax', 'load_posts_ajax');