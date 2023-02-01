<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var frontend\models\UserComment $model */

$this->title = 'Create User Comment';
$this->params['breadcrumbs'][] = ['label' => 'User Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-comment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
