<?php
//Example for Custom Post Type with Taxonomies

/*
    *** You van use dash-icons https://developer.wordpress.org/resource/dashicons/
*/
add_action( 'init', 'register_cpts' );
function register_cpts() {

    //custom taxonomy attached to CPT
    $taxname = 'Class';
    $taxlabels = array(
        'name'                          => $taxname,
        'singular_name'                 => $taxname,
        'search_items'                  => 'Search '.$taxname,
        'popular_items'                 => 'Popular '.$taxname,
        'all_items'                     => 'All '.$taxname.'s',
        'parent_item'                   => 'Parent '.$taxname,
        'edit_item'                     => 'Edit '.$taxname,
        'update_item'                   => 'Update '.$taxname,
        'add_new_item'                  => 'Add New '.$taxname,
        'new_item_name'                 => 'New '.$taxname,
        'separate_items_with_commas'    => 'Separate '.$taxname.'s with commas',
        'add_or_remove_items'           => 'Add or remove '.$taxname.'s',
        'choose_from_most_used'         => 'Choose from most used '.$taxname.'s'
    );
    $taxarr = array(
        'label'                         => $taxname,
        'labels'                        => $taxlabels,
        'public'                        => true,
        'hierarchical'                  => true,
        'show_in_nav_menus'             => true,
        'args'                          => array( 'orderby' => 'term_order' ),
        'query_var'                     => true,
        'show_ui'                       => true,
        'rewrite'                       => true,
        'show_admin_column'             => true
    );
    register_taxonomy( 'class', 'vehicle', $taxarr );

    $taxname = 'Manufacturer';
    $taxlabels = array(
        'name'                          => $taxname,
        'singular_name'                 => $taxname,
        'search_items'                  => 'Search '.$taxname,
        'popular_items'                 => 'Popular '.$taxname,
        'all_items'                     => 'All '.$taxname.'s',
        'parent_item'                   => 'Parent '.$taxname,
        'edit_item'                     => 'Edit '.$taxname,
        'update_item'                   => 'Update '.$taxname,
        'add_new_item'                  => 'Add New '.$taxname,
        'new_item_name'                 => 'New '.$taxname,
        'separate_items_with_commas'    => 'Separate '.$taxname.'s with commas',
        'add_or_remove_items'           => 'Add or remove '.$taxname.'s',
        'choose_from_most_used'         => 'Choose from most used '.$taxname.'s'
    );
    $taxarr = array(
        'label'                         => $taxname,
        'labels'                        => $taxlabels,
        'public'                        => true,
        'hierarchical'                  => true,
        'show_in_nav_menus'             => true,
        'args'                          => array( 'orderby' => 'term_order' ),
        'query_var'                     => true,
        'show_ui'                       => true,
        'rewrite'                       => true,
        'show_admin_column'             => true
    );
    register_taxonomy( 'manufacturer', 'vehicle', $taxarr );

    register_post_type( 'vehicle',
        array(
            'labels' => array(
            'name' => 'Vehicle',
            'singular_name' => 'Vehicle',
            'menu_name' => 'Vehicle'
        ),
        'public'                => true,
        'show_ui'               => true,
        'show_in_menu'          => true,
        'supports'              => array( 'title', 'editor', 'thumbnail' ),
        'rewrite'               => array( 'slug' => 'vehicle' ),
        'has_archive'           => true,
        'hierarchical'          => true,
        'show_in_nav_menus'     => true,
        'capability_type'       => 'page',
        'query_var'             => true,
        'menu_icon'             => 'dashicons-carrot',
    ));
    if( defined('WP_DEBUG') && true !== WP_DEBUG) {
        flush_rewrite_rules();
    }
}
