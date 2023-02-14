<?php

/** @var yii\web\View $this */

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\bootstrap5\ActiveForm;
$this->title = 'Blog';
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
                        <h1>博客新闻</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Blog</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <!-- blog page section start -->
    <div class="blog_page_section mb-110">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 order-2 order-lg-1">
                    <div class="blog_sidebar blog_widget">
                        <div class="blog_widget_list tags">
                            <h3>标签</h3>
                            <div class="widget_tags">
                                <ul>
                                    <li><a href="#">俄乌冲突</a></li>
                                    <li><a href="#">战争</a></li>
                                    <li><a href="#">和平</a></li>
                                    <li><a href="#">伤亡</a></li>
                                    <li><a href="#">战场</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 order-1 order-lg-2">
                    <div class="blog_page_sidebar">
                        <div class="blog_page_inner">
                            <div class="row">
                            <?php 
                                foreach($models as $model):
                                ?>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="single_blog wow fadeInUp" data-wow-delay="0.1s"
                                        data-wow-duration="1.1s">
                                        <div class="blog_content">
                                            <div class="blog_arrow_btn">
                                                <a href="<?php echo \yii\helpers\Url::to(['blog/view', 'id'=>$model->id]); ?>"><i
                                                        class="ion-arrow-right-c"></i></a>
                                            </div>
                                            <span>俄乌冲突</span>
                                            <h3><?php echo Html::encode($model->title);?></h3>
                                            <div class="blog__meta d-flex align-items-center">
                                                <div class="blog__meta__text">
                                                    <ul class="d-flex">
                                                        <li>By: <?php echo Html::encode($model->author);?></li>
                                                        <li><i class="icofont-calendar"></i>
                                                            <?php
                                                                $datetime = new \DateTime();
                                                                $datetime->setTimestamp($model->created_at);
                                                                echo $datetime->format('Y-m-d H:i:s');
                                                            ?>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            endforeach;
                            ?>
                            </div>
                        </div>
                        <div class="comment-pagination">
                            <?php echo LinkPager::widget([ 
                                'pagination' => $pages, 
                                'nextPageLabel' => false, 
                                'prevPageLabel' => false, 
                                'options' => ['class' => 'pagination']
                              ]);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog page section end -->
</body>

</html>