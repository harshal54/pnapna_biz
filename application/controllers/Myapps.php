<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Myapps extends MY_Controller {

	function __construct(){
		parent::__construct();
	}

	public function myApps(){
		$data["content"] = "dashboard/apps/index";
		$this->load->view('dashboard/_layout', $data);
	}

	public function setAppStatus(){
		$inputData = $this->input->post();
		$userId = $this->session->userdata('login_user')['id'];
		if ($inputData['appName']=='pnapnaScope') {
			$appName = 'pnapna_scope';
		}else if ($inputData['appName']=='pnapnaCal') {
			$appName = 'pnapna_cal';
		}else if ($inputData['appName']=='pnapnaPodium') {
			$appName = 'pnapna_podium';
		}
        $this->db->where('id', $userId)->set($appName, 1)->update('users');
        echo 'success';die;
	}

	public function saasBizSite(){
		$data['content'] = 'dashboard/wpSite';
		$userId = $this->session->userdata('login_user')['id'];
		$data['userData']    = $this->db->where('id', $userId)->get('users')->row();
		$data['saasReqData'] = $this->db->where('user_id', $userId)->get('saas_bizsite')->row();
		if($this->input->post())
		{
			if ($this->input->post('seo_enable') == 'on') {
				$seo_enable = 1;
			}else{
				$seo_enable = 0;
			}
			$reqData = array(
				'websitename' => $this->input->post('websitename'),
				'user_id'     => $userId,
				'stitle'      => $this->input->post('stitle'),
				'cpanel_url'  => $this->input->post('cpanel_url'),
				'email'       => $this->input->post('email'),
				'username'    => $this->input->post('username'),
				'password'    => $this->input->post('password'),
				'phone'       => $this->input->post('phone'),
				'seo_enable'  => $seo_enable
			);

			$insert = $this->db->insert('saas_bizsite',$reqData);

			if ($insert) {
				redirect(base_url().'saasBizSite');
			}else{
				echo "error";die;
			}
		}
		$this->load->view('dashboard/_layout', $data); 
	}

	public function activateScope(){
       $account_name = $this->input->post('accountName');
       $email        = $this->input->post('email');
       $password     = $this->input->post('password');

        if($account_name){
            $dbName = strtolower("scope_".$account_name);
            $this->load->dbforge();
             $this->load->dbutil();
             if (!$this->dbutil->database_exists($dbName))
            {
                $templine = '';
            $this->dbforge->create_database($dbName);
            $con=mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);
            if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $templine = '';
                $lines = file(getcwd()."/application/views/dashboard/databases/scope/pnapna_scope.sql");
                foreach ($lines as $line)
                {
                    if (substr($line, 0, 2) == '--' || $line == '')
                        continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        mysqli_query($con, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($con) . '<br /><br />');
                        $templine = '';
                    }
                }
                
                $lines = file(getcwd()."/application/views/dashboard/databases/scope/pnapna_scope2.sql");

                $find = array(
                    '{{email}}','{{password}}',
                );

                $replace = array(
                    $email,$password,
                );

                $lines = str_replace($find, $replace, $lines);

                foreach ($lines as $line)
                {
                    if (substr($line, 0, 2) == '--' || $line == '')
                        continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        mysqli_query($con, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($con) . '<br /><br />');
                        $templine = '';
                    }
                }
                mysqli_close($con);
                $res = ["status"=>1,"msg"=>"success"];
            }else{
                $res = ["status"=>0,"msg"=>"Database already exit."];
            }
        }else{
            $res = ["status"=>0,"msg"=>"fail"];
        }

         echo json_encode($res);
              die;
    }

	public function activatePodium(){
       $account_name = $this->input->post('accountName');
       $email        = $this->input->post('email');
       $password     = $this->input->post('password');

        if($account_name){
            $dbName = strtolower("podium_".$account_name);
            $this->load->dbforge();
             $this->load->dbutil();
             if (!$this->dbutil->database_exists($dbName))
            {
                $templine = '';
            $this->dbforge->create_database($dbName);
            $con=mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);
            if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $templine = '';
                $lines = file(getcwd()."/application/views/dashboard/databases/podium/podium.sql");

                $find = array(
                    '{{email}}','{{password}}',
                );

                $replace = array(
                    $email,$password,
                );

                $lines = str_replace($find, $replace, $lines);

                foreach ($lines as $line)
                {
                    if (substr($line, 0, 2) == '--' || $line == '')
                        continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        mysqli_query($con, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($con) . '<br /><br />');
                        $templine = '';
                    }
                }
                mysqli_close($con);
                $res = ["status"=>1,"msg"=>"success"];
            }else{
                $res = ["status"=>0,"msg"=>"Database already exit."];
            }
        }else{
            $res = ["status"=>0,"msg"=>"fail"];
        }

         echo json_encode($res);
              die;
    }

    public function activateCal(){
       $account_name = $this->input->post('accountName');
       $email        = $this->input->post('email');
       $password     = $this->input->post('password');

        if($account_name){
            $dbName = strtolower("cal_".$account_name);
            $this->load->dbforge();
             $this->load->dbutil();
             if (!$this->dbutil->database_exists($dbName))
            {
                $templine = '';
            $this->dbforge->create_database($dbName);
            $con=mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);
            if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $templine = '';
                $lines = file(getcwd()."/application/views/dashboard/databases/cal/pnapna_cal.sql");
                foreach ($lines as $line)
                {
                    if (substr($line, 0, 2) == '--' || $line == '')
                        continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        mysqli_query($con, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($con) . '<br /><br />');
                        $templine = '';
                    }
                }
                
                $lines = file(getcwd()."/application/views/dashboard/databases/cal/pnapna_cal2.sql");

                $find = array(
                    '{{email}}','{{password}}',
                );

                $replace = array(
                    $email,$password,
                );

                $lines = str_replace($find, $replace, $lines);

                foreach ($lines as $line)
                {
                    if (substr($line, 0, 2) == '--' || $line == '')
                        continue;
                    $templine .= $line;
                    if (substr(trim($line), -1, 1) == ';')
                    {
                        mysqli_query($con, $templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($con) . '<br /><br />');
                        $templine = '';
                    }
                }
                mysqli_close($con);
                $res = ["status"=>1,"msg"=>"success"];
            }else{
                $res = ["status"=>0,"msg"=>"Database already exit."];
            }
        }else{
            $res = ["status"=>0,"msg"=>"fail"];
        }

         echo json_encode($res);
              die;
    }
 
}