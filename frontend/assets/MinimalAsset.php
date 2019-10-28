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
    ];
    public $js = [
        'js/bootstrap.min.js',
        'js/uikit.min.js',
        'js/uikit-icons.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
