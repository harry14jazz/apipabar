<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/view_data', 'DataCovidController@index');
Route::get('/view_berita', 'BeritaController@index');
Route::get('/view_rs', 'RumahSakitController@index');
Route::get('/view_tentang', 'TentangController@index');
Route::get('/testif', 'IntegrationController@getDataPositif');
Route::get('/tesneg', 'IntegrationController@getDataNegatif');
Route::get('/tesbuh', 'IntegrationController@getDataSembuh');
Route::get('/tesgal', 'IntegrationController@getDataMeninggal');
Route::get('/tespdp', 'IntegrationController@getDataPDP');
Route::get('/tesodp', 'IntegrationController@getDataODP');
Route::get('/tesotg', 'IntegrationController@getDataOTG');
Route::get('/sync', 'IntegrationController@synchronize');
