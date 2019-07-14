<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('products', 'ProductsController@getAll')->name('getAllProducts');
Route::get('productsEnlist', 'ProductsController@getProductsEnlist')->name('getProductsEnlist');
Route::get('productsAvailable', 'ProductsController@getAvailable')->name('getProductsAvailable');
Route::get('productsLessSold/{date}/{quantity}', 'ProductsController@getLessSold')->name('getProductsLessSold');
Route::get('productsMoreSold/{date}/{quantity}', 'ProductsController@getMoreSold')->name('getProductsMoreSold');
Route::get('orders/{id}', 'OrdersController@get')->name('getOrders');
Route::get('inventory/{date}', 'InventoryController@get')->name('getInventory');
Route::post('inventory', 'InventoryController@add')->name('addInventory');
Route::post('providers', 'ProvidersController@add')->name('addProviders');
Route::post('orders', 'OrdersController@add')->name('addOrders');

/*Route::get('tasks', 'TasksController@getAll')->name('getAllTasks');
Route::post('tasks', 'TasksController@add')->name('addTasks');
Route::get('tasks/{id}', 'TasksController@get')->name('getTasks');
Route::post('tasks/{id}', 'TasksController@edit')->name('editTasks');
Route::get('tasks/delete/{id}', 'TasksController@delete')->name('deleteTasks');*/