<?php defined('BASEPATH') OR exit('No direct script access allowed');
class MarketplacePaypal extends MY_Controller
{
    function  __construct() {
        parent::__construct();
        $this->load->library('paypal_lib');
        if(!$this->session->userdata('login_user')  && current_url() != base_url() && !in_array('login',$arr_url)){
            redirect(base_url('signin'));
        }
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
        $amount = $this->session->userdata('marketplacePayment');
        $this->paypal_lib->add_field('return', $returnURL);
        $this->paypal_lib->add_field('fail_return', $failURL);
        $this->paypal_lib->add_field('notify_url', $notifyURL);
        $this->paypal_lib->add_field('item_name', $product->name);
        $this->paypal_lib->add_field('custom', $userID);
        $this->paypal_lib->add_field('item_number',  $product->id);
        $this->paypal_lib->add_field('amount', $amount);        
        $this->paypal_lib->image($logo);
         
        $this->paypal_lib->paypal_auto_form();
    }

     function marketplacepaymentSuccess(){
     	$amount = $this->session->userdata('marketplacePayment');
     	if($amount == 10){
     		$post_project = 10;
     	}else if($amount == 20){
     		$post_project = 20;
     	}
        $paypalInfo = $this->input->post();
        $userId     = userData()->id;
        

        $paymentData = array(
            'user_id'        => $userId,
        	'txn_id'         => $paypalInfo['txn_id'],
            'payer_id'       => $paypalInfo['payer_id'],
            'business_id'    => $paypalInfo['business'],
            'receiver_id'    => $paypalInfo['receiver_id'],
            'payer_email'    => $paypalInfo['payer_email'],
        	'payment_gross'  => $paypalInfo['mc_gross'],
        	'currency_code'  => $paypalInfo['mc_currency'],
        	'payment_status' => $paypalInfo['payment_status'],
            'verify_sign'    => $paypalInfo['verify_sign'],
            'amount'         => $amount,
            'post_project'   => $post_project,
        );

        $insert = $this->db->insert('marketplace_payment', $paymentData);
        $this->session->unset_userdata('marketplacePayment');
        set_message("success", "Your payment is successfully done");
        redirect(base_url('marketplace-paymentDetails/').$paypalInfo['txn_id']);
    }
      
    function paymentFail(){
        $this->load->view('paypal/paymentFail');
    }

    public function MarketplacepaymentDetail($value='')
    {
        $data["content"] = "dashboard/marketplace/paymentDetail";
        $this->load->view('dashboard/_layout', $data);
    }

}