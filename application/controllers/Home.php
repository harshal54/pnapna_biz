<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

  public function index()
  {
    $data["content"] = "biz/home";
    $this->load->view('biz/_layout', $data);
  }

  public function contactUs()
  {
    if (!empty($this->input->post())) { 
      $data = array(
        'name'              => $this->input->post('name'),
        'email'             => $this->input->post('email'),
        'subject'           => $this->input->post('subject'),
        'message'           => $this->input->post('message'), 
      );

      $insert = $this->db->insert('contacts', $data);

      if (!empty($this->input->post('return_path'))) {
        $return_path = $this->input->post('return_path');
      }else{
        $return_path = 'contact';
      }
      if ($insert) {
        set_message("success", "Contact form has been submitted");
        redirect(base_url($return_path.'?status=1'));
      }
    }
    set_message("error", "Something went wrong");
    redirect(base_url($return_path));
  }

  public function freeConsultation()
  {
    if (!empty($this->input->post())) { 
      $data = array(
        'name'    => $this->input->post('name'),
        'email'   => $this->input->post('email'),
        'title'   => $this->input->post('title'),
        'message' => $this->input->post('message')
      );

      $insert = $this->db->insert('free_consultation', $data);

      $return_path = 'free-consultation';
      if ($insert) {
        set_message("success", "Your request has been submitted");
        redirect(base_url($return_path.'?status=1'));
      }
    }
    set_message("error", "Something went wrong");
    redirect(base_url($return_path));
  }

  public function propose_new_industry()
  {
    if (!empty($this->input->post())) { 
      $data = array(
        'email'             => $this->input->post('email'),
        'proposed_industry' => $this->input->post('proposed_industry'),
        'message'           => $this->input->post('message'), 
      );

      $insert = $this->db->insert('contacts', $data);
      if ($insert) {
        set_message("success", "New industry name submitted");
        redirect(base_url('industries?status=1'));
      }
    }
    set_message("error", "Something went wrong");
    redirect(base_url('industries'));
  }



  public function get_advertise($count=NULL){
    $data  =  $this->db->where('status',1)->order_by('id', 'RANDOM')->limit(1)->get('advertisements')->row();

    if ($count == 0 || $count == 3) {
      $data = array(
        'redirecting_link' => 'https://pnapna.com/signup',
        'file_name'        => 'pnapna-ad-ASC.mp4',
        'play_time'        => '19'
      );
    }
    $data = (array)$data;
    $data['ad_count'] = $count+1;

    echo json_encode($data);
  }

  public function provider_analysis()
  {
    if (!empty($this->input->post())) { 
      $data = array(
        'description'      => $this->input->post('description'),
        'skill'            => $this->input->post('skill'),
        'email'           => $this->input->post('email'),
      );

      $insert = $this->db->insert('providers_analysis', $data);

      if (!empty($this->input->post('return_path'))) {
        $return_path = $this->input->post('return_path');
      }else{
        $return_path = 'marketplace/provider';
      }
      if ($insert) {
        set_message("success", "Your form has been submitted");
        redirect(base_url($return_path.'?status=1'));
      }
    }
    set_message("error", "Something went wrong");
    redirect(base_url($return_path));
  }

  public function captureEmails(){
    $userEmail = $this->input->get('capturedemail');
    $checkEmail = $this->db->where('email', $userEmail)->get('captured_emails')->row();
    if(empty($checkEmail)){
      $this->db->set('email', $userEmail)->insert('captured_emails');
    }
  }

}