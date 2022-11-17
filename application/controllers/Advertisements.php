<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Advertisements extends CI_Controller {

	public function index()
	{
		$pageName = end($this->uri->segments);
		$data["content"] = 'biz/advertisements/'.$pageName;
		$this->load->view('biz/_layout', $data);
	}
}