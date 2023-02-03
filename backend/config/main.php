<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'defaultRoute' => 'site/index',
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
        'assetManager' => [
			'basePath' => '@webroot/assets',
			'baseUrl' => '@web/assets',
		],
        'request' => [
            'csrfParam' => '_csrf_token_backend_xstnet',
        ],
        'user' => [
            'identityClass' => 'common\models\AdminUser',
            'enableAutoLogin' => true,
            'loginUrl' => 'login/index',
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
					'levels' => ['error', 'warning', ],
					'logVars' => ['_GET', '_POST', ],
					'enableRotation' => true, //开启日志文件分段写入，默认每个文件大小为10M
					'maxFileSize' => 10240, // KB
					'maxLogFiles' => 10, // 最多允许分段10个文件 如： backend-2018-10.1.log, backend-2018-10.2.log
					'logFile' => sprintf("@backend/runtime/logs/backend-%s.log",date('Y-m')),
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
        'response' => [
			'class' => 'yii\web\Response',
			'on beforeSend' => function ($event) {
				// 返回的错误信息只显示code和message
				$response = $event->sender;
				// 业务逻辑错误
				if (isset($response->data['code']) && $response->data['code'] !== 0) {
					$response->data = [
						'code' => $response->data['code'],
						'message' => $response->data['message'],
					];
				}
				$response->statusCode = 200; // 错误信息返回码同样200
			},
		],
    ],
    'params' => $params,
];
