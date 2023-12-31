<?php


use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\PublisherController;
use App\Http\Controllers\Admin\AuthorController;
use App\Http\Controllers\Admin\SizeController;
use App\Http\Controllers\Admin\DiscountController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ShippingFeeController;
use App\Http\Controllers\Admin\BannerController;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\CityController; 
use App\Http\Controllers\Client\CartController; 
use App\Http\Controllers\Client\OrderController; 
use App\Http\Controllers\Client\UsersController as UsersClient; 
// use App\Http\Controllers\Admin\UsersController  as UsersAdmin; 
use App\Http\Controllers\WishlistController;  
use App\Http\Controllers\SearchController;  
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
/*SearchController
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
 *
 *
========================= Website ==============================
 *
 *
*/
Auth::routes();

Route::get('/', [HomeController::class, 'index']);

Route::get('the-loai-{id}', [HomeController::class, 'categoryPage']);
Route::get('chi-tiet-sach-{id}', [HomeController::class, 'productDetailsPage']);

Route::get('tac-gia-{id}', [HomeController::class, 'authorDetailsPage']);
// Route::get('chi-tiet-tac-gia-{id}', [HomeController::class, 'authorDetailsPage']);

Route::get('cities', [CityController::class, 'index'])->name('cities.index');

Route::get('details', [ProductController::class, 'details'])->name('productDetails');

// Cart
Route::post('addCart', [CartController::class, 'save'])->name('addCart');
Route::get('cart', [CartController::class, 'index'])->name('showCart');
Route::post('update-qty-cart{id}', [CartController::class, 'update'])->name('updateCart');
Route::get('delete-cart/{rowId}', [CartController::class, 'delete'])->name('deleteCart');

//Wishlist
Route::post('them-yeu-thich', [WishlistController::class, 'save'])->name('addWish');
Route::get('danh-sach-yeu-thich}', [WishlistController::class, 'index'])->name('showWish');
Route::post('xoa/{id}', [WishlistController::class, 'delete'])->name('deleteWish');
//Router
Route::post('order',  [OrderController::class, 'index'])->name('viewOrder');
Route::post('order/store', [OrderController::class, 'store'])->name('storeOrder');
Route::get('thanh-cong', [OrderController::class, 'done']);
Route::post('cancel/{id}', [OrderController::class, 'cancel'])->name('cancelOrder');
#Author
Route::get('danh-sach-tac-gia', [App\Http\Controllers\Client\AuthorController::class, 'index']);


#Users
Route::get('thong-tin-{id}', [UsersClient::class, 'index']);
Route::get('doi-mat-khau-{id}', [UsersClient::class, 'resetpassword']);
Route::post('doi-mat-khau-{id}', [UsersClient::class, 'changepassword'])->name('resetPassword');
Route::get('hoa-don-{id}', [UsersClient::class, 'order']);
Route::get('yeu-thich-{id}', [UsersClient::class, 'wishlist']);

#Reviews
Route::post('review/store', [App\Http\Controllers\ReviewsController::class, 'store'])->name('reviewStore');

Route::get('search', [SearchController::class, 'getSearch']);
Route::post('search/name', [SearchController::class, 'getSearchAjax'])->name('search');

#UpdateInfo_Account
Route::get('edit-account-{id}', [App\Http\Controllers\Client\UsersController::class, 'edit_account']);
Route::post('update-account-{id}', [App\Http\Controllers\Client\UsersController::class, 'update_account'])->name('updateAccount');
/*
 *
 *
========================= Sign-in, Sign-up ==============================
 *
 *
*/
Route::get('select2-autocomplete-ajax', [CityController::class, 'dataAjax']);
Route::get('search-product', [CityController::class, 'dataProduct']);
Route::get('get-info', [CityController::class, 'info']);
Route::get('get-product', [CityController::class, 'getProduct']);


Route::get('sign-in', function () {
    return view('sign-in');
});

