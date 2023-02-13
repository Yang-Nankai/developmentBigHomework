<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticle $model */

$this->title = 'Create Ym Article';
$this->params['breadcrumbs'][] = ['label' => 'Ym Articles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ym-article-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
