<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AdminAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'vendor/fontawesome-free/css/all.min.css',
        'css/font-awesome/css/font-awesome.min.css',
        "//fonts.googleapis.com/css?family=Roboto&display=swap",
        'css/sb-admin-2.min.css',
    ];
    public $js = [
        'vendor/bootstrap/js/bootstrap.bundle.min.js',
        'vendor/jquery-easing/jquery.easing.min.js',
        'js/sb-admin-2.min.js',
        "js/canvas.min.js"
    ];
    public $depends = [
        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
        'yii\bootstrap4\BootstrapAsset',
    ];
}
