<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticleCategory $model */

$this->title = 'Create Ym Article Category';
$this->params['breadcrumbs'][] = ['label' => 'Ym Article Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ym-article-category-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
