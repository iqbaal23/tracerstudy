<?php

namespace frontend\controllers;

use Yii;
use common\models\Lowongan;
use common\models\LowonganSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\Url;

/**
 * LowonganController implements the CRUD actions for Lowongan model.
 */
class LowonganController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                
                'rules' => [
                    [
                        'actions' => ['login'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index','error','view','create','update'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
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
     * Lists all Lowongan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new LowonganSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Lowongan model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Lowongan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Lowongan();

        $data = Yii::$app->request->post();
        if ($model->load(Yii::$app->request->post())) {
            $foto = UploadedFile::getInstance($model, 'file');

            $model->file = $foto->baseName . '.' . $foto->extension;
            // $foto->saveAs($_SERVER['DOCUMENT_ROOT'] . '/tracerstudy.puslit-suska.com/backend/web/lowongan/' . $foto->baseName . '.' . $foto->extension);
            // $foto->saveAs('http://localhost/tracerstudy.puslit-suska.com/backend/web/lowongan/' . $foto->baseName . '.' . $foto->extension);
            $foto->saveAs(
                Url::to('@backend/web/images/') . $foto->baseName . '.' . $foto->extension
            );


            $model->save();
            // var_dump();
            //exit();
            return $this->redirect(['view', 'id' => $model->lowongan_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Lowongan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $gambar = $model->file;
        if ($model->load(Yii::$app->request->post())) {
            $foto = UploadedFile::getInstance($model, 'file');

            if (!empty($gambar) && $foto->size != 0) {
                $foto->saveAs(Yii::$app->basePath . '/web/lowongan/' . $foto->baseName . '.' . $foto->extension);
                $model->file = $foto->baseName . '.' . $foto->extension;
            } else {
                $model->file = $gambar;
            }

            $model->save();
            return $this->redirect(['view', 'id' => $model->lowongan_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Lowongan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Lowongan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Lowongan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Lowongan::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
