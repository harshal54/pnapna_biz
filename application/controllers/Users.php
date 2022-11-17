<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller {

	function __construct(){
		parent::__construct();
	}

	public function getStarted(){
		if (!empty(userData()->name)) {
			redirect(base_url('chooseAccVarient'));die;
		}

		$data["content"] = "dashboard/getstarted";
		$this->load->view('dashboard/_layout', $data);
	}

	public function chooseAccVarient(){
		if (empty(userData()->name)) {
			redirect(base_url('getStarted'));die;
		}
		if (!empty(userData()->account_name) && !empty(userData()->variant_id)) {
			redirect(base_url('dashboard'));die;
		}
		$data["content"] = "dashboard/chooseaccvarient";
		$this->load->view('dashboard/_layout', $data);
	}

	public function setupWorkManager(){
		if ($this->input->post()) {
			$userId              = userData()->id;
			$inputArr            = $this->input->post();
			$variantId           = userData()->variant_id;
			$totalPriceModules[] = getCartPlan()['planCartPrice'];
			unset($inputArr['submit']);

			if (!empty($inputArr)) {
				foreach ($inputArr as $key => $value) {
					$getModules = $this->db->select('id,name,slug,price')->where('slug', $key)->where('variant_id',$variantId)->get('modules')->row();

					$getModules = json_decode(json_encode($getModules), true);

					$totalPriceModules[] = $getModules['price'];
					$getModules['status'] = '0';
					$totalModules[]      = $getModules;
				}
			}else{
				$totalModules = NULL;
			}

			$totalPriceModules = array_sum($totalPriceModules);
			$carToken = 'UI'.userData()->id.get_token(30);

			$cartData = array(
				'user_id'      => userData()->id,
				'name'         => 'Add On Modules',
				'modules'      => json_encode($totalModules),
				'module_price' => $totalPriceModules,
				'total_price'  => $totalPriceModules,
				'token'        => $carToken,
			);

			if (!empty(getCart())) {
				$query = $this->db->where('user_id', $userId)->update('cart', $cartData);
			}else{
				$query = $this->db->insert('cart', $cartData);
			}

			if ($query) {
				set_message("success", "Your cart is updated");
				redirect(base_url('checkoutPayment'));
			}else{
				set_message("error", "Something went wrong");
				redirect(base_url('setupWorkManager'));
			}

		}else{
			if (!empty(userData()->account_name) && !empty(userData()->variant_id)) {
				$data['getModules'] = $this->db->where('variant_id', userData()->variant_id)->order_by('name','asc')->get('modules')->result();
			}
			$data["content"] = "dashboard/setupworkmanager";
			$this->load->view('dashboard/_layout', $data);
		}
	}

    public function loginByChromeExtension(){
    	header('Access-Control-Allow-Origin: *');
		
		if(!empty($this->input->post("email"))){
			$email = $this->input->post("email");
			$this->db->select("*");
			$this->db->from("users");
			$this->db->where('email',$email);
			$query = $this->db->get();
			$data = $query->row();
			if (!empty($data)) {
				$check = $data->verified_at;
				if($check == 0){
					echo "Your account is not activated yet.";die;
				}
				$data = $this->Auth_model->login($this->input->post("email"), $this->input->post("password") );
				if($data === 0){
					echo "Login failed!";die;
				}else{
					$this->session->set_userdata("login_user", $data);
					echo "success";die;
				}
			}else{
				echo "Login failed!";die;
			}
		}
    }

    public function myIntegrations(){
    	$userId = userData()->id;
    	$data['getUserModules'] = $this->db->where('user_id', $userId)->get('user_modules')->row();

    	if (empty($data['getUserModules'])) {
    		echo "Sorry, Integrations are unavailable in your database.<br><a href=".base_url('dashboard')."> Go to Dashboard</a>";
    	}else{
    		$userModules = $data['getUserModules']->modules;
	    	$data['getUserModules'] = json_decode($userModules);

	    	$data["content"] = "dashboard/my_applications";
			$this->load->view('dashboard/_layout', $data);
    	}
    }

    public function activeModules(){

    	$slug   = $this->input->post('slug');
    	$status = $this->input->post('status');

        $variantName  = getUserVariant()->slug;
        $accountName  = userData()->account_name;
        $dbName = strtolower($variantName."_".$accountName);

        $saasDbConn = mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);
        if (mysqli_connect_errno())
        {
          echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }


        $sql = "UPDATE tblmodules SET active='".$status."' WHERE module_name='".$slug."'";

		if ($saasDbConn->query($sql) === TRUE) {
		  echo $status;
		} else {
		  echo $status;
		}

		$getUserModules = json_decode($this->db->where('user_id',userData()->id)->get('user_modules')->row()->modules, true);

		foreach ($getUserModules as $key => $userModule) {
			if ($userModule['slug'] == $slug) {
				$userModule['status'] = $status;
			}
			$userModuleNew[] = $userModule;
		}

		$this->db->where('user_id',userData()->id)->set('modules',json_encode($userModuleNew))->update('user_modules');
		
		die;
    }

    public function choosePlan($id){
    	if ($id==1) {
    		$planPrice = 50;
    		$planName  = 'Pay Par Use';
    	}elseif ($id==2) {
    		$planPrice = 79;
    		$planName  = 'Small Teams';
    	}elseif ($id==3) {
    		$planPrice = 129;
    		$planName  = 'Medium Teams';
    	}elseif ($id==4) {
    		$planPrice = 99;
    		$planName  = 'Lifetime';
    	}elseif ($id==0) {
    		$planPrice = 0;
    		$planName  = 'Free for Life';
    	}
    	$planArray = array(
    		'planCartId'    => $id,
    		'planCartName'  => $planName,
    		'planCartPrice' => $planPrice
    	);
    	$this->session->set_userdata('planCartData', $planArray);

			$this->session->unset_userdata('life_time_from_enrollment');
    	redirect(base_url('setupWorkManager'));
    }
 
	public function profile(){
		if (empty(userData()->name)) {
			redirect(base_url('chooseAccVarient'));die;
		}

		$data["content"] = "dashboard/profile";
		$this->load->view('dashboard/_layout', $data);
	}

	public function edit_profile(){
		if (empty(userData()->name)) {
			redirect(base_url('chooseAccVarient'));die;
		}

		$data["content"] = "dashboard/edit-profile";
		$this->load->view('dashboard/_layout', $data);
	}

	public function submit_profile(){

			$userid= userData()->id;

				$this->form_validation->set_rules('name', 'First Name', 'required');
				$this->form_validation->set_rules('l_name', 'Last Name', 'required');


				if($this->form_validation->run() == false)
				{
					$this->session->set_flashdata('errors',validation_errors());
					redirect(base_url('edit-profile'));

				}else{

					$data['name']    = $this->input->post('name');
					$data['l_name']   = $this->input->post('l_name');
					$data1['street'] = $this->input->post('street');
					$data1['state'] = $this->input->post('state');
					$data1['country'] = $this->input->post('country');
					$data1['city']    = $this->input->post('city');
					$data1['zip']    = $this->input->post('zip');
					$data1['billing_address'] = $this->input->post('billing_address');
				
						$config["allowed_types"] = 'jpg|jpeg|png';

						$uploadPath = 'uploads/user-profile/'; 

							if (!is_dir($uploadPath)) {
								mkdir($uploadPath, 0777, TRUE);
							}

						$config['upload_path'] = $uploadPath; 
						$break= explode(".", $_FILES['image']['name']);
						$ext = end($break);
						$file_name = time().".".$ext;
						$_FILES['image']['name'] = $file_name;

						$this->load->library('upload', $config);
						$this->upload->initialize($config);

					if($this->upload->do_upload('image'))
					{ 
						$uploadData = $this->upload->data(); 
						$data['image'] = $_FILES['image']['name'];

					}
				else
					{
					$error = array('error' => $this->upload->display_errors());
				}
					

					$this->db->where('id',$userid);
					$this->db->update('users',$data);
					$this->db->where('user_id',$userid);
				$update = $this->db->update('user_details',$data1);

				if($update){
					set_message("success", "Profile Updated Succesfully");
					redirect(base_url('edit-profile'));

				}else{
					set_message("error", "Something Went Wrong");
					redirect(base_url('edit-profile'));
				}
					
				}

	}

	public function change_password(){
		if (empty(userData()->name)) {
			redirect(base_url('chooseAccVarient'));die;
		}

		$data["content"] = "dashboard/change-password";
		$this->load->view('dashboard/_layout', $data);
	}

	


	public function update_password(){

		$userid= userData()->id;
		
		$this->form_validation->set_rules('password','Old Password','trim|required');    
		$this->form_validation->set_rules('new_password','New Password','trim|required|min_length[4]|max_length[40]'); 				
		$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim|required|min_length[4]|max_length[40]|matches[new_password]');

		if($this->form_validation->run() == false) {
			$this->session->set_flashdata('errors', validation_errors());
			redirect(base_url('change-password'));
		}
		else{

			$password=$this->input->post('password');	
			$new_password=$this->input->post('new_password');
			$confirm_password=$this->input->post('confirm_password');	
			$query = $this->db->get_where('users', array('id' => $userid));  
			$userRow = $query->row();	
			if($query->num_rows() == 1){

				if(app_hasher()->CheckPassword($password, $userRow->password)){
					$data['password'] = app_hasher()->HashPassword($new_password);
					$data['password_md5']  = md5($new_password);
			
					$this->db->where("id",$userid);
					$query = $this->db->update("users",$data); 
					if($query){
						set_message("success", "Password Updated Succesfully");
					redirect(base_url('profile'));
					}
					else{
						set_message("error", "Password Not Updated");
						redirect(base_url('change-password'));
					}

				}
				else{
					set_message("error", "Old Password not matched");
						redirect(base_url('change-password'));
				}

			}

		}

}

}