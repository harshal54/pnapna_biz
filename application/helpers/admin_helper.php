<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');


if (!function_exists('message_box')) {
    function message_box()
    {
        $CI = &get_instance();
        $CI->load->view("alert");
    }
}

if (!function_exists('set_message')) {
    function set_message($type, $message)
    {
        $CI = &get_instance();
        $CI->session->set_flashdata($type, $message);
    }
}

if (!function_exists('userData')) {
    function userData(){
        $CI = &get_instance();
        if (!empty($CI->session->userdata('login_user'))) {
            $id = $CI->session->userdata('login_user')['id'];
            $email = $CI->session->userdata('login_user')['email'];
            return  $CI->db->select('users.*, user_details.*')->where('users.id',$id)->where('users.email',$email)->join('user_details', 'user_details.user_id = users.id')->get('users')->row();
        }
    }
}

if (!function_exists('do_upload')) {
    function do_upload()
    {
        $CI = &get_instance();
        $config = array(
            'upload_path' => "./uploads/",
            'allowed_types' => "*",
            'overwrite' => true,
            // 'max_size' => "99999999999",
            // 'max_height' => "800",
            // 'max_width' => "1500",
            'file_name' => uniqid()
        );

        $CI->load->library('upload', $config);

        if ( ! $CI->upload->do_upload('userfile'))
        {
            $data = array('response'=> "error",'msg' => $CI->upload->display_errors());
        }
        else
        {
            $data = array('response'=> "success",'msg' => $CI->upload->data());
        }

        return $data;
    }
}



if (!function_exists('get_token')) {
    function get_token($length){
        $token = "";
        $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
        $codeAlphabet.= "0123456789";
        $max = strlen($codeAlphabet); 

        for ($i=0; $i < $length; $i++) {
            $token .= $codeAlphabet[rand(0, $max-1)];
        }

        return $token;
    }
}

if (!function_exists('app_hasher')) {
    function app_hasher()
    {
        global $app_hasher;

        if (empty($app_hasher)) {
            require_once(APPPATH . 'third_party/phpass.php');
            // By default, use the portable hash from phpass
            $app_hasher = new PasswordHash(PHPASS_HASH_STRENGTH, PHPASS_HASH_PORTABLE);
        }

        return $app_hasher;
    }
}

if (!function_exists('get_variants')) {
    function get_variants(){
        $CI = &get_instance();
        return $CI->db->order_by('variant_name','ASC')->get('variants')->result();
    }
}

if (!function_exists('get_industries')) {
    function get_industries(){
        $CI = &get_instance();
        return $CI->db->where('status',1)->order_by('id','ASC')->get('industries')->result();
    }
}

if (!function_exists('getUserVariant')) {
    function getUserVariant(){
        $CI = &get_instance();
        return $CI->db->where('status', 1)->where('id', userData()->variant_id)->get('variants')->row();
    }
}

if (!function_exists('getCartPlan')) {
    function getCartPlan(){
        $CI = &get_instance();
        if (!empty($CI->session->userdata('planCartData'))) {
            $planPrice = $CI->session->userdata('planCartData');
          }else{
            $planPrice = 00.00;
          }
        return $planPrice;
    }
}

if (!function_exists('get_applications')) {
    function get_applications(){
        $CI = &get_instance();
        // return $CI->db->where('status', 1)->where('variant_id', 3)->order_by('name','ASC')->group_by('slug')->get('modules')->result();
        return $CI->db->where('status', 1)->where('variant_id', 3)->order_by('name','ASC')->get('modules')->result();
    }
}

if (!function_exists('getCart')) {
    function getCart(){
        $CI     = &get_instance();
        $userId = userData()->id;
        return $CI->db->where('user_id', $userId)->get('cart')->row();
    }
}

if (!function_exists('getSubdomain')) {
    function getSubdomain(){
        $CI     = &get_instance();
        $userId = userData()->id;
        return $CI->db->where('user_id', $userId)->get('subdomains')->row();
    }
}

if (!function_exists('checkPayment')) {
    function checkPayment(){
        $CI     = &get_instance();
        $userId = userData()->id;
        return $CI->db->where('user_id', $userId)->get('payments')->row();
    }
}

if (!function_exists('subDomainUrl')) {
    function subDomainUrl(){
        $CI     = &get_instance();
        $userId = userData()->id;
        $query =  $CI->db->where('id', $userId)->get('users')->row();
        $subDomainUrl = 'https://'.$query->account_name.'.'.strtolower(getUserVariant()->app_link);
        return $subDomainUrl;
    }
}

if (!function_exists('accActLink')) {
    function accActLink(){
        $CI          = &get_instance();
        $uservariant = getUserVariant()->variant_name;
        $query =  $CI->db->where('id', $userId)->get('users')->row();
        $subDomainUrl = 'https://'.$query->account_name.'.'.strtolower(getUserVariant()->variant_name).'.com';
        return $subDomainUrl;
    }
}

if (!function_exists('wpsiteInfo')) {
    function wpsiteInfo(){
       $CI          = &get_instance();
       $id = $CI->session->userdata('login_user')['id'];
       $wpsite = $CI->db->where('id',$id)->get('users')->row()->wpsite;
       return $wpsite;
    }
}

if (!function_exists('getLocation')) {
    function getLocation($id){
        $CI = &get_instance();
            return  $CI->db->select('*')->where('id',$id)->get('locations')->row();
    }
}

if (!function_exists('getSkill')) {
    function getSkill($id){
        $CI = &get_instance();
            return  $CI->db->select('*')->where('id',$id)->get('skills')->row();
    }
}

if (!function_exists('getcontinent')) {
    function getcontinent(){
        $CI = &get_instance();
        $ip = $_SERVER['REMOTE_ADDR'];
        $ipdat = @json_decode(file_get_contents("http://api.ipstack.com/$ip?access_key=7ad0a20f50c40c9a61e20b4651051b3e&format=1"));
        if($ipdat->continent_name == 'North America'){
            return 1;
        }else{
            return 0;
        }
    }
}
if (!function_exists('checkInvite')) {
    function checkInvite($pId, $spId, $hoId){
      $CI = &get_instance();
       $data =  $CI->db->where('service_provider',$spId)->where('homeowner_id',$hoId)->where('project_id',$pId)->get('service_provider_invites')->row();
       // print_r($data)."sadsa";die;
       
       if(empty($data)){
         return 1;
       }else{
         return 0;
       }

    }
}

if (!function_exists('userInfo')) {
    function userInfo($id){
      $CI = &get_instance();
       $data =  $CI->db->where('id',$id)->get('users')->row();
       return $data;
    }
}

if (!function_exists('countBid')) {
    function countBid($pid){
      $CI = &get_instance();
       $data =  $CI->db->where('project_id',$pid)->get('project_bid')->num_rows();
       return $data;
    }
}

if (!function_exists('checkStatus')) {
    function  checkStatus(){
      $CI = &get_instance();
      $id = $CI->session->userdata('login_user')['id'];
      $data =  $CI->db->where('id',$id)->get('users')->row();
      $status = $data->marketplace_status;
      if($status == 1){
        return 1;
      }
      if($status == 2){
        return 2;
      }
      if($status == 3){
        return 3;
      }
    }
}

if (!function_exists('getUserprofession')) {
    function  getUserprofession($id){
      $CI = &get_instance();
      return  $CI->db->where('user_id',$id)->get('service_provider')->row();
    }
}