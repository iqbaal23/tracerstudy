<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p class="text-capitalize">
                    <?= Yii::$app->user->identity->username ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i
                                class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                'items' => [
                    ['label' => 'Menu', 'options' => ['class' => 'header']],
                    ['label' => 'Dashboard', 'icon' => 'dashboard', 'url' => ['/site/index']],
                    ['label' => 'Data Alumni', 'icon' => 'users', 'url' => ['/alumni/index']],
                    ['label' => 'Data Kusioner Soal', 'icon' => 'list', 'url' => ['/kuisioner/index']],
                    ['label' => 'Data Title', 'icon' => 'list', 'url' => ['/title/index']],
                    ['label' => 'Data Jurusan', 'icon' => 'list', 'url' => ['/jurusan/index']],
                    ['label' => 'Info Lowongan', 'icon' => 'list-alt', 'url' => ['/lowongan/index']],
                    ['label' => 'Menu Frontend', 'options' => ['class' => 'header']],
                    ['label' => 'Berita', 'icon' => 'info', 'url' => ['/berita/index']],
                    ['label' => 'Hasil Kusioner', 'options' => ['class' => 'header']],
                    ['label' => 'Hasil Kusioner', 'icon' => 'bandcamp', 'url' => ['/hasil-kuisioner-alumni/index']],
                    ['label' => 'Data Kusioner Perusahaan', 'icon' => 'bandcamp', 'url' => ['/hasil-kuisioner-perusahaan/index']],

                    // ['label' => 'Data Berita', 'icon' => 'list-alt', 'url' => ['/berita/index']],
                ],
            ]
        ) ?>

    </section>

</aside>