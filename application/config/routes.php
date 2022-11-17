<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['signup']             = 'auth/register';
// $route['signup/(:any)']      = 'auth/index/$1';
// $route['signuprequest']      = 'auth/register';
$route['signin']             = 'auth/index';
$route['signinrequest']      = 'auth/login';
$route['forget-password']    = 'auth/forget_password';
$route['forgetpass']   		 = 'auth/forget_pass';
$route['reset-password/(:any)']    = 'auth/reset_password/$1';
$route['resetpassword'] = 'auth/resetpassword';


$route['wordpressSite']                    = 'Wp/wpSite';

// OLD
	// $route['contact']                          = 'cms/pages';
	// $route['free-consultation']                = 'cms/pages';
	// $route['about']                            = 'cms/pages';
	// $route['variants']                         = 'cms/pages';
	// $route['features']                         = 'cms/pages';
	// $route['registerd']                        = 'cms/pages';
	// $route['plans']                            = 'cms/pages';
	// $route['industries']                       = 'cms/pages';
	// $route['privacy-policy']                   = 'cms/pages';
	// $route['terms-conditions']                 = 'cms/pages';
	// $route['best-CRM-for-2021']                = 'cms/pages';
	// $route['what-is-project-management']       = 'cms/pages';
	// $route['mobile-app']                       = 'cms/pages';
	// $route['how-to-place-pnapna-partner-seal'] = 'cms/pages';
	// $route['forget-password-link']             = 'cms/pages';
	// $route['site-map']                         = 'cms/pages';
	// $route['integrations']                     = 'cms/pages';
	// $route['unsubscribed']                     = 'cms/pages';
	// $route['do-not-sell-info']                 = 'cms/pages';
	// $route['quick-limit-crossed']              = 'cms/pages';
// OLD

// NEW
	$route['en/page/(:any)']                   = 'cms/enPages';
// NEW


$route['home-bottom']                      = 'cms/noComponentsPages';
$route['home-support']                     = 'cms/noComponentsPages';
$route['footer']                           = 'cms/componentsPages';

$route['download']                         = 'cms/downloadPdf';
$route['downloads/(:any)']                 = 'cms/downloads/$1';
$route['downloads']                        = 'cms/downloads';

$route['newsSubscribe']                    = 'cms/newsLetter';
$route['quick-services']                   = 'cms/quickServices';
$route['quickEmailRequest']                = 'cms/quickEmailRequest';

// Versus Routs
$versusArr = explode('-', end($this->uri->segments));
if (in_array('versus', $versusArr)||in_array('vs', $versusArr)) { $route[end($this->uri->segments)] = 'cms/versusPages';}
// Versus Routs

$route['pnapna-scheduling'] = 'cms/landingPages';

$route['myIntegrations']     = 'users/myIntegrations';

$route['dashboard']          = 'dashboard/index';
$route['getStarted']         = 'users/getStarted';
$route['chooseAccVarient']   = 'users/chooseAccVarient';
$route['logout']             = 'auth/logout';
$route['profileGetS']        = 'auth/profileGetS';
$route['checkAccName']       = 'auth/checkAccName';
$route['saveAccName']        = 'auth/saveAccName';
$route['saveVariantName']    = 'auth/saveVariantName';
$route['verifyEmail/(:any)'] = 'auth/verification/$1';
$route['setupWorkManager']   = 'users/setupWorkManager';
$route['checkoutPayment']    = 'payments/checkoutPayment';
$route['payments']           = 'payments/payments';
$route['buyProduct']         = 'paypal/buyProduct';
$route['buyFreeProduct']     = 'paypal/buyFreeProduct';
$route['buyFreeCouponProduct'] = 'paypal/buyFreeCouponProduct';

$route['paymentSuccess']     = 'paypal/paymentSuccess';
$route['paymentFail']        = 'paypal/paymentFail';
$route['paymentIpn']         = 'paypal/ipn';

$route['paymentDetails/(:any)'] = 'payments/paymentDetails/$1';
// $route['activateAccount']       = 'payments/activateAccount';
$route['activateFieldService']     = 'payments/activateFieldService';

// $route['activateAccCleaning']   = 'payments/activateAccCleaning';
// $route['activateAccCore']       = 'payments/activateAccCore';
// $route['activateAccPlumbing']   = 'payments/activateAccPlumbing';


$route['activateScope']         = 'myapps/activateScope';
$route['activatePodium']        = 'myapps/activatePodium';
$route['activateCal']           = 'myapps/activateCal';


$route['activeModules']         = 'users/activeModules';

$route['profile']            = 'users/profile';
$route['edit-profile']		 ='users/edit_profile';
$route['submit-profile']	 ='users/submit_profile';
$route['change-password']	 ='users/change_password';
$route['update-password']	 ='users/update_password';

$route['capture-emails']     = 'home/captureEmails';


// ***************************************************************
	$route['saasBizSite']       = 'myapps/saasBizSite';
	$route['myApps']            = 'myapps/myApps';
	$route['setAppStatus']      = 'myapps/setAppStatus';
// ***************************************************************

//Start No Crawled Pages
$route['home-four']              = 'home';
// $route['marketplace/?m=201609']  = 'home';
$route['libs/']                  = 'home';
$route['compare']                = 'home';
$route['sign-page']              = 'home';
$route['index.html']             = 'home';
$route['register-page']          = 'home';
$route['investor']               = 'home';
//End No Crawled Pages

//********** Import Excel ********//
$route['import-excel']        = 'ImportExcel/index';
$route['import-excel-submit'] = 'ImportExcel/importFile';
//********** Import Excel ********//
//********** Book Demo ********//
$route['book-demo-submit']        = 'cms/book_demo_submit';
//********** Book Demo ********//

$route['loginByChromeExtension'] = 'auth/loginByChromeExtension';


$route['en/cleaning']  = 'cms/dirCleaning';
$route['en/core']      = 'cms/dirCore';
$route['en/plumbing']  = 'cms/dirPlumbing';
$route['en/litebiz']   = 'cms/dirLitebiz';

$route['en/calendar']  = 'cms/dirCalendar';
$route['en/podium']    = 'cms/dirPodium';
$route['en/scope']     = 'cms/dirScope';
$route['en/site']      = 'cms/dirSite';