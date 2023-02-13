<?php

/** @var \yii\web\View $this */
/** @var string $content */

use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <!-- <title>Topic – Russia-Ukraine Conflict </title> -->
    <meta name="description"
        content="240+ Best Bootstrap Templates are available on this website. Find your template for your project compatible with the most popular HTML library in the world." />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <link rel="canonical" href="Replace_with_your_PAGE_URL" />

    <!-- Open Graph (OG) meta tags are snippets of code that control how URLs are displayed when shared on social media  -->
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="About Us" />
    <meta property="og:url" content="PAGE_URL" />
    <meta property="og:site_name" content="About Us" />
    <!-- For the og:image content, replace the # with a link of an image -->
    <meta property="og:image" content="#" />
    <meta property="og:description" content="About Us" />

    <!-- Add site Favicon -->
    <link rel="icon" href="https://hasthemes.com/wp-content/uploads/2019/04/cropped-favicon-32x32.png" sizes="32x32" />
    <link rel="icon" href="https://hasthemes.com/wp-content/uploads/2019/04/cropped-favicon-192x192.png"
        sizes="192x192" />
    <link rel="apple-touch-icon" href="https://hasthemes.com/wp-content/uploads/2019/04/cropped-favicon-180x180.png" />
    <meta name="msapplication-TileImage"
        content="https://hasthemes.com/wp-content/uploads/2019/04/cropped-favicon-270x270.png" />

    <!-- CSS 
    ========================= -->
    <!-- TimeLine CSS -->
    <link rel="stylesheet" href="css/index.svelte-40819f07.css">
    <link rel="stylesheet" href="css/Page-6e311fb6.css">

    <link rel="stylesheet" href="css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.min.css">
    <link rel="stylesheet" href="css/index.min.css">
    <link rel="stylesheet" href="css/index.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!--modernizr min js here-->
    <script src="js/vendor/modernizr-3.11.2.min.js"></script>


    <!-- Structured Data  -->
    <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "WebSite",
        "name": "Replace_with_your_site_title",
        "url": "Replace_with_your_site_URL"
        }
    </script>
</head>

<body>
<?php $this->beginBody() ?>

    <!--offcanvas menu area start-->
    <div class="body_overlay">

    </div>

    <div class="offcanvas_menu">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="offcanvas_menu_wrapper">
                        <div class="canvas_close">
                            <a href="javascript:void(0)"><i class="ion-android-close"></i></a>
                        </div>
                        <div class="welcome_text text-center">
                            <p>Welcome to Topic – Russia-Ukraine Conflict</p>
                        </div>
                        <div id="menu" class="text-left ">
                            <ul class="offcanvas_main_menu">
                                <li class="menu-item-has-children active">
                                    <?php echo Html::a('Home',['/site/index']); ?>
                                </li>
                                <li> <?php echo Html::a('About Us',['/site/about']); ?> </li>
                                <li> <?php echo Html::a('Blog',['/site/blog']); ?> </li>
                                <li class="menu-item-has-children"><a href="#">Homework</a>
                                    <ul class="sub-menu">
                                        <li> <?php echo Html::a('Personal',['/site/personal']); ?> </li>
                                        <li> <?php echo Html::a('Team',['/site/team']); ?> </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><?php echo Html::a('Contact Us',['/site/contact']); ?></li>
                                <li class="menu-item-has-children"><?php echo Html::a('Comment',['/site/comment']); ?></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--offcanvas menu area end-->

    <!--header area start-->
    <header class="header_section">
        <div class="header_top">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="header_top_inner d-flex justify-content-between">
                            <div class="welcome_text">
                                <p>Welcome to the topic — Russia-Ukraine Conflict</p>
                            </div>
                            <div class="header_top_sidebar d-flex align-items-center">
                                <ul class="d-flex">
                                    <li><i class="icofont-phone"></i> <a href="https://www.nankai.edu.cn/">Nankai University</a>
                                    </li>
                                    <li><i class="icofont-envelope"></i> <a
                                            href="#">互联网数据库开发课程</a></li>
                                    <li class="account_link"> <i class="icofont-user-alt-7"></i><a href="#">我猜你不队</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="main_header d-flex justify-content-between align-items-center">
                        <div class="header_logo">
                            <a class="sticky_none" href="index.php"><img src="img/logo/logo.png" alt=""></a>
                        </div>
                        <!--main menu start-->
                        <div class="main_menu d-none d-lg-block">
                            <nav>
                                <ul class="d-flex">
                                    <li><a class="active" href="index.php">Home</a></li>
                                    <li><?php echo Html::a('About',['/site/about']); ?></li>
                                    <li><?php echo Html::a('Blog',['/site/blog']); ?></li>
                                    <li><a href="#">HOMEWORK</a>
                                        <ul class="bucker-dropdown">
                                            <li><?php echo Html::a('PERSONAL',['/site/personal']); ?></li>
                                            <li><?php echo Html::a('TEAM',['/site/team']); ?></li>
                                        </ul>
                                    </li>
                                    <li><?php echo Html::a('CONTACT',['/site/contact']); ?></li>
                                    <li><?php echo Html::a('COMMENT',['/site/comment']); ?></li>
                                </ul>
                            </nav>
                        </div>
                        <!--main menu end-->
                        <div class="header_account">
                            <ul class="d-flex">
                            <?php if (Yii::$app->user->isGuest) {
                                echo Html::tag('li',Html::a('',['/site/login'],['class' => ['pe-7s-user']]),['class' => ['header_wishlist']]);
                            } else {
                                ?>
                                <?php
                                echo Html::beginForm(['/site/logout'], 'post')
                                    . Html::submitButton(
                                        ' [' . Yii::$app->user->identity->username . ']',
                                        ['class' => 'pe-7s-settings']
                                    )
                                    . Html::endForm();
                            } ?>
                            </ul>
                            <div class="canvas_open">
                                <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

<main>
    <?= $content ?>
</main>

<!--footer area start-->
<footer class="footer_widgets">
    <div class="container">
        <div class="main_footer">
            <div class="row">
                <div class="col-12">
                    <div class="main_footer_inner d-flex">
                        <div class="footer_widget_list contact footer_list_width">
                            <div class="footer_contact_info">
                                <div class="footer_contact_info_list d-flex align-items-center">
                                    <div class="footer_contact_info_icon">
                                        <span class="pe-7s-map-marker"></span>
                                    </div>
                                    <div class="footer_contact_info_text">
                                        <p>Nankai University, Tianjin China</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer_menu_widget footer_list_width middle d-flex">
                            <div class="footer_bottom">
                                <p>&copy; <?= Html::encode(Yii::$app->name) ?> <?= date('Y') ?> &nbsp;&nbsp;&nbsp;
                                <?= Yii::powered() ?> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--footer area end-->

    <!-- JS
============================================ -->

<script src="js/vendor/jquery-3.6.0.min.js"></script>
<script src="js/vendor/jquery-migrate-3.3.2.min.js"></script>
<script src="js/vendor/bootstrap.bundle.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.scrollup.min.js"></script>
<script src="js/jquery.nice-select.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/mailchimp-ajax.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src='js/scrolldown.js'></script>
<!-- Main JS -->
<script src="js/main.js"></script>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage();