Route::get('sign-up', function () {
    return view('sign-up');
});



/*
 *
 *
=========================Admin Website ==============================
 *
 *
*/


Route::name('admin.')->prefix('admin')->group(function () {

    Route::get('/',  [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('index');
    Route::get('/doanhthu',  [App\Http\Controllers\Admin\HomeController::class, 'doanhthu'])->name('doanhthu');
  
    Route::post('/search-doanhthu',  [App\Http\Controllers\Admin\HomeController::class, 'search'])->name('searchDoanhThu');
  
    Route::post('/update_subtotal', [App\Http\Controllers\Admin\HomeController::class, 'update_subtotal'])->name('update_subtotal');
    // category 
    Route::name('category.')->prefix('category')->group(function () {

        Route::get('list', [CategoryController::class, 'index'])->name('list');
        Route::get('disable_status/{id}', [CategoryController::class, 'disable_status']);
        Route::get('enable_status/{id}', [CategoryController::class, 'enable_status']);

        Route::get('create', function () {
            return view('BE.category.create');
        })->name('create');
        Route::get('update/{id}', [CategoryController::class, 'edit'])->name('edit');

	    Route::post('/create', [CategoryController::class, 'create']);
        Route::post('/update/{id}', [CategoryController::class, 'update'])->name('update');
        Route::get('/delete/{id}', [CategoryController::class, 'delete'])->name('delete');

        
        Route::get('edit', function () {
            return view('BE.category.edit');
        });
    });

     // users 
     Route::name('user.')->prefix('users')->group(function () {
        Route::get('/create', [App\Http\Controllers\Admin\UsersController::class, 'view_create'])->name('createView');
        Route::post('/create', [App\Http\Controllers\Admin\UsersController::class, 'create'])->name('create');
        Route::get('list', [App\Http\Controllers\Admin\UsersController::class, 'index'])->name('list');
    });

     // Order 
     Route::name('order.')->prefix('order')->group(function () {

        Route::get('list', [App\Http\Controllers\Admin\OrderController::class, 'index'])->name('list');
     
        Route::get('/create', [App\Http\Controllers\Admin\OrderController::class, 'view_create'])->name('createView');
         
        Route::get('/details/{id}', [App\Http\Controllers\Admin\OrderController::class, 'details'])->name('detailOrder');
        Route::post('/update/{id}', [App\Http\Controllers\Admin\OrderController::class, 'update'])->name('updateStatusOrder');
        Route::get('/delete/{id}', [App\Http\Controllers\Admin\OrderController::class, 'delete'])->name('deleteOrder');
       
    });

     // sub category 
     Route::name('subcategory.')->prefix('sub-category')->group(function () {

        Route::get('/list', [SubCategoryController::class, 'index'])->name('list');
        Route::get('/disable_status/{id}', [SubCategoryController::class, 'disable_status']);
        Route::get('/enable_status/{id}', [SubCategoryController::class, 'enable_status']);

        Route::get('/create', [SubCategoryController::class, 'view_create'])->name('createView');
        Route::get('/update/{id}', [SubCategoryController::class, 'edit'])->name('editView');

	    Route::post('/create', [SubCategoryController::class, 'create'])->name('create');
        Route::post('/update/{id}', [SubCategoryController::class, 'update'])->name('update');

        
        Route::get('/edit', [SubCategoryController::class, 'view_update']);
        Route::get('/delete/{id}', [SubCategoryController::class, 'delete'])->name('delete');

    });

     // sub category 
     Route::name('publisher.')->prefix('publisher')->group(function () {

        Route::get('/list', [PublisherController::class, 'index'])->name('list');
        Route::get('/disable_status/{id}', [PublisherController::class, 'disable_status']);
        Route::get('/enable_status/{id}', [PublisherController::class, 'enable_status']);

        Route::get('/create', [PublisherController::class, 'view_create'])->name('createView');
        Route::get('/update/{id}', [PublisherController::class, 'edit'])->name('edit');

	    Route::post('/create', [PublisherController::class, 'create'])->name('create');
        Route::post('/update/{id}', [PublisherController::class, 'update'])->name('update');

        
        Route::get('/edit', [PublisherController::class, 'view_update']);
        Route::get('/delete/{id}', [PublisherController::class, 'delete'])->name('delete');

    });

     // sub category 
     Route::name('author.')->prefix('author')->group(function () {

        Route::get('/list', [AuthorController::class, 'index'])->name('list');
        Route::get('/disable_status/{id}', [AuthorController::class, 'disable_status']);
        Route::get('/enable_status/{id}', [AuthorController::class, 'enable_status']);

        Route::get('/create', [AuthorController::class, 'view_create'])->name('createView');
        Route::get('/update/{id}', [AuthorController::class, 'edit'])->name('edit');

	    Route::post('/create', [AuthorController::class, 'create'])->name('create');
        Route::post('/update/{id}', [AuthorController::class, 'update'])->name('update');

        
        Route::get('/edit', [AuthorController::class, 'view_update']);
        Route::get('/delete/{id}', [AuthorController::class, 'delete'])->name('delete');

    });

  //product
    Route::name('product.')->prefix('product')->group(function () {
        Route::get('/list', [ProductController::class, 'index'])->name('list');
        Route::get('/disable_status/{id}', [ProductController::class, 'disable_status']);
        Route::get('/enable_status/{id}', [ProductController::class, 'enable_status']);

        Route::get('/create', [ProductController::class, 'view_create'])->name('createView');
        Route::get('/update/{id}', [ProductController::class, 'edit'])->name('edit');

	    Route::post('/create', [ProductController::class, 'create'])->name('create');
        Route::post('/update/{id}', [ProductController::class, 'update'])->name('update');

        
        // Route::get('/edit', [ProductController::class, 'view_update']);
        Route::get('/delete/{id}', [ProductController::class, 'delete'])->name('delete');

    });
    //shipping
    Route::name('shipping.')->prefix('shipping-fee')->group(function () {
        Route::get('/list', [ShippingFeeController::class, 'index'])->name('list');
        // Route::get('/disable_status/{id}', [ShippingFeeController::class, 'disable_status']);
        // Route::get('/enable_status/{id}', [ShippingFeeController::class, 'enable_status']);

        Route::get('/create', [ShippingFeeController::class, 'view_create']);
        Route::get('/update/{id}', [ShippingFeeController::class, 'edit'])->name('editView');

	    Route::post('/create', [ShippingFeeController::class, 'create']);
        Route::post('/update/{id}', [ShippingFeeController::class, 'update'])->name('updateship');

        
        // // Route::get('/edit', [ProductController::class, 'view_update']);
        Route::get('/delete/{id}', [ShippingFeeController::class, 'delete']);

    });
    //banner
    Route::name('banner.')->prefix('banner')->group(function () {
        Route::get('/list', [BannerController::class, 'index'])->name('list');
        Route::get('/disable_status/{id}', [BannerController::class, 'disable_status']);
        Route::get('/enable_status/{id}', [BannerController::class, 'enable_status']);

        Route::get('/create', [BannerController::class, 'view_create'])->name('create');
        Route::get('/update/{id}', [BannerController::class, 'edit'])->name('edit');

	    Route::post('/create', [BannerController::class, 'create']);
        Route::post('/update/{id}', [BannerController::class, 'update'])->name('update');

        
        // Route::get('/edit', [ProductController::class, 'view_update']);
        Route::get('/delete/{id}', [BannerController::class, 'delete'])->name('delete');

    });
});
    //route update subtotal
    

    
// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('/', function () {
//     return view('showNotification');
// });

// Route::get('getPusher', function (){
//    return view('form_pusher');
// });

// Route::get('/pusher', function(Illuminate\Http\Request $request) {
//     event(new App\Events\HelloPusherEvent($request));
//     return redirect('getPusher');
// });