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
use common\models\UploadForm;
use yii\web\UploadedFile;
use yii\helpers\Url;
use yii\helpers\VarDumper;

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
                $item['updateUrl'] = Url::to(['update','id'=>$item['id']]);//更新按钮
                $item['destroyUrl'] = Url::to(['destroy','id'=>$item['id']]);
            }
            return $this->asJson([
                'code' => 0,
                'msg' => '请求成功',
                'count' => $count,
                'data' => $data
            ]);
        }
        return $this->render('index');
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
            if ($model->load($this->request->post(),'') && $model->save()) {
                // $model->set_title_image('uploads/' . $image->imageFile->baseName . '.' . $image->imageFile->extension);
                return $this->redirect(['index']);
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

        if ($model === null){
            throw new NotFoundHttpException('数据不存在');
        }

        if (Yii::$app->request->isPost){
            if ($model->load(Yii::$app->request->post(),'')&&$model->save()){
                Yii::$app->session->setFlash('info','更新成功');
                return $this->redirect(['index']);
            }
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
    public function actionDestroy(int $id)
    {
        $model = YmArticle::findOne($id);
        if ($model === null){
            return $this->asJson(['code'=>1,'msg'=>'文章不存在']);
        }
        if ($model->delete()){
            return $this->asJson(['code'=>0,'msg'=>'删除成功']);
        }
        return $this->asJson(['code'=>1,'msg'=>'删除失败']);
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
