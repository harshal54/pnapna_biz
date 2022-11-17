<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

	public function index()
	{
		$data["content"] = "dashboard/dash";
		$this->load->view('dashboard/_layout', $data);
	}
}