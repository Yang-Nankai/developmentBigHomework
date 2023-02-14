<?php

use common\models\YmArticle;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var common\models\YmArticleSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Ym Articles';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ym-article-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Ym Article', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'user_id',
            'category_id',
            'title',
            'title_style',
            //'title_image',
            //'author',
            //'description',
            //'hits',
            //'comment_count',
            //'is_allow_comment',
            //'top',
            //'is_show',
            //'bad',
            //'is_delete',
            //'is_hot',
            //'sort_value',
            //'keyword',
            //'source',
            //'from_platform',
            //'created_at',
            //'updated_at',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, YmArticle $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
