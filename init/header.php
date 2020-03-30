<?php if( @!WP_DEBUG) {	ob_start('ob_html_compress'); } ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><?php wpa_title(); ?></title>
<meta name="MobileOptimized" content="width"/>
<meta name="HandheldFriendly" content="True"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="format-detection" content="telephone=no">
<meta name="theme-color" content="#232323">
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?> data-hash="<?php wpa_fontbase64(true); ?>" data-a="<?php echo admin_url('admin-ajax.php'); ?>" >
<div id="main">
    <header>
        <div class="container">
            <?php echo (get_field('logo', 'option') ? '<a href="' . site_url() . '" class="logo"><img src="' . get_field('logo', 'option') . '" alt="logo"></a>' : ''); ?>
        </div>
    </header>