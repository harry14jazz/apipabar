<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataCovid extends Model
{
    protected $table='data_covid';

    protected $fillable = [
        'status',
        'total_jumlah',
        'meningkat_menurun',
        'tanggal_update,'
    ];
}
