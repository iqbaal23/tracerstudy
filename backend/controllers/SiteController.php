<?php

namespace backend\controllers;

use common\models\HasilKuisionerAlumni;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    [
                        'actions' => ['grafik', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    [
                        'actions' => ['kesesuaian', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    [
                        'actions' => ['kepuasan', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ]
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $this->layout = 'main-login';
        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionGrafik()
    {
        $data = [];
        $hasil_kuisioners = HasilKuisionerAlumni::find()->all();
        $i = 0;
        foreach ($hasil_kuisioners as $hasil_kuisioner) {
            $hasil = json_decode($hasil_kuisioner->pertanyaan_jawaban);
            $data[$hasil[31]->jawaban][$i] = $hasil[32]->jawaban[0];
            // $data[$hasil[31]->jawaban]['pr'] = $hasil[26]->jawaban[0];
            $i++;
        }
        ksort($data);
        // print_r($data);
        // exit;
        return $this->render('grafik', [
            'data' => $data,
            'hasilKuisioner' => $hasil
        ]);
    }

    public function actionKesesuaian()
    {
        $data = [];
        $hasil_kuisioners = HasilKuisionerAlumni::find()->all();
        $i = 0;
        foreach ($hasil_kuisioners as $hasil_kuisioner) {
            $hasil = json_decode($hasil_kuisioner->pertanyaan_jawaban);
            $data[$hasil[31]->jawaban][$i] = $hasil[10]->jawaban[0];
            // $data[$hasil[31]->jawaban]['pr'] = $hasil[26]->jawaban[0];
            $i++;
        }
        ksort($data);
        // exit;
        return $this->render('kesesuaian', [
            'data' => $data,
            'hasilKuisioner' => $hasil
        ]);
    }

    public function actionKepuasan()
    {
        $data = [];
        $hasil_kuisioners = HasilKuisionerAlumni::find()->all();
        $i = 0;
        foreach ($hasil_kuisioners as $hasil_kuisioner) {
            $hasil = json_decode($hasil_kuisioner->pertanyaan_jawaban);
            $data[$hasil[31]->jawaban][$i] = $hasil[11]->jawaban[0];
            // $data[$hasil[31]->jawaban]['pr'] = $hasil[26]->jawaban[0];
            $i++;
        }
        ksort($data);
        // exit;
        return $this->render('kepuasan', [
            'data' => $data,
            'hasilKuisioner' => $hasil
        ]);
    }
    
}
