<?php

use Illuminate\Support\Facades\Route;

/*Route::get('/', function () {
    return redirect()->route('login');
});*/

Route::get('/', function () {
    return view('frontend.index');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/logout', 'HomeController@logout')->name('logout');
Route::get('/password/change', 'HomeController@PasswordChange')->name('password.change');
Route::post('/update/password', 'HomeController@PasswordUpdate')->name('update.password'); 

//categories------------
Route::get('/categories', 'Backend\CategoryController@index')->name('categories');
Route::post('/store/categories', 'Backend\CategoryController@store')->name('store.category');
Route::get('/delete/category/{id}', 'Backend\CategoryController@destory')->name('delete.category');
Route::get('/edit/category/{id}', 'Backend\CategoryController@edit')->name('edit.category');
Route::post('/update/categories/{id}', 'Backend\CategoryController@update')->name('update.category');

//sub categories------------
Route::get('/subcategories', 'Backend\SubcategoryController@index')->name('subcategories');
Route::post('/store/subcategories', 'Backend\SubcategoryController@store')->name('store.subcategory');
Route::get('/delete/subcategory/{id}', 'Backend\SubcategoryController@destory')->name('delete.subcategory');
Route::get('/edit/subcategory/{id}', 'Backend\SubcategoryController@edit')->name('edit.subcategory');
Route::post('/update/subcategories/{id}', 'Backend\SubcategoryController@update')->name('update.subcategory');
//district---------
Route::get('/districts', 'Backend\DistrictController@distrcits')->name('district');
Route::post('/store/district', 'Backend\DistrictController@storeDistrict')->name('store.district');
Route::get('/delete/district/{id}', 'Backend\DistrictController@destorydistrict')->name('delete.district');
Route::get('/edit/district/{id}', 'Backend\DistrictController@editdistrict')->name('edit.district');
Route::post('/update/district/{id}', 'Backend\DistrictController@updatedistrict')->name('update.district');

//subdistrict
Route::get('/subdistricts', 'Backend\DistrictController@subdistrict')->name('subdistrict');
Route::post('/store/subdistricts', 'Backend\DistrictController@storesubdistrict')->name('store.subdistrict');
Route::get('/delete/subdistrict/{id}', 'Backend\DistrictController@destroysubdistrict')->name('delete.subdistrict');
Route::get('/edit/subdistrict/{id}', 'Backend\DistrictController@editsubdistrict')->name('edit.subdistrict');
Route::post('/update/subdistrict/{id}', 'Backend\DistrictController@updatesubdistrict')->name('update.subdistrict');

//user role
Route::get('/insert/writer', 'HomeController@Insert')->name('insert.writer');
Route::post('/store/writer', 'HomeController@store')->name('store.writer');
Route::get('/all/writer', 'HomeController@allWriter')->name('all.writer');
Route::get('/edit/writer/{id}', 'HomeController@edit');
Route::post('/update/writer/{id}', 'HomeController@UpdateWriter')->name('update.writer');

//post
Route::get('/post', 'Backend\PostController@index')->name('post');
Route::get('/create/post', 'Backend\PostController@create')->name('create.post');
Route::post('/store/post', 'Backend\PostController@store')->name('store.post');
Route::get('/delete/post/{id}', 'Backend\PostController@destroy')->name('delete.post');
Route::get('/edit/post/{id}', 'Backend\PostController@edit')->name('edit.post');
Route::post('/update/post/{id}', 'Backend\PostController@update')->name('update.post');

//json data multiple dependency
Route::get('/get/subcat/{cat_id}', 'Backend\PostController@subcat');
Route::get('/get/subdist/{dist_id}', 'Backend\PostController@subdist');

//ads
Route::get('/horizontal/ads', 'Backend\AdsController@horizontal')->name('horizontal.ads');
Route::post('/store/ads', 'Backend\AdsController@store')->name('store.ads');

//settings
//social setting
Route::get('/social/setting', 'Backend\SettingController@SocialSetting')->name('social.setting');
Route::post('/update/social/{id}', 'Backend\SettingController@UpdateSOcial')->name('update.social');
//seo setting
Route::get('/seo/setting', 'Backend\SettingController@SeoSetting')->name('seo.setting');
Route::post('/update/seo/{id}', 'Backend\SettingController@UpdateSEO')->name('update.seo');
//Namaz setting
Route::get('/namaz/setting', 'Backend\SettingController@NamazSetting')->name('namaz.setting');
Route::post('/update/namaztime/{id}', 'Backend\SettingController@Updatenamaztime')->name('update.namaztime');
//Livetv setting
Route::get('/livetv/setting', 'Backend\SettingController@LivetvSetting')->name('livetv.setting');
Route::post('/update/livetv/{id}', 'Backend\SettingController@Updatelivetv')->name('update.livetv');
Route::get('/active/livetv/{id}', 'Backend\SettingController@ActiveLivetv')->name('active.livetv');
Route::get('/deactive/livetv/{id}', 'Backend\SettingController@DeactiveLivetv')->name('deactive.livetv');
//notice
Route::get('/notice/setting', 'Backend\SettingController@noticeSetting')->name('notice.setting');  
Route::post('/update/notice/{id}', 'Backend\SettingController@UpdateNotice')->name('update.notice');
Route::get('/active/notice/{id}', 'Backend\SettingController@ActiveNotice')->name('active.notice');
Route::get('/deactive/notice/{id}', 'Backend\SettingController@DeactiveNotice')->name('deactive.notice');
//photo gallery
Route::get('/photo/gallery', 'Backend\GalleryController@photos')->name('photos.gallery');  
Route::post('/store/phto/gallery', 'Backend\GalleryController@storephotos')->name('store.photos');  
//video gallery
Route::get('/video/gallery', 'Backend\GalleryController@video')->name('video.gallery');  
Route::post('/store/video/gallery', 'Backend\GalleryController@storevideo')->name('store.videos');  
//important website
Route::get('/important/website', 'Backend\SettingController@importantwebsite')->name('important.website');
Route::post('/store/website', 'Backend\SettingController@StoreWebsite')->name('store.website');
//website setting
Route::get('/website/setting', 'Backend\SettingController@WebsiteSetting')->name('website.setting');
Route::post('/update/websitesetting/{id}', 'Backend\SettingController@UpdateWebsite')->name('update.websitesetting');

//Frontend controller
//language controller
Route::get('/lang/english', 'Frontend\LanguageController@English')->name('lang.english');
Route::get('/lang/bangla', 'Frontend\LanguageController@Bangla')->name('lang.bangla');

//single post
Route::get('view-post/{id}/{slug}','Frontend\LanguageController@SinglePost');
Route::get('posts/{id}/{subcategory_bn}','Frontend\LanguageController@AllPost');
Route::get('post/{id}/{category_bn}','Frontend\LanguageController@AllPostscat');
Route::get('/get/subdist/frontend/{dist_id}', 'Frontend\LanguageController@subdist');
Route::get('saradesh/','Frontend\LanguageController@Saradesh')->name('saradesh.news');



