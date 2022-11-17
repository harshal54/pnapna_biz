<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Marketplace extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("auth_model");	
		$this->load->library('session');
		$this->db2 = $this->load->database();
		if(!$this->session->userdata('login_user')  && current_url() != base_url() && !in_array('login',$arr_url)){
			redirect(base_url('signin'));
		}
		
	}

	public function dashboard(){
		$id                   = $this->session->userdata('login_user')['id'];
		$data["content"]      = "dashboard/marketplace/home";
		$data['project']      = $this->db->where('user_id',$id)->get('marketplace_project')->result();
		$data['allproject']   = $this->db->where('status',1)->get('marketplace_project')->result();
		$data['countProject'] = $this->db->where('user_id',$id)->get('marketplace_project')->num_rows();

		// pr($data['allproject'][0]->user_id);die;
		// $projectUserId = $data['allproject'][0]->user_id;
		// $datadb = $this->db->where('homeowner_id',$projectUserId)->where('serviceprovider_id',$id)->get('serviceprovider_ban')->row();
		$this->load->view('dashboard/_layout', $data);
	}

	public function addProject(){
		if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
		$this->checkPhoneNo();
		$id = $this->session->userdata('login_user')['id'];
		$this->db->select_max('id');
		$this->db->where('user_id', $id);
		$result = $this->db->get('marketplace_payment')->row();
    // pr($result->id);die;
		if(!empty($result->id)){

			$maxId = $result->id;
			$this->db->select('*');
			$this->db->where('id', $maxId);
			$result = $this->db->get('marketplace_payment')->row_array();

			if(!empty($result)){
			$this->db->where('payment_id', $result['id']); // OTHER CONDITIONS IF ANY
			$this->db->from('marketplace_project'); //TABLE NAME
			$postProject = $this->db->count_all_results();
				// echo $result['post_project'];die;
				// echo $postProject;die;

			if($postProject < $result['post_project']  ){
				// die('dd');
				$data["content"] = "dashboard/marketplace/add-project";
				$data['categories'] = $this->db->where('deleted_at',NULL)->get('categories')->result();
				$data['skills'] = $this->db->where('deleted_at',NULL)->where('status',1)->get('skills')->result();
				$data['locations'] = $this->db->where('deleted_at',NULL)->get('locations')->result();
				$this->load->view('dashboard/_layout', $data);

			}else{
				$this->session->set_flashdata('msg','Your Plan has been expired. Please buy a plan for post project.');
				redirect(base_url('marketplace-pricing'));
			}
		}

	}else{
		$this->session->set_flashdata('msg',"You don't have any active plan. Please buy a plan to post project.");
		redirect(base_url('marketplace-pricing'));
	} 

}

public function insertProject(){
	// pr($this->input->post());die;
	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
	$this->form_validation->set_rules('categories', 'What categories do your project work in?','required');
	$this->form_validation->set_rules('title', 'Your project title','required');
	$this->form_validation->set_rules('skill', 'What skills do you require?','required');
	$this->form_validation->set_rules('budget', 'Budget','required|greater_than[0]');
	$this->form_validation->set_rules('location', 'Location','required');
	$this->form_validation->set_rules('description', 'Description','required');
	$this->form_validation->set_rules('city', 'City','required');
	$this->form_validation->set_rules('state', 'State','required');
	$this->form_validation->set_rules('zipcode', 'ZipCode','required');

	if($this->form_validation->run() == false)
	{
		set_message("error", "Please fill all fields");
		redirect(base_url('add-project'));
	}else{

		$skill = $this->input->post('skill');
		$checkSkill = $this->db->where('name',$skill)->get('skills')->row();
      if(empty($checkSkill)){
      	// die('sdfsdf');
         $skilldata =  ["name" =>$skill];
         $insertskill = $this->db->insert("skills", $skilldata);
         $skill =  $this->db->insert_id();
         if(! $insertskill){
         set_message("error", "Skill not added.");
			redirect(base_url('add-project'));
         }
      }else{
      	$skill =  $checkSkill->id;
      }
      $category = $this->input->post('categories');
		$checkCategory = $this->db->where('name',$category)->get('categories')->row();
      if(empty($checkCategory)){
         $categorydata =  ["name" =>$category];
         $insertCategory = $this->db->insert("categories", $categorydata);
         $category =  $this->db->insert_id();
         if(! $insertCategory){
         set_message("error", "Category not added.");
			redirect(base_url('add-project'));
         }
      }else{
      	 $category = $checkCategory->id;
      }
      
		$userId = $this->session->userdata('login_user')['id'];
		$this->db->select_max('id');
		$this->db->where('user_id', $userId);
		$result = $this->db->get('marketplace_payment')->row();
		// pr($result);die;
		$data = [
			"user_id"      => $userId,
			"heading"      => $this->input->post('title'),
			"budget"       => $this->input->post('budget'),
			"location"     => $this->input->post('location'),
			"description"  => $this->input->post('description'),
			"skill"        => $skill,
			"category"     => $category,
			'payment_id'   => $result->id,
			"address"      => $this->input->post('address'),
			"posted"       => date("j-F-Y"),
			"city"         => $this->input->post('city'),
		   "state"        => $this->input->post('state'),
		   "zip_code"     => $this->input->post('zipcode'),
		];
		// pr($data);die;

		$insert = $this->db->insert("marketplace_project", $data);
		if($insert){
			set_message("success", "Project added successfully.");
			redirect(base_url('view-marketplace'));
		}else{
			set_message("error", "OOPS! something went wrong.Please try again later.");
			redirect(base_url('add-project'));
		}
	}
}

