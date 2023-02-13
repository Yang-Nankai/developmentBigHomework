<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var common\models\YmArticle $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="ym-article-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'category_id')->textInput() ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'title_style')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'title_image')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'author')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hits')->textInput() ?>

    <?= $form->field($model, 'comment_count')->textInput() ?>

    <?= $form->field($model, 'is_allow_comment')->textInput() ?>

    <?= $form->field($model, 'top')->textInput() ?>

    <?= $form->field($model, 'is_show')->textInput() ?>

    <?= $form->field($model, 'bad')->textInput() ?>

    <?= $form->field($model, 'is_delete')->textInput() ?>

    <?= $form->field($model, 'is_hot')->textInput() ?>

    <?= $form->field($model, 'sort_value')->textInput() ?>

    <?= $form->field($model, 'keyword')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'source')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'from_platform')->dropDownList([ '其他' => '其他', '安卓' => '安卓', 'IOS' => 'IOS', '微信端' => '微信端', '手机端' => '手机端', 'PC端' => 'PC端', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
