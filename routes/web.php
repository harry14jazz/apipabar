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

// Route::get('/', function () {
//     return view('welcome');
// });

//login
Route::get('/','AuthController@getlogin')->middleware('guest')->name('home');
Route::post('/login','AuthController@postlogin')->middleware('guest')->name('login');

//logout
Route::get('/logout','AuthController@logout')->middleware('auth')->name('logout');

//dashboard
Route::get('/admin', function () {
	return view('dashboard');
})->middleware('auth')->name('home admin');

//data_covid
Route::get('/admin/data_covid','DataCovidController@listDataCovid')->middleware('auth')->name('data_covid');

//berita
Route::get('/admin/berita','BeritaController@listBerita')->middleware('auth')->name('berita');
Route::get('/admin/berita/tambah_berita','BeritaController@tambahBerita')->middleware('auth');
Route::post('/admin/berita/tambah_berita/simpan','BeritaController@tambahBeritaSimpan')->middleware('auth');
Route::get('/admin/berita/edit_berita/{id}','BeritaController@editBerita')->middleware('auth');
Route::post('/admin/berita/edit_berita/{id}/simpan','BeritaController@editBeritaSimpan')->middleware('auth');
Route::delete('/admin/berita/hapus_berita/{id}','BeritaController@hapusBerita')->middleware('auth');

//rs_rujukan
Route::get('/admin/rs_rujukan','RumahSakitController@listRS')->middleware('auth')->name('rs_rujukan');
Route::get('/admin/rs_rujukan/tambah_rs_rujukan','RumahSakitController@tambahRS')->middleware('auth');
Route::post('/admin/rs_rujukan/tambah_rs_rujukan/simpan','RumahSakitController@tambahRSSimpan')->middleware('auth');
Route::get('/admin/rs_rujukan/edit_rs_rujukan/{id}','RumahSakitController@editRS')->middleware('auth');
Route::post('/admin/rs_rujukan/edit_rs_rujukan/{id}/simpan','RumahSakitController@editRSSimpan')->middleware('auth');
Route::delete('/admin/rs_rujukan/hapus_rs_rujukan/{id}','RumahSakitController@hapusRS')->middleware('auth');

//tentang_kami
Route::get('/admin/tentang_kami','TentangController@listTentang')->middleware('auth')->name('tentang_kami');
Route::get('/admin/tentang_kami/edit_tentang_kami/{id}','TentangController@editTentang')->middleware('auth');
Route::post('/admin/tentang_kami/edit_tentang_kami/{id}/simpan','TentangController@editTentangSimpan')->middleware('auth');

//akun
Route::get('/admin/akun','AkunController@index')->middleware('auth')->name('akun');
Route::get('/admin/akun/edit_akun/{id}','AkunController@editAkun')->middleware('auth');
Route::post('/admin/akun/edit_akun/{id}/simpan','AkunController@editAkunSimpan')->middleware('auth');

//API
Route::get('/view_data', 'DataCovidController@index');
Route::get('/view_berita', 'BeritaController@index');
Route::get('/view_berita_detail/{id_berita}', 'BeritaController@detail');
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
