<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticleComment $model */

$this->title = 'Create Ym Article Comment';
$this->params['breadcrumbs'][] = ['label' => 'Ym Article Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ym-article-comment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
