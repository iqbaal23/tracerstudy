<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "alumni".
 *
 * @property int $id_alumni
 * @property string $username
 * @property string $reg
 * @property string $status
 * @property string $ttl
 * @property int $id_jurusan
 * @property string $jk
 * @property string $agama
 * @property string $alamat
 * @property string $telp
 * @property string $angkatan
 * @property string $ipk
 * @property string $email
 * @property string $pekerjaan
 * @property string $foto
 */
class Alumni extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'alumni';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [

            [['username', 'reg', 'status', 'ttl', 'id_jurusan', 'jk', 'agama', 'alamat', 'telp', 'angkatan', 'ipk', 'email', 'pekerjaan', 'foto'], 'required'],
            [['id_jurusan'], 'integer'],
            [['pekerjaan'], 'string'],
            [['username', 'email'], 'string', 'max' => 50],
            [['reg', 'jk', 'angkatan'], 'string', 'max' => 50],
            [['status'], 'string', 'max' => 10],
            [['ttl', 'alamat'], 'string', 'max' => 100],
            [['agama'], 'string', 'max' => 25],
            [['telp'], 'string', 'max' => 20],
            [['ipk'], 'string', 'max' => 5],
            [
                ['foto'], 'file', 
                'skipOnEmpty' => TRUE, 
                'extensions' => 'png, jpg',
                
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_alumni' => 'Id Alumni',
            'username' => 'Username',
            'reg' => 'Reg',
            'status' => 'Status',
            'ttl' => 'Tempat Tanggal Lahir',
            'id_jurusan' => 'Jurusan Dahulu',
            'jk' => 'Jenis Kelamin',
            'agama' => 'Agama',
            'alamat' => 'Alamat',
            'telp' => 'Telp',
            'angkatan' => 'Angkatan',
            'ipk' => 'Ipk',
            'email' => 'Email',
            'pekerjaan' => 'Pekerjaan',
            'foto' => 'Foto Profile',
        ];
    }
}
