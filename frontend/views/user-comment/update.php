<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var frontend\models\UserComment $model */

$this->title = 'Update User Comment: ' . $model->cid;
$this->params['breadcrumbs'][] = ['label' => 'User Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->cid, 'url' => ['view', 'cid' => $model->cid]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="user-comment-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
