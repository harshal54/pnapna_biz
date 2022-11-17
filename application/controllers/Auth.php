<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("auth_model");	
		$this->load->library('session');
	}

	public function index($serviceprovider_id = '')
	{
		if (userData()) {
			redirect(base_url('dashboard'));
		}
		if(!empty($serviceprovider_id)){
			$data["serviceprovider_id"] = $serviceprovider_id ;
		}
		$data["content"] = "biz/auth/login";
		$this->load->view('biz/_layout', $data);
	}

	public function login()
	{
		// echo $this->security->get_csrf_token_name().'<br>';
        // echo $this->security->get_csrf_hash(); die();
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password','Password','required');

		if($this->form_validation->run() == false){
			$data["content"] = "biz/auth/login";
			$this->load->view('biz/_layout', $data);
		}else{

			$email = $this->input->post("email");
			$data = $this->db->where('email',$email)->get("users")->row();

			if(empty($data)){
				set_message("error", "Your account is invalid");
				redirect(base_url('signin'));
			}
			$check = $data->verified_at;
			if(empty($check)){
				set_message("error", "Your account is not verified yet");
				redirect(base_url('signin'));
			}
			$data = $this->auth_model->login($email, $this->input->post("password"));

			if($data === 0){
				set_message("error", "Login failed");
				redirect(base_url('signin'));
			}else{
				if($data->ban == 0){
						$sessionData = array(
						'id'          => $data->id,
						'name'        => $data->name,
						'email'       => $data->email,
						'verified_at' => $data->verified_at,
						'created_at'  => $data->created_at,
						'token'       => base64_encode($this->input->post("password"))
					);

					// $data = json_encode($sessionData);
					setcookie('centralAuthCookie',1, time() + (86400 * 30), "/");

					$this->session->set_userdata("login_user", $sessionData);
					set_message("success", "Login successful");
					redirect(base_url('dashboard'));
				}else{
					set_message("error", "Your account is ban. contact to admin.");
				    redirect(base_url('signin'));
				}
				
			}
		}
	}

	public function register()
	{
	 	header('Access-Control-Allow-Origin: *');

		if (!empty($this->input->post())) {

		$fname = explode('@', $this->input->post('email'))['0'];
		$lname = 'Name';

		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');

		if($this->form_validation->run() == false)
		{
			$data["content"] = "biz/auth/signup";
			$this->load->view('biz/_layout', $data);
		}else{
			$email    = $this->input->post('email');
			$password = 'Pnp@'.rand(100,10000);

			$temp_data = $this->auth_model->reigster($email, $password,$fname,$lname);

			if($temp_data == 0){
				set_message("error", "Something went wrong");
				redirect(base_url('signup'));
			}else{
				$insertedId = $this->db->insert_id();
			
				// Create User Details
				$userDetailsData = array('user_id' => $insertedId);
				$this->db->insert("user_details", $userDetailsData);

				// Create Subdomain Details
				$subdomainData = array('user_id' => $insertedId);
				$this->db->insert("subdomains", $subdomainData);
				
				set_message("success", "Account Created");
				redirect(base_url('en/page/registerd'));
			}
		}

		}else{
			$data["content"] = "biz/auth/signup";
			$this->load->view('biz/_layout', $data);
		}
	}
	public function profileGetS(){
		$email = $this->session->userdata('login_user')['email'];
		$inputData = $this->input->post();

		$fname = $inputData['f_name'];
		$lname = $inputData['l_name'];
		$phone = $inputData['phone'];

		$data = array(
			'name'   => $fname,
			'l_name' => $lname,
			'phone'  => $phone
		);

		$update = $this->db->where('email', $email)->update('users', $data);
		if ($update) {
			redirect(base_url('getStarted'));
		}else{
			echo "Something went wrong!";die;
		}
	}

	public function checkAccName(){
		$email         = $this->session->userdata('login_user')['email'];
		$accInput = $this->input->post('account_name');
		
		$accountname = str_replace(" ","",preg_replace('/[^a-zA-Z0-9_-]/s','',strtolower($accInput)));

		if (strlen($accountname) < 11 || strlen($accountname) > 15) {
			$data = array(
				'color' => 'red',
				'accname' => $accountname,
				'msg'  => 'Please choose your account name between 11 to 15 Characters',
			);
		}else{
			$checkAccount = $this->db->where('account_name', $accountname)->get('users')->row();
			if (!empty($checkAccount)) {
				$data = array(
					'color' => 'red',
					'accname' => $accountname,
					'msg'  => 'This account name is taken. Please try again with other name',
				);
			}else{
				$data = array(
					'color' => '#009a0c',
					'accname' => $accountname,
					'msg'  => 'This account name is available',
				);
			}
		}
		echo json_encode($data);
	}

	public function saveAccName(){
		$email    = $this->session->userdata('login_user')['email'];
		$accInput = $this->input->post('account_name');

		$accountname = str_replace(" ","",preg_replace('/[^a-zA-Z0-9_-]/s','',strtolower($accInput)));

		$updateData = array(
			'account_name' => $accountname,
			'updated_at'   => date('Y-m-d H:i:s')
		);
		if (strlen($accountname) < 11 || strlen($accountname) > 15) {
			$data = array(
				'color' => 'red',
				'accname' => $accountname,
				'msg'  => 'Please choose your account name between 11 to 15 Characters',
			);
		}else{
			$checkAccount = $this->db->where('account_name', $accountname)->get('users')->row();
			if (!empty($checkAccount)) {
				$data = array(
					'color' => 'red',
					'accname' => $accountname,
					'msg'  => 'This account name is taken. Please try again with other name',
				);
			}else{

				$insert = $this->db->where('email', $email)->update('users', $updateData);
				$this->session->unset_userdata('account_name_from_enrollment');
				$data = array(
					'color' => '#009a0c',
					'accname' => $accountname,
					'msg'  => 'success',
				);
			}
		}
		echo json_encode($data);
	}

	public function saveVariantName(){
		$email    = $this->session->userdata('login_user')['email'];

		if (!empty($this->input->post('variant_id'))) {
			$variant_id = $this->input->post('variant_id');

			$insert = $this->db->set('variant_id', $variant_id)->where('email', $email)->update('users');

			if ($insert) {
				set_message("success", "You are all set");
				redirect(base_url('dashboard'));
			}
		}
		set_message("error", "Something went wrong");
		redirect(base_url('chooseAccVarient'));
	}

	public function verification($useremail){
		$email = base64_decode($useremail);
		// pr($email);die;
		$verified_at = date('Y-m-d H:i:s');
		$update = $this->db->set('verified_at', $verified_at)->where('email', $email)->update('users');

		if($update){
			set_message("success", "Your account is verified");
			redirect(base_url('signin'));
		}else{
			set_message("error", "Something went wrong");
			redirect(base_url('en/page/registerd'));
		}
	}

	public function logout(){
		setcookie('centralAuthCookie','', time() - (86400 * 30), "/");
		$this->session->unset_userdata("login_user");
		redirect(base_url());
	}


	public function forget_password(){

		if (userData()) {
			redirect(base_url('dashboard'));
		}
		$data["content"] = "biz/auth/forgetpassword";
		$this->load->view('biz/_layout', $data);

	}
	public function forget_pass(){

		if (userData()) {
			redirect(base_url('dashboard'));
		}
		$email = $this->input->post('email');

		$check= $this->auth_model->forgetpassword($email);
		if($check != '0'){

			set_message("success", "Forgot Password Link Sent Successfully");
			redirect(base_url('forget-password-link'));

		}else{
			set_message("error", "Email is not exist");
			redirect(base_url('forget-password'));

		}

	}

	public function reset_password($token){

		if (userData()) {
			redirect(base_url('dashboard'));
		}
		$data['token'] = base64_decode($token);

		$data["content"] = "biz/auth/resetpassword";
		$this->load->view('biz/_layout', $data);

	}

	public function resetpassword(){

		$ftp_token = $this->input->post('token');
		$password = $this->input->post('password');

		$this->form_validation->set_rules('password','Password','trim|required|min_length[4]|max_length[40]');
		$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');

		if($this->form_validation->run() == false)
		{
		
		$data['token'] = $this->input->post('token');
		$data["content"] = "biz/auth/resetpassword";
		$this->load->view('biz/_layout', $data);
		}else{

		$check= $this->auth_model->resetpassword($ftp_token, $password);

		if($check == 0)
		{
			set_message("error", "Something went wrong");
			redirect(base_url('forget-password'));
		}else{

			set_message("success", "Your Password changed successfully");
			redirect(base_url('signin'));
		}
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
				$userEmail = $this->input->post("email");
				$userPass  = $this->input->post("password");




				// if($data->ban == 0){
				// 	$sessionData = array(
				// 	'id'          => $data->id,
				// 	'name'        => $data->name,
				// 	'email'       => $data->email,
				// 	'verified_at' => $data->verified_at,
				// 	'created_at'  => $data->created_at,
				// 	'token'       => base64_encode($this->input->post("password"))
				// );

				// // $data = json_encode($sessionData);
				// setcookie('centralAuthCookie',1, time() + (86400 * 30), "/");

				// $this->session->set_userdata("login_user", $sessionData);
				// set_message("success", "Login successful");



				$data = $this->db->where("email", $userEmail)->get('users')->row();
				if(app_hasher()->CheckPassword($userPass, $data->password)){

					$sessionData = array(
						'id'          => $data->id,
						'name'        => $data->name,
						'email'       => $data->email,
						'verified_at' => $data->verified_at,
						'created_at'  => $data->created_at,
						'token'       => base64_encode($this->input->post("password"))
					);
					setcookie('centralAuthCookie',1, time() + (86400 * 30), "/");
					$this->session->set_userdata("login_user", $sessionData);
					// $this->session->set_userdata("login_user", $data);
					echo "success";die;
				}else{
					echo "Login failed!";die;
				}

				// $data = $this->Auth_model->login($userEmail, $userPass);

				// pr($data);die;

				// if($data === 0){
				// 	echo "Login failed!";die;
				// }else{
				// 	$this->session->set_userdata("login_user", $data);
				// 	echo "success";die;
				// }
			}else{
				echo "Login failed!";die;
			}
		}else{
			echo "Login Failed. Please enter valid account details!";die;
		}
	}
	
}