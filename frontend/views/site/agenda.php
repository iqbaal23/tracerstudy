<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Agenda';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-agenda">
    <h1><?= Html::encode($this->title) ?></h1>

            <div class="tm-timeline-entry">
                <div class="tm-timeline-time">
                    <h4 style="color:black">Oct 20, 2017</h4>
                </div>
                <div class="tm-timeline-body">
                    <h2 class="uk-margin-medium-bottom">Version 1.1.0</h2>
                    <ul class="uk-list uk-list-medium">
                        <li>Added Slideshow component</li>
                        <li>Added style support for radio and minusbox in Firefox</li>
                        <li>Removed class from Section component</li>
                        <li>Allow fullscreen mode for videos in Lightbox</li>
                        <li>Fixed responsive images in modal for IE11</li>
                        <li>Fix Grid and Margin component for cells with no height</li>
                        <li>Larger horizontal padding for form input and textarea</li>
                    </ul>
                </div>
            </div>
            <div class="tm-timeline-entry uk-margin-xlarge-top">
                <div class="tm-timeline-time">
                    <h4 style="color:black">Aug 18, 2017</h4>
                </div>
                <div class="tm-timeline-body">
                    <h2 class="uk-margin-medium-bottom">Version 1.0.1</h2>
                    <ul class="uk-list uk-list-medium">
                        <li>Media options now support any valid media query syntax</li>
                        <li>Added style support for radio and checkbox in Firefox</li>
                        <li>Fix whitespace trimming in dist</li>
                        <li>Allow fullscreen mode for YouTube videos in Lightbox</li>
                        <li>Fix icons not displaying if connected in rapid succession</li>
                    </ul>
                </div>
            </div>
            <div class="tm-timeline-entry uk-margin-xlarge-top">
                <div class="tm-timeline-time">
                    <h4 style="color:black">Jun 11, 2017</h4>
                </div>
                <div class="tm-timeline-body">
                    <h2 class="uk-margin-medium-bottom">Version 1.0.0</h2>
                    <ul class="uk-list uk-list-medium">
                        <li>Fix scrollbar jumping in Switcher</li>
                        <li>Added style support for radio and checkbox in Firefox</li>
                        <li>Removed class from Section component</li>
                        <li>Add workaround to mitigate the duplicating icons issue</li>
                        <li>Fixed responsive images in modal for IE11</li>
                    </ul>
                </div>
            </div>


</div>