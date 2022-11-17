<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FrontMarketplace extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("auth_model");	
		$this->load->library('session');
		$this->db2 = $this->load->database();
		$this->load->model('Auth_model', 'import');
		// $this->load->library('excel');

	}

	public function index(){
		$data['data']    = $this->db->where('status',1)->get('marketplace_project',5)->result();
		// pr($data['data']);die;
		$data['serviceProvider'] = $this->db->where('marketplace_status',2)->get('users',4)->result();
		// pr($data['serviceProvider']);die;
		$data["content"] = "biz/marketplace/pages/home";
		$this->load->view('biz/_layout', $data);
	}

	public function servieProvider(){

		$config = array();
		$config["base_url"] = base_url() . "find-service-provider";
		$config["total_rows"] =$this->db->count_all('service_provider');
		$config["per_page"] = 10;

		$config['full_tag_open'] = '<ul class="pagination">';        
		$config['full_tag_close'] = '</ul>';        
		$config['first_link'] = '1';        
		$config['last_link'] = 'Last';        
		$config['first_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['first_tag_close'] = '</span></li>';        
		$config['prev_link'] = '&laquo';        
		$config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['prev_tag_close'] = '</span></li>';        
		$config['next_link'] = '&raquo';        
		$config['next_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['next_tag_close'] = '</span></li>';        
		$config['last_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['last_tag_close'] = '</span></li>';        
		$config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';        
		$config['cur_tag_close'] = '</a></li>';        
		$config['num_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['num_tag_close'] = '</span></li>';

        $this->pagination->initialize($config);
        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;

       $this->db->limit($config["per_page"], $page);
	$data['serviceProvider'] = $this->db->select('service_provider.*,users.phone')->from('service_provider')->join('users', 'users.id = service_provider.user_id', 'left')->get()->result();

		$data['skill']     = $this->db->where('deleted_at',NULL)->where('status',1)->get('skills')->result();
		$data['location']  = $this->db->where('deleted_at',NULL)->get('locations')->result();
		$data['state'] ='';
		$data['zip'] = '' ;
		$data['trade'] = '';
		// pr($data['serviceProvider']);die;
		$data["content"] = "biz/marketplace/pages/find-service-provider";
		$this->load->view('biz/_layout', $data);

	}

	public function findProject(){
		$data['project']         = $this->db->where('status',1)->get('marketplace_project')->result();
		$data['countproject']    = $this->db->where('status',1)->get('marketplace_project')->num_rows();
		$data['skill']     = $this->db->where('deleted_at',NULL)->where('status',1)->get('skills')->result();
		$data['location']  = $this->db->where('deleted_at',NULL)->get('locations')->result();
		// pr($data['countproject']);die;
		$data["content"] = "biz/marketplace/pages/find-project";
		$this->load->view('biz/_layout', $data);
	}

	public function pricing(){
		$data["content"] = "biz/marketplace/pages/pricing";
		$this->load->view('biz/_layout', $data);
	}

	public function projectDetail($pId){
		$pid = base64_decode($pId);
		$data['pDetail'] = $this->db->where('id',$pid)->get('marketplace_project')->row();
		if (empty($data['pDetail'])) {
			redirect(base_url('marketplace'));
		}
		$data["content"] = "biz/marketplace/pages/project-detail";
		$this->load->view('biz/_layout', $data);
	}

	public function serviceProviderDetails($id){
		$this->db->select("service_provider.*");
		$this->db->from('service_provider');
		$this->db->where('id', $id);
		$data['sPdetail'] = $this->db->get()->result();

		$data["content"] = "biz/marketplace/pages/service-provider-details";
		$this->load->view('biz/_layout', $data);
	}


	
	public function searchServiceProvider(){

		if($this->input->post('submit') != NULL ){

			$searchState =  $this->input->post('state');
			$searchZip = 	 $this->input->post('zip');
			$searchTrade = $this->input->post('professional');

			$SessionSearch = array(
				'state'      =>  $this->input->post('state'),
				'zip'        =>  $this->input->post('zip'),
				'trade'      => $this->input->post('professional')	
			);
		
		  $this->session->set_userdata(array("search"=>$SessionSearch));
		}else{
		  if($this->session->userdata('search') != NULL){
			if($this->session->userdata('search')['state'] != NULL){
				$searchState = $this->session->userdata('search')['state'];
			}else{
				$searchState ='';
			}
			if($this->session->userdata('search')['zip'] != NULL){
				$searchZip   = $this->session->userdata('search')['zip'];
			}else{
				$searchZip ='';
			}
			if($this->session->userdata('search')['trade'] != NULL){
				$searchTrade = $this->session->userdata('search')['trade'];			
			}else{
				$searchTrade = '';
			}
		  }
		}

		$querySub  = '';

		if (!empty($searchState)){
			$querySub .= " AND  state = '".$searchState."' ";
		}
		if (!empty($searchZip) && $searchZip != 0){
			$querySub .= " AND  zip   = '".$searchZip."' ";
		}
		if (!empty($searchTrade)){
			$querySub .= " AND  professional   = '".$searchTrade."' ";
		
		}
		
			$sql  = "deleted_at is NULL".$querySub;
			$this->db->where($sql);
			$query = $this->db->get('service_provider');
			$number = $query->num_rows();
		
		$config = array();
	
		$config["base_url"] = base_url() . "search-service-provider";
		$config["total_rows"] =$number;
		$config["per_page"] = 10;
		$config['full_tag_open'] = '<ul class="pagination">';        
		$config['full_tag_close'] = '</ul>';        
		$config['first_link'] = false;        
		$config['last_link'] = false;        
		$config['first_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['first_tag_close'] = '</span></li>';        
		$config['prev_link'] = '&laquo';        
		$config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['prev_tag_close'] = '</span></li>';        
		$config['next_link'] = '&raquo';        
		$config['next_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['next_tag_close'] = '</span></li>';        
		$config['last_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['last_tag_close'] = '</span></li>';        
		$config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';        
		$config['cur_tag_close'] = '</a></li>';        
		$config['num_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['num_tag_close'] = '</span></li>';
		// print_r($config2);die();

        $this->pagination->initialize($config);
        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;

			$this->db->where($sql);
			$this->db->limit($config["per_page"], $page);
			$queryy = $this->db->get('service_provider');
      
	   $data['serviceProvider'] =  $queryy->result();
		$data['skill']     = $this->db->where('deleted_at',NULL)->where('status',1)->get('skills')->result();
		$data['location']  = $this->db->where('deleted_at',NULL)->get('locations')->result();

		if($searchState !=NULL){
			$data['state'] = $searchState;

		}else{
			$data['state'] = '';
		}
		if($searchZip !=NULL){
			$data['zip'] = $searchZip;

		}else{
			$data['zip'] = '';
		}
		if($searchTrade !=NULL){
			$data['trade'] = $searchTrade;
		}else{
			$data['trade'] = '';
		}
	
		// pr($data['serviceProvider']);die;
		$data["content"] = "biz/marketplace/pages/find-service-provider";
		$this->load->view('biz/_layout', $data);

	}

	public function getName()
	{
		$id  = $this->input->post('id');
		if(!empty($id)){
			$name = $this->db->where('id',$id)->get('users')->row()->name;
			if(!empty($name)){
				$data = array("status"=> 1,"data"=>$name);
			}else{
				$data = array("status"=> 0,"data"=>'fail');
			}
			echo json_encode($data);
			exit;
		}
	}

	public function getSkill()
	{
		$id  = $this->input->post('id');
		if(!empty($id)){
			$name = $this->db->where('id',$id)->get('skills')->row()->name;
			if(!empty($name)){
				$data = array("status"=> 1,"data"=>$name);
			}else{
				$data = array("status"=> 0,"data"=>'fail');
			}

			echo json_encode($data);
			exit;
		}

	}

	public function getLocation()
	{
		$id  = $this->input->post('id');
		if(!empty($id)){
			$name = $this->db->where('id',$id)->get('locations')->row();
			if(!empty($name)){
				$data = array("status"=> 1,"data"=>$name);
			}else{
				$data = array("status"=> 0,"data"=>'fail');
			}

			echo json_encode($data);
			exit;
		}

	}
	public function getProjects(){
		$keyword        = $this->input->post('keyword');
		$skill          = $this->input->post('skill');
		$location       = $this->input->post('location');
		$budget         = $this->input->post('budget');
		$querySubString = '';

		if ($keyword != ""){
			$querySubString .= " AND  heading = '$keyword' ";
		}

		if ($skill != "" && $skill != 0){
			$querySubString .= " AND  skill  = '$skill' ";
		}

		if ($location != "" && $location != 0){
			$querySubString .= " AND  location = '$location' ";
		}

		if ($budget!= ""){
			$querySubString .= " AND budget  = '$budget' ";
		}
		if(empty($keyword) && empty($skill) && empty($budget) && empty($location) ){
			$data =array("status"=>0,"data"=>"No Project Found");
		}else{
		 	// die('sfsd');
			$sql='SELECT * FROM marketplace_project where status = 1'.$querySubString;
				// echo $this->db->last_query();die;
			$data=$this->db->query($sql)->result();
			if(empty($data)){
				$data =array("status"=>0 , "data"=>" No Project Found");
			}else{
				$data = array("status"=> 1,"data"=>$data);
			}
		}
      // pr($data);die;
		echo json_encode($data);
		exit;

	}

	public function ambassadors(){
		$this->load->view('biz/marketplace/pages/ambassadors/index');
	}

	public function ambasPages(){
		$pageName = end($this->uri->segments);
		$this->load->view('biz/marketplace/pages/ambassadors/pages/'.$pageName);
	}

	public function mpListing(){
		$data['title']    = 'MP';
		$data["content"] = "biz/marketplace/pages/mp-listings/index";
		$this->load->view('biz/_layout', $data);
	}
}