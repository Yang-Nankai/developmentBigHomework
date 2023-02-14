<?php

/** @var yii\web\View $this */
use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;
use yii\widgets\LinkPager;
use yii\bootstrap5\ActiveForm;

$this->title = 'blog-detail';
$this->params['breadcrumbs'][] = $this->title;
?>
<!doctype html>
<html class="no-js" lang="zxx">
<body>

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
                            <span class="brakery">俄乌冲突</span>
                            <div class="blog_details_title">
                                <h2><?php echo Html::encode($model->title);?></h2>
                            </div>
                            <div class="blog__meta d-flex align-items-center">
                                <div class="blog__meta__thumb">
                                    <img src="assets/img/others/meta-img1.png" alt="">
                                </div>
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
                            <div class="blog_details_desc">
                                <p>
                                <?php echo Html::encode($model->content);?>
                                </p>
                            </div>
                            <?php 
                                if($model->is_allow_comment){ ?>
                                <div class="comment-container container-lg mt-5">
                                <div class="card border p-2">
                                    <h2>评论</h2>
                                    <div class="card-body">
                                        <!-- 输入框 -->
                                        <?php $form = ActiveForm::begin([
                                            'options' => [
                                                'id' => 'noteEdit',
                                            ]
                                        ]); ?>
                                        <?= $form->field($message, 'content')->textarea([
                                            'rows' => 5,
                                            'maxlength' => 200,
                                        ]) ?>
                                        <!--提交列表-->
                                        <div class="input list-inline mt-3 container-fluid ">
                                            <div class="list-inline-item col-lg-auto p-0">
                                                <?= Html::submitButton('发送', ['class' => 'btn btn-info comment-btn', 'name' => 'comment-button']) ?>
                                            </div>
                                        </div>
                                        <?php ActiveForm::end(); ?>

                                        <!--留言列表-->
                                        <div class=" container-fluid mt-5 border p-2" style="border-top: red solid 2px !important;">
                                            <div class="p-1 comments">
                                                <?php 
                                                    foreach($comments as $comment):
                                                        ?>
                                                        <div class="container comment  m-1 p-0">
                                                            <div class="ml-3 border-left ">
                                                                <div class="container ml-2">
                                                                    <span><?php echo Html::encode($comment->username);?></span>
                                                                    <span class="summary-text small">
                                                                        <?php
                                                                            $datetime = new \DateTime();
                                                                            $datetime->setTimestamp($comment->created_at);
                                                                            echo $datetime->format('Y-m-d H:i:s');
                                                                        ?>
                                                                    </span>
                                                                </div>
                                                                <div class="messageText ml-2 container m-2"><?php echo Html::encode($comment->content)?></div>
                                                            </div>
                                                        </div>
                                                        <?php
                                                    endforeach;
                                                    ?>
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
                            <?php
                                }else {

                                }
                            ?>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->


</body>

</html>