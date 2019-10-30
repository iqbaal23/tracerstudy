<?php

namespace frontend\controllers;

use common\models\HasilKuisionerAlumni;
use common\models\Alumni;
use common\models\Jurusan;
use common\models\Kuisioner;
use frontend\models\ResendVerificationEmailForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\models\Lowongan;
use common\models\User;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;
use common\models\Berita;
use common\models\HasilKuisionerPerusahaan;

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
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
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
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

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
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending your message.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

     /**
     * Displays agenda page.
     *
     * @return mixed
     */
    public function actionAgenda()
    {
        return $this->render('agenda');
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        $modelAlumni = new Alumni();
        $jurusan = Jurusan::find()->all();
        $listData = ArrayHelper::map($jurusan, 'id_jurusan', 'nama_jurusan');
        $data = Yii::$app->request->post();


        $foto = UploadedFile::getInstance($modelAlumni, 'foto');

        if ($model->load(Yii::$app->request->post())) {
            // $data['Alumni']['foto'] = $foto->name;

            // var_dump(Yii::getAlias('@alumniImgPath') . '/' . $foto->baseName . $foto->getExtension());
            // exit();
            $modelAlumni->load(Yii::$app->request->post());
            if ($modelAlumni->foto != NULL) {
                $foto->saveAs(Yii::getAlias('@alumniImgPath') . '/' . $foto->baseName . $foto->getExtension());
                // exit();
            } else {
                $modelAlumni->foto = null;
            }

            $modelAlumni->username = $data['SignupForm']['username'];
            $modelAlumni->foto = $foto->name;
            $modelAlumni->email = $data['SignupForm']['email'];
            $modelAlumni->reg = date('Ymd') . $data['SignupForm']['username'];
            $modelAlumni->save(false);
            // exit();
            $model->signup(date('Ymd') . $data['SignupForm']['username']);
            Yii::$app->session->setFlash('success', 'Terima Kasih Telah Mendaftar');
            return $this->goHome();
        }

        return $this->render('signup', [
            'model' => $model,
            'Alumni' => $modelAlumni,
            'jurusan' => $listData
        ]);
    }

    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Verify email address
     *
     * @param string $token
     * @throws BadRequestHttpException
     * @return yii\web\Response
     */
    public function actionVerifyEmail($token)
    {
        try {
            $model = new VerifyEmailForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($user = $model->verifyEmail()) {
            if (Yii::$app->user->login($user)) {
                Yii::$app->session->setFlash('success', 'Your email has been confirmed!');
                return $this->goHome();
            }
        }

        Yii::$app->session->setFlash('error', 'Sorry, we are unable to verify your account with provided token.');
        return $this->goHome();
    }

    /**
     * Resend verification email
     *
     * @return mixed
     */
    public function actionResendVerificationEmail()
    {
        $model = new ResendVerificationEmailForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            }
            Yii::$app->session->setFlash('error', 'Sorry, we are unable to resend verification email for the provided email address.');
        }

        return $this->render('resendVerificationEmail', [
            'model' => $model
        ]);
    }


    public function actionTracerStudy()
    {
        return $this->render('tracerstudy');
    }
    public function actionAlumni()
    {
        $alumni = Kuisioner::find()->where(['tujuan' => "alumni"])->all();
        return $this->render('alumni', ['kuisioners' => $alumni]);
    }
    public function actionPerusahaan()
    {
        $alumni = Kuisioner::find()->where(['tujuan' => "user"])->all();
        // $alumni = Kuisioner::find()->where(['tujuan' => "alumni"])->all();

        // var_dump($alumni);
        // exit();
        return $this->render('perusahaan', ['kuisioners' => $alumni]);
    }

    public function actionJurusan()
    {
        $dataJurusan = Jurusan::find()->all();
        return $this->render('jurusan/index', ['jurusans' => $dataJurusan]);
    }

    public function actionLowongan()
    {
        $dataLowongan = Lowongan::find()->orderBy(['lowongan_id' => SORT_DESC])->all();
        return $this->render('lowongan/index', ['lowongans' => $dataLowongan]);
    }
    public function actionPostAlumni()
    {

        $data = Yii::$app->request;
        if ($data->isPost) {
            $post = $data->post();
            $nama = $post['nama'];
            $pertanyaan = $post['pertanyaan'];
            $jawaban = $post['jawaban'];
            $status = $post['status'];
            $format_jawaban = $post['format_jawaban'];
            $arr_pertanyaan_jawaban = [];
            $i = 0;
            //echo "<pre>";
            foreach ($pertanyaan as $row_pertanyaan) {
                if ($format_jawaban[$i] == 'table') {
                    $pertanyaan_jawaban = [
                        'keterangan' => $row_pertanyaan[0],
                        'radiokey' => $jawaban[$i][0],
                        'pertanyaan' => $row_pertanyaan[1],
                        'jawaban' => $jawaban[$i][1]
                    ];
                } elseif ($format_jawaban[$i] == 'radio2') {
                    if ($jawaban[$i][0] == 'null') {
                        $pertanyaan_jawaban = [
                            'pertanyaan' => $row_pertanyaan,
                            'jawaban' => 'Lain-lain yaitu ' . $jawaban[$i][1]
                        ];
                    } else {
                        $pertanyaan_jawaban = [
                            'pertanyaan' => $row_pertanyaan,
                            'jawaban' => $jawaban[$i][0]
                        ];
                    }
                } else {
                    $pertanyaan_jawaban = [
                        'pertanyaan' => $row_pertanyaan,
                        'jawaban' => $jawaban[$i]
                    ];
                }
                array_push($arr_pertanyaan_jawaban, $pertanyaan_jawaban);
                $i++;
            }

            $arr_pertanyaan_jawaban = json_encode($arr_pertanyaan_jawaban);
            $format_jawaban = json_encode($format_jawaban);

            if ($status == 'alumni') {
                $username = $post['username'];
                $user = User::find()->where(['username' => $username])->one();
                $alumni = Alumni::find()->where(['reg' => $user->no_reg])->one();
                $validasi = HasilKuisionerAlumni::find()->where(['id_user' => $user->id])->one();
                // var_dump($user->no_reg);
                // var_dump($alumni->id_jurusan);
                // exit();
                if ($validasi) {
                    Yii::$app->session->setFlash('error', 'Mohon maaf, kuisioner dengan username ' . $username . ' sudah di isi');
                    return $this->redirect(['site/tracer-study']);

                    // $this->flashSession->warning('Mohon maaf, kuisioner dengan username ' . $username . ' sudah di isi');
                    // $this->response->redirect('index/formalumni');
                } else {
                    if ($user == true) {
                        $hasil_kuisioner = new HasilKuisionerAlumni();
                        $hasil_kuisioner->id_user = $user->id;
                        $hasil_kuisioner->nama = $user->username;
                        $hasil_kuisioner->format_jawaban = $format_jawaban;
                        $hasil_kuisioner->pertanyaan_jawaban = $arr_pertanyaan_jawaban;
                        $hasil_kuisioner->id_jurusan = $alumni->id_jurusan;
                        // var_dump($hasil_kuisioner->save());
                        // exit();
                        $hasil_kuisioner->save();
                        Yii::$app->session->setFlash('success', 'Selamat Anda Berhasil Mengisi Kuisioner, dengan username ' . $username . ' sudah di isi');

                        return $this->redirect(['site/tracer-study']);
                    }
                }
            } else {
                // $username = $this->request->getPost('username');
                // $user = User::findFirstByUsername($username);
                // $validasi = HasilKuisioner::findFirstByIdUser($user->id_user);
                // if ($validasi == true) {
                //     $this->flashSession->warning('Mohon maaf, kuisioner dengan username '.$username.' sudah di isi');
                //     $this->response->redirect('index/formuser');
                // }else{
                //     $hasil_kuisioner = new HasilKuisioner();
                //     $bool = $hasil_kuisioner->save(
                //         [
                //             'id_user' => $user->id_user,
                //             'nama' => $nama,
                //             'format_jawaban' =>$format_jawaban,
                //             'pertanyaan_jawaban' =>$arr_pertanyaan_jawaban
                //         ]
                //     );
                //     $relasi_sekarang = new RelasiAlumniPerusahaan();
                //     $relasi_sekarang->id_perusahaan = $user->id_user;
                //     $relasi_sekarang->id_alumni = $this->request->getPost('id_alumni');
                //     $relasi_sekarang->save();
                // }
                // if ($bool == true) {
                //     $this->flashSession->success('Kuisioner anda berhasil kami input, Terimakasih');
                //     if ($this->session->get('ses_username') != null) {
                //         $this->response->redirect('dashboard/formuser/hasil/user');
                //     }else{
                //         $this->response->redirect('index');
                //     }
                // }
            }
        }
    }

    public function actionPostPerusahaan()
    {

        $data = Yii::$app->request;
        if ($data->isPost) {
            $post = $data->post();
            $pertanyaan = $post['pertanyaan'];
            $jawaban = $post['jawaban'];
            $status = $post['status'];
            $format_jawaban = $post['format_jawaban'];
            $arr_pertanyaan_jawaban = [];
            $i = 0;
            //echo "<pre>";
            foreach ($pertanyaan as $row_pertanyaan) {
                if ($format_jawaban[$i] == 'table') {
                    $pertanyaan_jawaban = [
                        'keterangan' => $row_pertanyaan[0],
                        'radiokey' => $jawaban[$i][0],
                        'pertanyaan' => $row_pertanyaan[1],
                        'jawaban' => $jawaban[$i][1]
                    ];
                } elseif ($format_jawaban[$i] == 'radio2') {
                    if ($jawaban[$i][0] == 'null') {
                        $pertanyaan_jawaban = [
                            'pertanyaan' => $row_pertanyaan,
                            'jawaban' => 'Lain-lain yaitu ' . $jawaban[$i][1]
                        ];
                    } else {
                        $pertanyaan_jawaban = [
                            'pertanyaan' => $row_pertanyaan,
                            'jawaban' => $jawaban[$i][0]
                        ];
                    }
                } else {
                    $pertanyaan_jawaban = [
                        'pertanyaan' => $row_pertanyaan,
                        'jawaban' => $jawaban[$i]
                    ];
                }
                array_push($arr_pertanyaan_jawaban, $pertanyaan_jawaban);
                $i++;
            }

            $arr_pertanyaan_jawaban = json_encode($arr_pertanyaan_jawaban);
            $format_jawaban = json_encode($format_jawaban);

            if ($status == 'perusahaan') {
                $username = $post['username'];
                $user = User::find()->where(['username' => $username])->one();
                $alumni = Alumni::find()->where(['reg' => $user->no_reg])->one();
                $validasi = HasilKuisionerAlumni::find()->where(['id_user' => $user->id])->one();
                // var_dump($user->no_reg);
                // var_dump($alumni->id_jurusan);
                // exit();
                if ($validasi) {
                    Yii::$app->session->setFlash('error', 'Mohon maaf, kuisioner dengan username ' . $username . ' sudah di isi');
                    return $this->redirect(['site/tracer-study']);

                    // $this->flashSession->warning('Mohon maaf, kuisioner dengan username ' . $username . ' sudah di isi');
                    // $this->response->redirect('index/formalumni');
                } else {
                    if ($user == true) {
                        $hasil_kuisioner = new HasilKuisionerPerusahaan();
                        $hasil_kuisioner->id_user = $user->id;
                        $hasil_kuisioner->nama = $user->username;
                        $hasil_kuisioner->format_jawaban = $format_jawaban;
                        $hasil_kuisioner->pertanyaan_jawaban = $arr_pertanyaan_jawaban;
                        // var_dump($hasil_kuisioner->save());
                        // exit();
                        $hasil_kuisioner->save();
                        Yii::$app->session->setFlash('success', 'Selamat Anda Berhasil Mengisi Kuisioner, dengan username ' . $username . ' sudah di isi');

                        return $this->redirect(['site/tracer-study']);
                    }
                }
            } else {
                // $username = $this->request->getPost('username');
                // $user = User::findFirstByUsername($username);
                // $validasi = HasilKuisioner::findFirstByIdUser($user->id_user);
                // if ($validasi == true) {
                //     $this->flashSession->warning('Mohon maaf, kuisioner dengan username '.$username.' sudah di isi');
                //     $this->response->redirect('index/formuser');
                // }else{
                //     $hasil_kuisioner = new HasilKuisioner();
                //     $bool = $hasil_kuisioner->save(
                //         [
                //             'id_user' => $user->id_user,
                //             'nama' => $nama,
                //             'format_jawaban' =>$format_jawaban,
                //             'pertanyaan_jawaban' =>$arr_pertanyaan_jawaban
                //         ]
                //     );
                //     $relasi_sekarang = new RelasiAlumniPerusahaan();
                //     $relasi_sekarang->id_perusahaan = $user->id_user;
                //     $relasi_sekarang->id_alumni = $this->request->getPost('id_alumni');
                //     $relasi_sekarang->save();
                // }
                // if ($bool == true) {
                //     $this->flashSession->success('Kuisioner anda berhasil kami input, Terimakasih');
                //     if ($this->session->get('ses_username') != null) {
                //         $this->response->redirect('dashboard/formuser/hasil/user');
                //     }else{
                //         $this->response->redirect('index');
                //     }
                // }
            }
        }
    }

    public function actionLihat()
    {
        $berita = Berita::find()->orderBy(['berita_id' => SORT_DESC])->all();
        return $this->render('berita/index', ['berita' => $berita]);
    }

    public function actionGrafik()
    {
        $data = [];
        $hasil_kuisioners = HasilKuisionerAlumni::find()->all();
        $i = 0;
        foreach($hasil_kuisioners as $hasil_kuisioner){
            $hasil = json_decode($hasil_kuisioner->pertanyaan_jawaban);
            // print_r($hasil[26]->jawaban[0]);
            $data[$hasil[31]->jawaban][$i] = $hasil[26]->jawaban[0];
            // $data[$hasil[31]->jawaban]['pr'] = $hasil[26]->jawaban[0];
            $i++;
        }
        // print_r($data);
        // exit;
        return $this->render('grafik', [
            'data' => $data,
        ]);
    }
}
