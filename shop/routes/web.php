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

Route::get('index',[
    'as'=>'trang-chu',
    'uses'=>'PageController@getIndex'
    ]);
Route::get('loai-sp/{type}',[
    'as'=>'loaisp',
    'uses'=>'PageController@getLoaiSp'
]);
Route::get('chitiet-sp/{id}',[
    'as'=>'chitietsp',
    'uses'=>'PageController@getChitiet'
]);
Route::get('lien-he',[
    'as'=>'LienHe',
    'uses'=>'PageController@getLienhe'
]);
Route::get('gioi-thieu',[
    'as'=>'Gioithieu',
    'uses'=>'PageController@getGioithieu'
]);
Route::get('add-to-cart/{id}',[
    'as'=>'themgiohang',
    'uses'=>'PageController@getAddtoCart'
]);
Route::get('del-cart/{id}',[
    'as'=>'xoagiohang',
    'uses'=>'PageController@getDelItemCart'
]);
Route::get('dat-hang',[
    'as'=>'dathang',
    'uses'=>'PageController@getCheckout'
]);
Route::post('dat-hang',[
    'as'=>'dathang',
    'uses'=>'PageController@postCheckout'
]);
Route::get('dat-ban',[
    'as'=>'datban',
    'uses'=>'PageController@getDatban'
]);
Route::post('dat-ban',[
    'as'=>'datban',
    'uses'=>'PageController@postDatban'
]);
Route::get('nha-bep',[
    'as'=>'nha-bep',
    'uses'=>'PageController@getNhabep'
]);
Route::get('search',[
    'as'=>'search',
    'uses'=>'PageController@getSearch'
]);
Route::get('check/{MaDonDatHang}',[
    'as'=>'check',
    'uses'=>'PageController@getCheck'
]);
Route::get('xoa/{id}', 'PageController@xoa');
Route::get('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@getLogin'
]);
Route::post('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@postLogin'
]);

Route::get('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@getSignin'
]);

Route::post('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@postSignin'
]);

Route::get('dang-xuat',[
	'as'=>'logout',
	'uses'=>'PageController@postLogout'
]);