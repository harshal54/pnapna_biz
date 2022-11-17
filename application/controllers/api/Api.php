<?php
// require APPPATH . 'libraries/REST_Controller.php';

class Api extends CI_Controller {

   public function __construct() {
      parent::__construct();
      $this->load->database();
      header('Access-Control-Allow-Origin: *');
   }

   function check_email_post($token=NULL)
   {
      $data = 0;
      if(empty($token)){
         $data = 0;
      }else{
         $email = base64_decode($token);
         $query = $this->db->where('email', $email)->get("users")->row();
         if (!empty($query)) {
            $data = 1;
         }
      }

      $this->response($data, REST_Controller::HTTP_OK);
   }

   function contact_post($email = null){
      $email = $this->input->post('email');
      $message = $this->input->post('message');
      $name = $this->input->post('name');
      if(!empty($email) && !empty($message) && !empty($name)){
        $data  = [
          "name" => $this->input->post('name'),
          "email" => $this->input->post('email'),
          "message" => $this->input->post('message')
        ];
        $insert = $this->db->insert('contacts',$data);
        if($insert){
         $data = ['status'=>1,'class'=>'text-success','msg'=>"Your Contact Form submit successfully.we will contact you soon."];
        }else{
          $data = ['status'=>0,'class'=>'text-danger','msg'=>"OOPS! Something went wrong. please try again"];
        }
      }else{
          $data = ['status'=>0,'class'=>'text-danger','msg'=>"OOPS! Something went wrong. please try again"];
      }
       $this->response($data, REST_Controller::HTTP_OK);
   }

   function syncUsers(){
      $syncUsers = $this->db->select('id as u_id,name,email,account_name,verified_at,created_at as date_joined')->get('users')->result_array();
      echo json_encode($syncUsers);die;
   }

}
?>