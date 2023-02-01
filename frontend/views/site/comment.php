
<?php

/** @var yii\web\View $this */

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\bootstrap5\ActiveForm;

$this->title = 'Comment';
$this->params['breadcrumbs'][] = $this->title;
?>

<!doctype html>
<html class="no-js" lang="zxx">

<body>
    <!-- breadcrumbs area start -->
    <div class="breadcrumbs_aree breadcrumbs_bg mb-110">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumbs_text">
                        <h1>留言板</h1>
                        <ul>
                            <li><?php echo Html::a('HOME',['/site/index']); ?></li>
                            <li> // Comment</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->

    <div class="comment-container container-lg mt-5">
        <div class="card border p-2">
            <h2>留言</h2>
            <div class="card-body">
                <!-- 输入框 -->
                <?php $form = ActiveForm::begin([
                    'options' => [
                        'id' => 'noteEdit',
                    ]
                ]); ?>
                <?= $form->field($comment, 'content')->textarea([
                    'rows' => 5,
                    'maxlength' => 200,
                ]) ?>
                <!-- <div id="noteEdit">
                    <textarea name="content" rows="5"  maxlength="200" placeholder="请输入，最多200个字符..." ></textarea>
                </div> -->
                <!--提交列表-->
                <div class="input list-inline mt-3 container-fluid ">
                    <div class="list-inline-item col-lg-auto p-0">
                        <!-- <button type="button" class="btn  btn-info " style="width: 100%;height: 100%; color: white;">发送</button> -->
                        <?= Html::submitButton('发送', ['class' => 'btn btn-info comment-btn', 'name' => 'comment-button']) ?>
                    </div>
                </div>
                <?php ActiveForm::end(); ?>

                <!--留言列表-->
                <div class=" container-fluid mt-5 border p-2" style="border-top: red solid 2px !important;">
                    <div class="p-1 comments">
                        <?php 
                            foreach($models as $model):
                                ?>
                                <div class="container comment  m-1 p-0">
                                    <div class="ml-3 border-left ">
                                        <div class="container ml-2">
                                            <span><?php echo Html::encode($model->username);?></span>
                                            <span class="summary-text small">
                                                <?php
                                                    $datetime = new \DateTime();
                                                    $datetime->setTimestamp($model->created_at);
                                                    echo $datetime->format('Y-m-d H:i:s');
                                                ?>
                                            </span>
                                        </div>
                                        <div class="messageText ml-2 container m-2"><?php echo Html::encode($model->comment)?></div>
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
                        <!-- <div class="container comment  m-1 p-0">
                            <div class=" ml-3 border-left ">
                                <div class="container ml-2">
                                    <a class="author">
                                        <span>王也</span>
                                        <span class="summary-text small">2020-04-10 16:01:27</span>
                                    </a>
                                </div>
                                <div class="messageText ml-2 container m-2">诸葛青，你败过吗？</div>
                            </div>

                        </div>
                        <div class="container comment  m-1 p-0">
                            <div class=" ml-3 border-left ">
                                <div class="container ml-2">
                                    <a class="author">
                                        <span>冯宝宝</span>
                                        <span class="summary-text small">2020-04-10 16:01:27</span>
                                    </a>
                                </div>
                                <div class="messageText ml-2 container m-2">他们总说我瓜，其实我一点也不瓜，大多时候我都机智的一批</div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>