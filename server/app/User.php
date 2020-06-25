<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class User extends Model 
{
    protected $table = 'users_tabel';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'email', 'password', 'token'
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