public function projectinfo($idd)
{
	$id = base64_decode($idd);
	$this->db->select("*");
	$this->db->from("marketplace_project");
	$this->db->where('id',$id);
	$query = $this->db->get();
	$data['data'] = $query->row();

	$this->db->select("*");
	$this->db->from("project_bid");
	$this->db->where('project_id',$id);
	$data['projectBid'] = $this->db->get()->result();
    // pr($data['projectBid']);die;
    
	$data["content"] = "dashboard/marketplace/project-information";
	$this->load->view('dashboard/_layout', $data);

}

public function updaterole(){
	$checkVal = array('1','2');
	$checkexits = in_array($this->input->post('status'), $checkVal);
	if($checkexits){
		$id = $this->session->userdata('login_user')['id'];
		$data=["marketplace_status"=>$this->input->post('status')];
		$update = $this->db->where('id', $id)->update('users', $data);
		if($update){
			set_message("success", "Role update successfully.");
			redirect(base_url('view-marketplace'));
		}else{
			set_message("error", "OOPS! something went wrong.Please try again later.");
			redirect(base_url('view-marketplace'));
		}
	}else{
		set_message("error", "OOPS! something went wrong.Please try again later.");
		redirect(base_url('view-marketplace'));
	}

}

public function showEdit($idd){
	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}

	$id = base64_decode($idd);
	$this->db->select("*");
	$this->db->from("marketplace_project");
	$this->db->where('id',$id);
	$query = $this->db->get();
	$data['data'] = $query->row();
	$data['categories'] = $this->db->where('deleted_at',NULL)->get('categories')->result();
	$data['skills'] = $this->db->where('deleted_at',NULL)->get('skills')->result();
	$data['locations'] = $this->db->where('deleted_at',NULL)->get('locations')->result();
	$data["content"] = "dashboard/marketplace/edit-project";
	$this->load->view('dashboard/_layout', $data);
}

public function updateProject($idd)
{
	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}

// die('dd');

	$this->form_validation->set_rules('categories', 'What categories do your project work in?','required');
	$this->form_validation->set_rules('title', 'Your project title','required');
	$this->form_validation->set_rules('skill', 'What skills do you require?','required');
	$this->form_validation->set_rules('budget', 'Budget','required');
	$this->form_validation->set_rules('location', 'Location','required');
	$this->form_validation->set_rules('description', 'Description','required');
	$this->form_validation->set_rules('city', 'City','required');
	$this->form_validation->set_rules('state', 'State','required');
	$this->form_validation->set_rules('zipcode', 'ZipCode','required');

	if($this->form_validation->run() == false)
	{
		set_message("error", "Please fill all fields");
		redirect(base_url('edit-project/'.$idd));
	}
	$id = base64_decode($idd);
	$data = [
		"heading" => $this->input->post('title'),
		"budget" => $this->input->post('budget'),
		"location" => $this->input->post('location'),
		"description" => $this->input->post('description'),
		"skill" => $this->input->post('skill'),
		"category" => $this->input->post('categories'),
		"address"     => $this->input->post('address'),
		"city"     => $this->input->post('city'),
		"state"     => $this->input->post('state'),
		"zip_code"     => $this->input->post('zipcode'),
		"status"     => 0,
	];
			// pr($data);die;

	
	$this->db->where('id', $id);
	$update  = $this->db->update('marketplace_project', $data);
			// echo $this->db->last_query();die;
	if($update){
		set_message("success", "Project Update successfully.");
		redirect(base_url('view-marketplace'));
	}else{
		set_message("error", "OOPS! something went wrong.Please try again later.");
		redirect(base_url('edit-project/'.$idd));
	}
}

