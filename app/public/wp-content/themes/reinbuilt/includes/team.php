<?php
/**
 * Custom Team Custom Post Type
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

function create_custom_post_type_team() {

// set up labels
    $labels = array(
        'name' => 'Team',
        'singular_name' => 'Team Member',
        'add_new' => 'Add New Team Member',
        'add_new_item' => 'Add New Team Member',
        'edit_item' => 'Edit Team Member',
        'new_item' => 'New Team Member',
        'all_items' => 'All Team Members',
        'view_item' => 'View Team Member',
        'search_items' => 'Search Team Members',
        'not_found' =>  'No Team Members Found',
        'not_found_in_trash' => 'No Team Members found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'Team',

    );
    //register post type
    register_post_type( 'Team', array(
        'labels' => $labels,
        'menu_icon' => 'dashicons-groups',
        'has_archive' => true,
        'public' => true,
        'supports' => array( 'title', 'editor', 'excerpt' ),  
        'exclude_from_search' => false,
        'capability_type' => 'post',
        'rewrite' => array( 'slug' => 'team', 'with_front' => false ), // Allows for /legal-blog/ to be the preface to non pages, but custom posts to have own root
        )
    );

}
add_action( 'init', 'create_custom_post_type_team' );