<?php
// Exit if accessed directly.
defined('ABSPATH') || exit;


if( function_exists('acf_add_local_field_group') ):

	acf_add_local_field_group(array(
		'key' => 'shape-images',
		'title' => 'Add Shape Images',
		'fields' => array(
			array(
				'key' => 'shape-images-options',
				'label' => 'Shape Images',
				'name' => 'shape-images',
				'type' => 'repeater',
				'instructions' => 'To display shape images on the page, you must provide: image(upload required) and you must choose shape type. Image title, alt and title text can be provided while you are choosing an image from Wordpress media. Without uploading image or choosing shape type you will not be able to save/update the page.',
				'layout' => 'table',
				'sub_fields' => array(
					array(
						'key' => 'image',
						'label' => 'Image',
						'name' => 'image',
						'type' => 'image',
						'required' => 1
					),
					array(
						'key' => 'shape',
						'label' => 'Shape',
						'name' => 'shape',
						'type' => 'select',
						'choices' => array('' => '', 'rectangle' => 'Rectangle','circle' => 'Circle'),
						'required' => 1
					)
				),
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'page',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => 1,
		'description' => '',
	));

endif;