public function showupdate()
{
	if(checkStatus() == 1){redirect(base_url('view-marketplace'));}

	$data["content"] = "dashboard/marketplace/update-profile";
	$data['skills'] = $this->db->where('deleted_at',NULL)->where('status',1)->get('skills')->result();
	$data['locations'] = $this->db->where('deleted_at',NULL)->get('locations')->result();
	$userId = $this->session->userdata('login_user')['id'];
	$this->db->select("*");
	$this->db->from("service_provider");
	$this->db->where('user_id',$userId);
	$query = $this->db->get();
	$result = $query->row();
	if(!empty($result)){
		$data['data'] = $result;
	}
	$this->load->view('dashboard/_layout', $data);
}

public function payment($val){
	$checkVal = array('1','2','3');
	$checkexits = in_array($val,$checkVal);
	if($checkexits){
		if($val == 2){
			$data["price"] = "10";
		}else if($val == 3){
			$data["price"] = "20";
		}else{
			$data["price"] = "0";
		}
		$this->session->set_userdata("marketplacePayment",  $data["price"]);
		$data["content"] = "dashboard/marketplace/payment-page";
		
		$this->load->view('dashboard/_layout', $data);
	}else{
		set_message("error", "OOPS! something went wrong.");
		redirect(base_url('marketplace-pricing'));

	}
}

public function freeProject(){
	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}

	// $id = $this->session->userdata('login_user')['id'];
	// $checkPay = $this->db->where('user_id',$id)->get('marketplace_payment')->result();
	// $this->db->select('*');
	// $this->db->select_max('id');
	// $this->db->where('user_id', $id);
	// $result       = $this->db->get('marketplace_payment')->row();
	// $payment_id   = $result->id;
	// $post_project = $result->post_project;
 //    $totalProject = $this->db->where('user_id',$id)->where('payment_id',$payment_id)->get('marketplace_project')->num_rows();
    // echo $this->db->last_query();die;	
   // pr($totalProject);die;
    // if($totalProject)


	$data=[
		"user_id" => $this->session->userdata('login_user')['id'],
		"payment_details" => 'free',
		"pay_date" => date('Y-m-d'),
		"post_project" => '3',
	];

	$insert = $this->db->insert('marketplace_payment',$data);
	if($insert){
		set_message("success", "Now you can post project");
		redirect(base_url('add-project'));
	}
}

