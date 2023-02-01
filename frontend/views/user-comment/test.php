<div class="user-comment-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create User Comment', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'cid',
            'username',
            'email:email',
            'comment',
            'created_at',
            //'status',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, UserComment $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'cid' => $model->cid]);
                 }
            ],
        ],
    ]); ?>


</div>