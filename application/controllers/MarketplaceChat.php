
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MarketplaceChat extends CI_Controller {

	    function __construct(){
			parent::__construct();
			$this->load->model("auth_model");	
			$this->load->library('session');
			$this->db2 = $this->load->database();
      if(!$this->session->userdata('login_user')  && current_url() != base_url() && !in_array('login',$arr_url)){
      redirect(base_url('signin'));
      }
		}

      public function index($idd)
      {
        if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
      	$id      = base64_decode($idd);
        $userId  = $this->session->userdata('login_user')['id'];
        $where = "`project_id` = '".$id."' AND (`reciver_id` = '".$userId."' OR `sender_id` = '".$userId."')";

      	$data['getUserChat'] = $this->db->where($where)->get('marketplace_chat')->result();
        // echo $str = $this->db->last_query();die;

      	// pr($data['getUserChat']);die;
        $data['projectId'] = $id;
        $data['allUser'] = $this->db->where('project_id',$data['projectId'])->where('reciver_id',$userId)->group_by('reciver_id')->get('marketplace_chat')->result();
        // echo $str = $this->db->last_query();die;

      	$data["content"] = "dashboard/marketplace/chat";
        // pr($data['allUser']);die;
      	$this->load->view('dashboard/_layout', $data);
      }

      public function addmsg(){
      	$msg       = $this->input->post('msg');
      	$projectId = $this->input->post('projectId');
      	$senderId  = $this->session->userdata('login_user')['id'];
        $reciverId = $this->input->post('reciverId');
      	// $reciver_id = $this->db->where('id',$projectId)->get('marketplace_project')->row();
      	// $reciverId  = $reciver_id->user_id;
      	$data = [
         "project_id" => $projectId,
         "sender_id"  => $senderId,
         "reciver_id" => $reciverId,
         "message"    => $msg,
         "created_at" => date("j-F-Y"),
      	];
      	$insert = $this->db->insert('marketplace_chat',$data);
      	
      	if($insert){
      		$success = ["status"=>1];
      	}else{
      		$success = ["status"=>0];
      	}

      	echo json_encode($success);
      	die;	
      }


      public function getmsg($chatid=NULL){
        $projectId =  $this->input->post('projectId');
      	$id = $this->session->userdata('login_user')['id'];

        $where = "`project_id` = '".$projectId."' AND (`reciver_id` = '".$id."' OR `sender_id` = '".$id."') AND `id` > '".$chatid."'";
        // echo $str = $this->db->last_query();die;


        $getUserChat = $this->db->where($where)->order_by('id','ASC')->get('marketplace_chat')->result();

        // echo $str = $this->db->last_query();die;

        // pr($getUserChat);die;

       if(!empty($getUserChat)){
        $data = ["status"=>1,"msg"=>$getUserChat];
       }else{
        $data = ["status"=> 0];
       }
       echo json_encode($data);
        die;  
      	
      }

      public function getuserchat($rxId=NULL, $userId=NULL){
     if(checkStatus() == 2){redirect(base_url('view-marketplace'));}

        $data['projectId'] = $rxId;
        $data['userId'] = $userId;
        $data['userName'] = $this->db->where('id',$data['projectId'])->get('marketplace_project')->row()->user_id;
        // pr($data['userName']);die;
        $id = $this->session->userdata('login_user')['id'];
         $where = "`project_id` = '".$data['projectId']."' AND (`reciver_id` = '".$id."' OR `sender_id` = '".$id."')";

         $data['getUserChat']     = $this->db->where($where)->order_by('id','ASC')->get('marketplace_chat')->result();
         $data['getUserLastChat'] = $this->db->select_max('id')->where($where)->order_by('id','ASC')->get('marketplace_chat')->row()->id;
        
      	$this->load->view('dashboard/marketplace/userchat', $data);
      }

      public function discussion($projectid){
  if(checkStatus() == 1){redirect(base_url('view-marketplace'));}

          $projectId = base64_decode($projectid);
          $data['projectId'] = $projectId;
          $id = $this->session->userdata('login_user')['id'];

          $where = "`project_id` = '".$projectId."' AND (`reciver_id` = '".$id."' OR `sender_id` = '".$id."')";
// echo "dfgdf";
         $data['getUserChat']     = $this->db->where($where)->order_by('id','ASC')->get('marketplace_chat')->result();

         // echo $this->db->last_query(); die;

         $data['getUserLastChat'] = $this->db->select_max('id')->where($where)->order_by('id','ASC')->get('marketplace_chat')->row()->id;

         // pr( $data['getUserChat']);die;
         $userId = $this->db->where('id',$projectId)->get('marketplace_project')->row()->user_id;
         $data['userinfo'] = $this->db->where('id',$userId)->get('users')->row();
         // pr($data['userinfo']);die; 
        // pr($data['userinfo']->name);die;
        $data["content"] = "dashboard/marketplace/serviceProvider-chat";
        $this->load->view('dashboard/_layout', $data);

       

      }
}
