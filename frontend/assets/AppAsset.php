<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/animate.css',
        'css/ionicons.min.css',
        'css/jquery-ui.min.css',
        'css/magnific-popup.css',
        'css/nice-select.css',
        'css/owl.carousel.min.css',
        'css/pe-icon-7-stroke.css',
        'css/slick.css',
        'css/style.css',
        'css/vendor/bootstrap.min.css',
    ];
    public $js = [
        'js/vendor/bootstrap.bundle.min.js',
        'js/vendor/jquery-3.6.0.min.js',
        'js/vendor/jquery-migrate-3.3.2.min.js',
        'js/vendor/modernizr-3.11.2.min.js',
        'js/ajax-mail.js',
        'js/jquery-ui.min.js',
        'js/jquery.magnific-popup.min.js',
        'js/jquery.nice-select.js',
        'js/jquery.scrollup.min.js',
        'js/jquery.zoom.min.js',
        'js/mailchimp-ajax.js',
        'js/main.js',
        'js/owl.carousel.min.js',
        'js/slick.min.js',
        'js/wow.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap5\BootstrapAsset',
    ];
}