public function update_serviceProvider(){
// pr($this->input->post());die;
	$this->form_validation->set_rules('professionaltitle', 'Professional title', 'required');
	$this->form_validation->set_rules('skill', 'What skills do you require?', 'required');
	$this->form_validation->set_rules('experience', 'Experience/yr', 'required');
	$this->form_validation->set_rules('rate', 'Rate/hr', 'required');
	$this->form_validation->set_rules('project', 'Project Worked', 'required');
	$this->form_validation->set_rules('location', 'Location', 'required');
	$this->form_validation->set_rules('description', 'Description', 'required');
	$this->form_validation->set_rules('phone', 'Phone', 'required');
	
	if($this->form_validation->run() == false)
	{
		set_message("error", "Please fill all fields");
		redirect(base_url('update-profile'));
	}
	$experience = $this->input->post('experience');
	$rate = $this->input->post('rate');
	$project = $this->input->post('project');
	if($experience>=0 && $experience<=100 && $rate>0 && $project>0 ){
	$data = [
		"user_id" =>$this->session->userdata('login_user')['id'],
		"professional" =>$this->input->post('professionaltitle'),
		"country" =>$this->input->post('location'),
		"zip" =>$this->input->post('zipcode'),
		"experience" =>$experience,
		"hr_rate" =>$rate,
		"skill" =>$this->input->post('skill'),
		"facebook_id" =>$this->input->post('facebook'),
		"instagram_id" =>$this->input->post('instagram'),
		"website" =>$this->input->post('website'),
		"description" =>$this->input->post('description'),
		"project_worked"=>$project
	];
	$userId = $this->session->userdata('login_user')['id'];
	$user= $this->db->get_where('users',array('id'=>$userId))->row();
	
	$zip =  $this->input->post('zipcode');
	$variant = $user->variant_id;
	$phone = $this->input->post('phone');
	$nam = $user->name;

	$dat  = date('Ymd', time());
	if(!empty($variant))
	{
	  if($variant=='3') {
		$trade = 'CL';
	  }else if($variant =='8')
	  {
		$trade = 'PL';
	  }
	}else{
	  $trade = 'XX';
	}
	 if(!empty($phone))
	 {
		if(strpos($phone, ')') || strpos($phone, '(') || strpos($phone, '-') !== false){

			$phn = str_replace(array('(',')','-',' '), '',$phone);
		}
		else{
			$phn = $phone; 
		  }
	  
	 }else{
	   $phn = '1111111111'; 
	 }
	 if(!empty($nam))
	 {
	  $name= strtoupper(substr($nam, 0,3));
	 
	 }else{
	  $name = 'ZZZ'; 
	 }
	 $date = $dat;
	 $comp = 'I';
	 $future = 'TT';

	 $UID = $zip.$trade.$phn.$name.$date.$comp.$future;
	
	$data2 = [
		"phone"=>$this->input->post('phone'),
		'UID'=> $UID,
	];

	$this->db->select("*");
	$this->db->from("service_provider");
	$this->db->where('user_id',$userId);
	$query = $this->db->get();
	$result = $query->row();
	$this->db->where('id', $userId)->update('users', $data2);

	if(!empty($result)){
		$update = $this->db->where('user_id', $userId)->update('service_provider', $data);
	
		if($update){
			set_message("success", "Profile update successfully.");
			redirect(base_url('view-marketplace'));
			
		}else{
			set_message("error", "OOPS! something went wrong.");
			redirect(base_url('update-profile'));
		}
	}else{
		$insert = $this->db->insert('service_provider',$data);
		if($insert){
			set_message("success", "Profile update successfully.");
			redirect(base_url('view-marketplace'));
			
		}else{
			set_message("error", "OOPS! something went wrong.");
			redirect(base_url('update-profile'));
		}
	}
 }else{
 	set_message("error", "Please enter all information correctly.");
			redirect(base_url('update-profile'));
 }

}

public function banlist(){
if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
	$data['allserviceProviser'] = $this->db->where('marketplace_status',2)->get('users')->result();
	$data["content"] = "dashboard/marketplace/ban-list";  
	$this->load->view('dashboard/_layout', $data);

}

