<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cms extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("auth_model");	
		$this->load->library('session');
	}

	public function enPages()
	{
		$pageName        = end($this->uri->segments);
		$data["content"] = 'biz/pages/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function pages()
	{
		$pageName = end($this->uri->segments);
		$data["content"] = 'biz/pages/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function versusPages()
	{
		$pageUrl = end($this->uri->segments);
		$page_chunks = explode('-', $pageUrl);

		if($page_chunks[1]=='vs'){
			$pageUrl = $page_chunks[0].'-versus-'.$page_chunks[2];
		}
		$data['pageContent'] = $this->db->where('page_link', $pageUrl)->get('cms_pages')->row();

		if (empty($data['pageContent'])) {
			redirect(base_url());
		}
		$data["content"] = 'biz/pages/versus_page';
		$this->load->view('biz/_layout', $data);
	}

	public function landingPages()
	{
		$pageName = end($this->uri->segments);
		$data["content"] = 'biz/pages/landing-pages/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function mpPages()
	{
		$pageName = end($this->uri->segments);
		$data["content"] = 'biz/marketplace/pages/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function componentsPages()
	{
		$pageName = end($this->uri->segments);
		$this->load->view('biz/components/'.$pageName);
	}

	public function noComponentsPages()
	{
		$pageName = end($this->uri->segments);
		$this->load->view('biz/components/no-components/'.$pageName);
	}

	public function downloadPdf()
	{
		$data["content"] = 'biz/downloads/82schoolstpicatawaynj';
		$this->load->view('biz/_layout', $data);
	}

	public function registerServiceProvider($postData)
	{

		$fname     = strtok($postData['email'], '@');
		$lname     = strtok($postData['email'], '@');
		$email     = $postData['email'];
		// $password  = 'password';
		$password  = $postData['password'];

		$temp_data = $this->auth_model->reigster($email, $password,$fname,$lname,'2');

		if($temp_data == 0){
			set_message("error", "Something went wrong");
			redirect(base_url('partnership-enrollment'));
		}else{
			$insertedId = $this->db->insert_id();

			$userDetailsData = array('user_id' => $insertedId);
			$this->db->insert("user_details", $userDetailsData);

			$subdomainData = array('user_id' => $insertedId);
			$this->db->insert("subdomains", $subdomainData);

			set_message("success", "Account Created");
			redirect(base_url('registerd'));
		}
	}

	public function book_demo_submit(){
		$this->form_validation->set_rules('date', 'Date & Time', 'required');
		$this->form_validation->set_rules('name', ' Name', 'required');
		$this->form_validation->set_rules('phone', 'Phone Number', 'required');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		if($this->form_validation->run() == false)
		{
			
			$result = array("status" =>0,"msg"=>"Please Fill All The Fields");
		}else{

			$data['email']    = $this->input->post('email');
			$data['name']   = $this->input->post('name');
			$data['phone'] = $this->input->post('phone');
			$data['date'] = $this->input->post('date');

			$insert=$this->db->insert('book_a_demo',$data);
			if($insert){
			
			$result = array("status" =>1,"msg"=>"Your Demo is Successfully scheduled. We will get back to you soon." );
			}else{
				$result = array("status" =>0,"msg"=>"Sorry!!! Please, try again.");	
			}
		}
		echo json_encode($result);
	}

	public function newsLetter(){
		if (!empty($this->input->post())) { 
			$data = array(
				'email' => $this->input->post('email')
			);
			$insert = $this->db->insert('newsletter', $data);

			if ($insert) {
				redirect(base_url('?newsletter=1'));
			}
		}
		redirect(base_url());
	}

	public function downloads($page = NULL)
	{
		if (!empty($page)) {
			$data["content"] = 'biz/downloads/'.$page;
		}else{
			$data["content"] = 'biz/downloads/download-page';
		}
		$this->load->view('biz/_layout', $data);
	}

	public function quickServices($slug = NULL)
	{
		if (!empty($slug)) {
			$data["content"] = 'biz/downloads/'.$page;
		}else{
			$data["content"] = 'biz/quick-services/quick-services';
		}
		$this->load->view('biz/_layout', $data);
	}

	public function quickEmailRequest($slug = NULL)
	{
		$userEmail = $this->input->post('email');
	    $checkEmail = $this->db->where('email', $userEmail)->get('captured_emails')->row();

	    if(empty($checkEmail)){
	    	$quickData = array(
	    		'email'       => $userEmail,
	    		'quick_email' => 1
	    	);
	      $this->db->insert('captured_emails', $quickData);
	    }else{
	    	if ($checkEmail->quick_email >= 10) {
	    		redirect(base_url('quick-limit-crossed'));
	    	}
	    	$quickCount = $checkEmail->quick_email+1;
	    	$this->db->where('email', $userEmail)->set('quick_email', $quickCount)->update('captured_emails');
	    }
	    redirect('https://demo.pnapnacore.com/admin/invoices?quick=service');
	}

	public function dirCleaning()
	{
		$pageName = 'cleaning/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirCore()
	{
		$pageName = 'core/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirPlumbing()
	{
		$pageName = 'plumbing/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirLitebiz()
	{
		$pageName = 'litebiz/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirCalendar()
	{
		$pageName = 'calendar/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirPodium()
	{
		$pageName = 'podium/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirScope()
	{
		$pageName = 'scope/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}

	public function dirSite()
	{
		$pageName = 'site/index';

		$data["content"] = 'biz/en/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}
	
}