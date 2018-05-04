<?php

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

//Posts & Categories
Route::get('/posts','PagesController@posts');
Route::get('/','PagesController@posts');
Route::get('/posts/{post}','PagesController@post');
Route::post('/posts/{post}/store','CommentsController@store');
Route::get('/category/{name}','PagesController@category');

//Registeration
Route::get('/register', 'RegistrationController@create');
Route::post('/register', 'RegistrationController@store');

//Login
Route::get('/login', 'SessionsController@create');
Route::post('/login', 'SessionsController@store');

//Logout
Route::get('/logout', 'SessionsController@destroy');


Route::get('/access-denied', 'PagesController@accessDenied');
Route::get('/statistics', 'PagesController@statistics');


//test
//Groups

Route::group(['middleware' => 'roles', 'roles' => ['Admin']], function(){
    Route::get('/admin', 'PagesController@admin');
    Route::post('/add-role', 'PagesController@addRole');
    Route::post('/settings', 'PagesController@settings');
});

Route::group(['middleware' => 'roles', 'roles' => ['Editor','Admin']], function(){
    Route::get('/editor', 'PagesController@editor');
    Route::post('/posts/store','PagesController@store');
});

Route::group(['middleware' => 'roles', 'roles' => ['User','Editor','Admin']], function(){
    Route::post('/like', 'PagesController@like')->name('like'); 
    Route::post('/dislike', 'PagesController@dislike')->name('dislike'); 

});

/*
Route::get('/admin',[

    'uses' => 'PagesController@admin',
    'as' => 'content.admin',
    'middleware' =>'roles',
    'roles' =>['admin']

]);

Route::post('/add-role',[

    'uses' => 'PagesController@addRole',
    'as' => 'content.admin',
    'middleware' =>'roles',
    'roles' =>['admin']

]);

Route::get('/editor',[

    'uses' => 'PagesController@editor',
    'as' => 'content.editor',
    'middleware' =>'roles',
    'roles' =>['admin','editor']

]);
*/
