<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var common\models\YmArticle $model */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Ym Articles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="ym-article-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'user_id',
            'category_id',
            'title',
            'title_style',
            'title_image',
            'author',
            'description',
            'hits',
            'comment_count',
            'is_allow_comment',
            'top',
            'is_show',
            'bad',
            'is_delete',
            'is_hot',
            'sort_value',
            'keyword',
            'source',
            'from_platform',
            'created_at',
            'updated_at',
        ],
    ]) ?>

</div>
