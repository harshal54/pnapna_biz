<?php

/**
* Description of MY_Controller
*
* @author Incubers
*/
class MY_Controller extends CI_Controller
{
	function __construct(){	

		parent::__construct();
       $this->load->model("Auth_model");

		if (empty(userData())) {
			$this->session->sess_destroy();
		}

		$arr_url=strtok($_SERVER['REQUEST_URI'],'?');
		$arr_url=explode('/', $arr_url);

		if(!$this->session->userdata('login_user')  && current_url() != base_url() && !in_array('login',$arr_url)){
			redirect(base_url('signin'));
		}

		if (end($this->uri->segments) != 'getStarted' && end($this->uri->segments) != 'chooseAccVarient') {
			if (empty(userData()->account_name) || empty(userData()->variant_id)) {
				redirect(base_url('getStarted'));die;
			}
		}
	}
}
