<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Paypal extends MY_Controller
{
    function  __construct() {
        parent::__construct();
        $this->load->library('paypal_lib');

		// Load helpers
		// $this->load->helper('url');
		// Load session library
		// $this->load->library('session');
		// Load PayPal library config
		// $this->config->load('paypal');
    }
     
    function index(){
        $data = array();
        //get products inforamtion from database table
        $data['products'] = $this->product->getProducts();
        //loav view and pass the products information to view
        $this->load->view('products/index', $data);
    }
     
    function buyProduct(){
        //Set variables for paypal form
        $returnURL = base_url().'paymentSuccess'; //payment success url
        $failURL   = base_url().'paymentFail'; //payment fail url
        $notifyURL = base_url().'paymentIpn'; //ipn url
        //get particular product data
        $product = getCart();
        $userID = userData()->id; //current user id
        $logo = base_url().'assets/biz/img/pnapna-logo.png';
         
        $this->paypal_lib->add_field('return', $returnURL);
        $this->paypal_lib->add_field('fail_return', $failURL);
        $this->paypal_lib->add_field('notify_url', $notifyURL);
        $this->paypal_lib->add_field('item_name', $product->name);
        $this->paypal_lib->add_field('custom', $userID);
        $this->paypal_lib->add_field('item_number',  $product->id);
        $this->paypal_lib->add_field('amount', $product->total_price);        
        $this->paypal_lib->image($logo);
         
        $this->paypal_lib->paypal_auto_form();
    }
 
    function paymentSuccess(){
        $paypalInfo = $this->input->post();
        $userId     = userData()->id;

        $cartData   = $this->db->where('user_id', $userId)->get('cart')->row();

        $paymentData = array(
            'user_id'        => $userId,
        	'product_id'     => $cartData->id,
        	'item_name'      => $cartData->name,
        	'txn_id'         => $paypalInfo['txn_id'],
            'payer_id'       => $paypalInfo['payer_id'],
            'business_id'    => $paypalInfo['business'],
            'receiver_id'    => $paypalInfo['receiver_id'],
            'payer_email'    => $paypalInfo['payer_email'],
            'item_details'   => $cartData->modules,
        	'payment_gross'  => $paypalInfo['mc_gross'],
        	'currency_code'  => $paypalInfo['mc_currency'],
        	'payment_status' => $paypalInfo['payment_status'],
            'verify_sign'    => $paypalInfo['verify_sign'],
        );

        $insert = $this->db->insert('payments', $paymentData);

        if ($insert) {
            $user_modulesData = array(
                'user_id'        => $userId,
                'modules'        => $cartData->modules,
                'status'         => 0,
                'updated_at'     => date('Y-m-d h:i:s')
            );
            $insertUserModules = $this->db->insert('user_modules', $user_modulesData);
        }

        $this->db->where('user_id', $userId)->delete('cart');

        set_message("success", "Your payment is successfully done");
        redirect(base_url('paymentDetails/').$paypalInfo['txn_id']);
    }
      
    function paymentFail(){
        //if transaction cancelled
        $this->load->view('paypal/paymentFail');
    }
      
    function ipn(){
        //paypal return transaction details array
        $paypalInfo    = $this->input->post();
 
        $data['user_id'] = $paypalInfo['custom'];
        $data['product_id']    = $paypalInfo["item_number"];
        $data['txn_id']    = $paypalInfo["txn_id"];
        $data['payment_gross'] = $paypalInfo["mc_gross"];
        $data['currency_code'] = $paypalInfo["mc_currency"];
        $data['payer_email'] = $paypalInfo["payer_email"];
        $data['payment_status']    = $paypalInfo["payment_status"];
 
        $paypalURL = $this->paypal_lib->paypal_url;        
        $result    = $this->paypal_lib->curlPost($paypalURL,$paypalInfo);
         
        //check whether the payment is verified
        if(preg_match("/VERIFIED/i",$result)){
            //insert the transaction data into the database
            $this->product->storeTransaction($data);
        }
    }
    
    function buyFreeProduct(){
        $userId     = userData()->id;
        $cartData   = $this->db->where('user_id', $userId)->get('cart')->row();
        $txn_id     = get_token(16);

        $paymentData = array(
            'user_id'        => $userId,
            'product_id'     => $cartData->id,
            'item_name'      => $cartData->name,
            'txn_id'         => $txn_id,
            'payer_id'       => '0000000000000000',
            'business_id'    => '0000000000000000',
            'receiver_id'    => '0000000000000000',
            'payer_email'    => '0000000000000000',
            'item_details'   => $cartData->modules,
            'payment_gross'  => 00.00,
            'currency_code'  => 'USD',
            'payment_status' => 'Completed',
            'verify_sign'    => '0000000000000000',
        );

        $insert    = $this->db->insert('payments', $paymentData);
        $this->db->where('user_id', $userId)->delete('cart');

        set_message("success", "Your payment is successfully done");
        redirect(base_url('paymentDetails/').$txn_id);
    }

    function buyFreeCouponProduct(){
        $userId     = userData()->id;

        $cartData   = $this->db->where('user_id', $userId)->get('cart')->row();

        $paymentData = array(
            'user_id'        => $userId,
            'product_id'     => $cartData->id,
            'plan_name'      => $this->session->userdata('planCartData')['planCartName'],
            'plan_amount'    => $this->session->userdata('planCartData')['planCartPrice'],
            'total_amount'   => $cartData->total_price,
            'item_name'      => $cartData->name,
            'txn_id'         => 'txID'.$userId.'-'.rand(1000000,100),
            'payer_id'       => userData()->email,
            'business_id'    => 'BizID-'.$userId,
            'receiver_id'    => 'PnaPna',
            'payer_email'    => userData()->email,
            'item_details'   => $cartData->modules,
            'payment_gross'  => '00.00',
            'currency_code'  => '$',
            'payment_status' => 'Completed',
            'verify_sign'    => 'vSign'.$userId.'-'.rand(1000000,100),
        );

        $insert = $this->db->insert('payments', $paymentData);

        if ($insert) {
            $user_modulesData = array(
                'user_id'        => $userId,
                'payment_id'     => $this->db->insert_id(),
                'modules'        => $cartData->modules,
                'status'         => 0,
                'updated_at'     => date('Y-m-d h:i:s')
            );
            $insertUserModules = $this->db->insert('user_modules', $user_modulesData);
        }

        $this->db->where('user_id', $userId)->delete('cart');

        set_message("success", "Your payment is successfully done");
        redirect(base_url('paymentDetails/').$paymentData['txn_id']);
    }
}