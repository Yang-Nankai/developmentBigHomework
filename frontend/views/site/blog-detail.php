<?php

/** @var yii\web\View $this */
use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

$this->title = 'blog-detail';
$this->params['breadcrumbs'][] = $this->title;
?>
<!doctype html>
<html class="no-js" lang="zxx">
<body>

    <!-- breadcrumbs area start -->
    <div class="breadcrumbs_aree breadcrumbs_bg mb-100" data-bgimg="assets/img/others/breadcrumbs-bg.png">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumbs_text">
                        <h1>Blog</h1>
                        <ul>
                            <li><a href="index.html">Home </a></li>
                            <li> // Blog Detail Fullwidth</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!--blog body area start-->
    <div class="blog_details_section">
        <div class="container">
            <div class="row">
                <div class="offset-lg-2 col-lg-8">
                    <div class="blog_details_left">
                        <div class="blog_sticky_thumb">
                            <img src="assets/img/blog/blog-sticky.png" alt="">
                        </div>
                        <div class="blog_details_content ">
                            <span class="brakery">Brakery</span>
                            <div class="blog_details_title">
                                <h2>Lorem ipsum dolor sit amet, consectetur
                                    adipisicing elit, sed do eiusmod</h2>
                            </div>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="assets/img/others/meta-img1.png" alt="">
                                </div>
                                <div class="blog__meta__text">
                                    <ul class="d-flex">
                                        <li>By: Admin</li>
                                        <li><i class="icofont-calendar"></i> 22 Aug, 2021</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog_details_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquippl ex ea commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                    deseruntmh mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus
                                    error sit voluptatem a doloremquej laudantium, totam rem aperiam, eaque ipsa quae
                                </p>
                            </div>
                            <div class="blog_details_blockquote" data-bgimg="assets/img/blog/blockcode-bg.png">
                                <blockquote class="blockquote__text text-center">
                                    <h4>Lorem ipsum dolor sit amet, consectetur adipisicin elit, sed do eiusmod tempor
                                        incidi </h4>
                                </blockquote>
                            </div>
                            <div class="blog_details_desc">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquippl ex ea commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                    deseruntmh mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus
                                    error sit voluptatem a doloremquej laudantium, totam rem aperiam, eaque ipsa quae
                                </p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labor edol magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex eajkl commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugia nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, </p>
                            </div>
                            <div class="blog_related_gallery">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="blog_related_thumb">
                                            <img src="assets/img/blog/blog2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="blog_related_thumb">
                                            <img src="assets/img/blog/blog3.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog_details_desc">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquippl ex ea commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                    deseruntmh mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus
                                    error sit voluptatem a doloremquej laudantium, totam rem aperiam, eaque ipsa quae
                                </p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labor edol magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex eajkl commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugia nulla
                                    pariatur. Excepteur sint occaecat cupidatat non proident, </p>
                            </div>
                            <div class="post_tags_social d-flex justify-content-between">
                                <div class="post_tags d-flex align-items-center">
                                    <i class="icofont-tags"></i>
                                    <ul class="d-flex">
                                        <li><a href="#">Cookies,</a></li>
                                        <li><a href="#">Desserts,</a></li>
                                        <li><a href="#">Muffins</a></li>
                                    </ul>
                                </div>
                                <div class="post__social">
                                    <ul class="d-flex">
                                        <li><a href="#"><i class="icofont-facebook"></i></a></li>
                                        <li><a href="#"><i class="icofont-dribble"></i></a></li>
                                        <li><a href="#"><i class="icofont-pinterest"></i></a></li>
                                        <li><a href="#"><i class="icofont-vimeo"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog_comment_wrapper">
                                <div class="comments_box">
                                    <div class="comments_title">
                                        <h2>Comments 03</h2>
                                    </div>
                                    <div class="comment_list d-flex">
                                        <div class="comment_thumb">
                                            <img src="assets/img/blog/post-comment1.png" alt="">
                                        </div>
                                        <div class="comment_content">
                                            <a href="#"><i class="icofont-reply"></i> Reply</a>
                                            <h5>Jakobe Snell <br> <span> 22 Aug, 2021</span></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusml
                                                tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris</p>
                                        </div>
                                    </div>
                                    <div class="comment_list middle d-flex">
                                        <div class="comment_thumb">
                                            <img src="assets/img/blog/post-comment2.png" alt="">
                                        </div>
                                        <div class="comment_content">
                                            <a href="#"><i class="icofont-reply"></i> Reply</a>
                                            <h5>Ramon Bateman <br> <span> 22 Aug, 2021</span></h5>
                                            <p>Lorem ipsum dolor sit amet, sed do eiusml tempor incididunt ut labore etl
                                                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                                ullamco laboris</p>
                                        </div>
                                    </div>
                                    <div class="comment_list d-flex">
                                        <div class="comment_thumb">
                                            <img src="assets/img/blog/post-comment3.png" alt="">
                                        </div>
                                        <div class="comment_content">
                                            <a href="#"><i class="icofont-reply"></i> Reply</a>
                                            <h5>Jakobe Snell <br> <span> 22 Aug, 2021</span></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusml
                                                tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="comments_form">
                                    <div class="comments_title">
                                        <h2>Leave A Comment</h2>
                                    </div>
                                    <div class="comments_form_inner">
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-lg-6 ">
                                                    <div class="comments_form_input">
                                                        <input class="border" placeholder="Name *" type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 ">
                                                    <div class="comments_form_input">
                                                        <input class="border" placeholder="Email *" type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="comments_form_input">
                                                        <input class="border" placeholder="Subject (Optinal)"
                                                            type="text">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="comments_form_input">
                                                        <textarea class="border" placeholder="Message"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-link" type="submit">Post A Comment</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->


</body>

</html>