<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\YmArticleContents $model */

$this->title = 'Create Ym Article Contents';
$this->params['breadcrumbs'][] = ['label' => 'Ym Article Contents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ym-article-contents-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
