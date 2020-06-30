<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RumahSakit extends Model
{
    protected $table='rumah_sakit';

    protected $fillable = [
        'nama_rs',
        'telp',
        'email',
        'lokasi'
    ];
}
