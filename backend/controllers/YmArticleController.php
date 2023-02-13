<?php

/**
 * Desc: Manager article show, delete, add
 * Created by Xiaoduo.
 */

namespace backend\controllers;
use Yii;
use common\models\YmArticle;
use common\models\YmArticleSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Url;

/**
 * YmArticleController implements the CRUD actions for YmArticle model.
 */
class YmArticleController extends BaseController
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all YmArticle models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new YmArticleSearch();

        if (Yii::$app->request->isAjax){
            Yii::info("这里进行了一次js搜索"); 
            $article = (new YmArticle())->find();
            $count = $article->count();
            $page = Yii::$app->request->get('page',1);
            $limit = Yii::$app->request->get('limit',10);
            $author = Yii::$app->request->get('author');
            $title = Yii::$app->request->get('title');
            $data = $article->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            if ($author){
                $article->where(['like','author',$author]);
            }
            if ($title){
                $article->where(['like','title',$title]);
            }
            $data = $article->offset(($page-1)*$limit)->limit($limit)->asArray()->all();
            // 添加操作
            foreach ($data as &$item){
                $item['viewUrl'] = Url::to(['view','id'=>$item['id']]);//查看按钮
                $item['updateUrl'] = Url::to(['update','id'=>$item['id']]);//更新按钮
                $item['destroyUrl'] = Url::to(['destroy','id'=>$item['id']]);
                // $item['roles'] = Yii::$app->authManager->getRolesByUser($item['id']);
            }
            return $this->asJson([
                'code' => 0,
                'msg' => '请求成功',
                'count' => $count,
                'data' => $data
            ]);
        }
        else{
            $dataProvider = $searchModel->search($this->request->queryParams);
            // $article = (new YmArticle())->find();
            // $author = Yii::$app->request->get('author');
            // $title = Yii::$app->request->get('title');
            // if ($author){
            //     $article->where(['like','author',$author]);
            // }
            // if ($title){
            //     $title->where(['like','title',$title]);
            // }
            // $data = $article->asArray()->all();
            // return $this->asJson([
            //     'code' => 0,
            //     'msg' => '请求成功',
            //     'data' => $data
            // ]);
        }
        

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single YmArticle model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new YmArticle model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new YmArticle();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing YmArticle model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing YmArticle model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the YmArticle model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return YmArticle the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = YmArticle::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
