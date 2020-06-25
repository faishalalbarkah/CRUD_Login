<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Hubungan_keluarga extends Model 
{
    protected $table = 'hubungan_keluarga';

    public function data_penduduk()
    {
        return $this->belongsTo('App\Data_penduduk');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_stat_hbkel','stat_hbkel'
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
