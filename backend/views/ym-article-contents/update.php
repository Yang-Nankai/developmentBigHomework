<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticleContents $model */

$this->title = 'Update Ym Article Contents: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Ym Article Contents', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="ym-article-contents-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
