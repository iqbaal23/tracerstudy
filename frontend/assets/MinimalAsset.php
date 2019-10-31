<?php

/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com,
 * @since 2.0
 */
class MinimalAsset extends AssetBundle
{

    public $basePath = '@webroot';
    public $baseUrl = '@web/themes/minimal/';
    public $css = [
        'css/minimal-main.css',
        'css/theme.css',
        'css/uikit.min.css',
        'https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css',
        'https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css'
    ];
    public $js = [
        'js/bootstrap.min.js',
        'js/uikit.min.js',
        'js/uikit-icons.min.js',
        "js/canvas.min.js",
        'https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js',
        'https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap.min.js',
        'https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js',
        'https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
