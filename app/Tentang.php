<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tentang extends Model
{
    protected $table='tentang';

    protected $fillable = [
        'phone',
        'email',
        'lokasi'
    ];
}
