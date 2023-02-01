<?php

use frontend\models\UserComment;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\VarDumper;

/** @var yii\web\View $this */
/** @var frontend\models\UserCommentSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

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
                <!--输入框-->
                <div id="noteEdit">
                    <!-- <textarea name="note"></textarea> -->
                    <textarea name="note" rows="5"  maxlength="200" placeholder="请输入，最多200个字符..." οnchange="this.value=this.value.substring(0, 200)" οnkeydοwn="this.value=this.value.substring(0, 200)" οnkeyup="this.value=this.value.substring(0, 200)" ></textarea>
                </div>
                <!--提交列表-->
                <div class="input list-inline mt-3 container-fluid ">
                    <div class="row ">
                        <div class="  list-inline-item align-self-center  col-lg-auto p-0 ">
                            <div class="container-fluid mt-2 ">
                                <label>匿名</label>
                                <label class="switch">
                                    <input type="checkbox">
                                    <div class="slider round"></div>
                                </label>
                            </div>
                        </div>
                        <div class="  list-inline-item col-lg-auto  p-0">
                            <button type="button" class="btn  btn-info " style="width: 100%;height: 100%; color: white;">发送</button>
                        </div>
                    </div>
                </div>
                
                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        'username',
                        'comment',
                        'created_at',
                    ],
                ]); ?>

                <!--留言列表-->
                <!-- <div class=" container-fluid mt-5 border p-2" style="border-top: red solid 2px !important;">
                    <div class="p-1 comments">
                                <div class="container comment  m-1 p-0">
                                    <div class=" ml-3 border-left ">
                                        <div class="container ml-2">
                                            <a class="author">
                                                <span><span>
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
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</body>

</html>