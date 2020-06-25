<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Data_penduduk extends Model 
{
    protected $table = 'data_penduduk';

    public function hubungan_keluarga(){
        return $this->hasOne("App\Hubungan_keluarga");
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'no_kk','nik','nama_lengkap','id_stat_hbkel',
        'no_rt'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];
}
