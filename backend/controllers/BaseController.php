<?php
namespace backend\controllers;

use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\web\UnauthorizedHttpException;
use backend\models\SystemLog;
use Yii;
use yii\helpers\VarDumper;

class BaseController extends Controller
{

    /*public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['*'],
                //'except' => ['login','logout'],
                'rules' => [
                    [
                        'allow' => false,
                        'actions' => ['*'],
                        'roles' => ['?']
                    ],
                    [
                        'allow' => true,
                        'actions' => ['index'],
                        'roles' => ['@']
                    ]
                ],
            ],
        ];
    }*/

    public function beforeAction($action)
    {
        if (!parent::beforeAction($action)){
            return false;
        }
        //检查权限
        $controller = $action->controller->id;
        $action = $action->id;

        //保存操作日志
        if ($controller=='public'){
            self::saveAdminLog();
            return true;
        }

        if (\Yii::$app->user->can($controller.'/*')){
            self::saveAdminLog();
            return true;
        }
        if (\Yii::$app->user->can($controller.'/'.$action)){
            self::saveAdminLog();
            return true;
        }
        if (\Yii::$app->request->isAjax){
            \Yii::$app->response->format = Response::FORMAT_JSON;
            \Yii::$app->response->data = ['code' => 1, 'msg' => '未授权访问'];
            return false;
        }
        throw new UnauthorizedHttpException('未授权访问');
        self::saveAdminLog();
        return true;
    }

    /**
	 * @Desc: 保存操作日志
	 * @param array $data
	 * @return bool
	 */
	public static function saveAdminLog($data = [])
	{
		$request = Yii::$app->request;

		$moduleId = Yii::$app->controller->module->id;
		$route = strtolower(sprintf('%s/%s', Yii::$app->controller->id, Yii::$app->controller->action->id));

		$params = [
			'GET' => $request->get(),
			'POST' => $request->post(),
		];
		unset($params['GET']['_csrf_token_backend_xstnet']);
		// 密码不显示出来
		if (isset($params['POST']['password']) && !empty($params['POST']['password'])) {
			$params['POST']['password'] = '**********';
		}
        // var_dump(Yii::$app->user->identity->username);
        // varDumper::dump(Yii::$app->user->identity);
        if(Yii::$app->user->identity){
            $data = array_merge([
                'user_id' => (int) Yii::$app->user->id,
                // 'username' => (string) Yii::$app->user->identity->username,
                'route' => $route,
                'url' => $request->getUrl(),
                'params' => json_encode($params),
                'ip' => $request->getUserIP(),
                'request_method' => $_SERVER['REQUEST_METHOD'],
            ], $data);
        }
		
		$log = new SystemLog();
		$log->load($data, '');

		try {
			$log->save();
			unset($log, $data, $params, $request, $route, $moduleId);
		} catch (\Exception $e) {
			Yii::error('保存日志错误，错误原因'. $e->getMessage());
			Yii::error('日志数据: ');
			Yii::error($data);
		}
	}


}