<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticle $model */

$this->title = 'Update Ym Article: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Ym Articles', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="ym-article-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