public function banstatus($servicepId){
	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
	$temp = array('0','1');
	$status =  $this->input->post('status');
	if(in_array($status,$temp)){
		$servicepid = base64_decode($servicepId);
		$homeoId    = $this->session->userdata('login_user')['id'];
		$this->db->where('homeowner_id',$homeoId);
		$this->db->where('serviceprovider_id',$servicepid);
		$query = $this->db->get('serviceprovider_ban')->row();
	   	 // echo $this->db->last_query();die;
	   	 // pr($query);die;
		if(empty($query)){
			$data = ['homeowner_id' => $homeoId , "serviceprovider_id" => $servicepid];
			$insert = $this->db->insert('serviceprovider_ban',$data);
			if($insert){
				set_message("success", "Status Changed");
				redirect(base_url('banlist'));
			}else{
				set_message("error", "OOPS! something went wrong.");
				redirect(base_url('banlist'));
			}
		}else{
			$this->db->where('id',$query->id);
			$delete =  $this->db->delete('serviceprovider_ban');
			if($delete){
				set_message("success", "Status Changed");
				redirect(base_url('banlist'));
			}else{
				set_message("error", "OOPS! something went wrong.");
				redirect(base_url('banlist'));
			}
		}
	}else{
		set_message("error", "OOPS! something went wrong.");
		redirect(base_url('banlist'));
	}
}

	public function goBid($pId){

		$pid = base64_decode($pId);
		$id  = $this->session->userdata('login_user')['id'];
		$data = ['serviceprovider_id'=> $id , 'project_id' => $pid];
		$insert = $this->db->insert("project_bid", $data);
		if($insert){
			set_message("success", "Bid added successfully.");
			redirect(base_url('view-marketplace'));
		}else{
			set_message("error", "OOPS! something went wrong.Please try again later.");
			redirect(base_url('add-project'));
		}
	}

	public function fullinfo($userId){
		$userid = base64_decode($userId);
		$data['userinfo']  = $this->db->where('id',$userid)->get('users')->row();
		$data['workinfo']  = $this->db->where('user_id',$userid)->get('service_provider')->row();
		// pr($data['workinfo']);die;
	    $data["content"]   = "dashboard/marketplace/service-provider-info";  
	    $this->load->view('dashboard/_layout', $data);
	}

	public function addphonenumber()
	{
     $userid  = $this->session->userdata('login_user')['id'];
     $phoneNumber  = $this->input->post('phone');
     $data = ["phone" => $phoneNumber];
     $update = $this->db->where('id',$userid)->update('users',$data);
     if($update){
			set_message("success", "Phone Number added successfully.");
			redirect(base_url('view-marketplace'));
		}else{
			set_message("error", "OOPS! something went wrong.Please try again later.");
			redirect(base_url('view-marketplace'));
		}
	}

	public function checkPhoneNo(){
		$userid  = $this->session->userdata('login_user')['id'];
		$userProjects = $this->db->where('user_id',$userid)->get('marketplace_project')->num_rows();

		if ($userProjects >=1 && empty(userData()->phone)) {
			redirect(base_url('view-marketplace'));
		}
	}

	public function fbid()
	{
		$userId    =  $this->input->post('userId');
		$projectId =  $this->input->post('projectId');
		$data = ["project_id" =>$projectId, "serviceprovider_id"=>$userId];
		$insert =  $this->db->insert("project_bid", $data);
		if ($insert){
			$res = array("status"=>1,"msg"=>"success");
		}else{
			$res = array("status"=>0,"msg"=>"fail");
		}
		echo json_encode($res);

	}
  
    public function allserviceProvider($pId){
	      if(checkStatus() == 2){redirect(base_url('view-marketplace'));}
			$this->db->select('users.*,service_provider.*');
			$this->db->from('users');
			$this->db->join('service_provider', 'users.id = service_provider.user_id ');
			$this->db->where('users.marketplace_status',2);
			// echo $this->db->last_query();die;
      	$data['sPdetail'] = $this->db->get()->result(); 
      	// pr($data['sPdetail']);die;
      	$data['projectId'] = base64_decode($pId);
      	$data["content"] = "dashboard/marketplace/list-service-provider";
		   $this->load->view('dashboard/_layout', $data);
    }

    public function invite($spId, $pId){
         $spid         = base64_decode($spId);
         $pid          = base64_decode($pId);
         $homeowner_id = $this->session->userdata('login_user')['id']; 
         $data = ["service_provider" => $spid, "homeowner_id" =>$homeowner_id, "project_id" => $pid ];
         $insert = $this->db->insert('service_provider_invites',$data);
         if($insert){
						set_message("success", "Invite send successfully.");
			         redirect(base_url('allserviceProvider/'.$pId));
         }else{
			         set_message("danger", "OOPS! something went wrong.Please try again later.");
			         redirect(base_url('allserviceProvider/'.$pId));
         }
    }

    public function invitations($pId){
	if(checkStatus() == 1){redirect(base_url('view-marketplace'));}

         $pid      = base64_decode($pId);
         $userId   = $this->session->userdata('login_user')['id'];
         $data['invitationData'] = $this->db->where('project_id',$pid)->where('service_provider',$userId)->get('service_provider_invites')->row();
         $data["content"] = "dashboard/marketplace/invitations";
		   $this->load->view('dashboard/_layout', $data);
    }

    public function project_complete($uId){
    	// echo $this->input->post('status');die;
    	if(checkStatus() == 2){redirect(base_url('view-marketplace'));}

    	if(!empty($uId)){
    		  $uid = base64_decode($uId);
    		  $data = ["project_complete" => $this->input->post('status')];
    		  $update = $this->db->where('id',$uid)->update('marketplace_project',$data);
		     if($update){
					set_message("success", "Project Status Change Successfully.");
					redirect(base_url('view-marketplace'));
				}else{
					set_message("error", "OOPS! something went wrong.Please try again later.");
					redirect(base_url('view-marketplace'));
				}
    	}
    }

}