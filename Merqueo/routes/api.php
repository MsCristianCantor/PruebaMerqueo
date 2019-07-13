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
Route::get('productsAvailable', 'ProductsController@getAvailable')->name('getProductsAvailable');
Route::get('productsLessSold/{date}/{quantity}', 'ProductsController@getLessSold')->name('getProductsLessSold');
Route::post('inventory', 'InventoryController@add')->name('addInventory');
Route::post('providers', 'ProvidersController@add')->name('addProviders');
Route::post('orders', 'OrdersController@add')->name('addOrders');

/*Route::get('tasks', 'TasksController@getAll')->name('getAllTasks');
Route::post('tasks', 'TasksController@add')->name('addTasks');
Route::get('tasks/{id}', 'TasksController@get')->name('getTasks');
Route::post('tasks/{id}', 'TasksController@edit')->name('editTasks');
Route::get('tasks/delete/{id}', 'TasksController@delete')->name('deleteTasks');*/