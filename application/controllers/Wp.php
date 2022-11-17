<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wp extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model("auth_model");   
        $this->load->library('session');
    }

    public function insertData($email, $password)
    {
        $data = $this->db->where('email',$email)->get("users")->row();
        if(empty($data)){
            $password = app_hasher()->HashPassword($password);
            $userData = array(
                "email"    => $email,
                "password" => $password,
                "verified_at" => date('Y-m-d H:i:s')
            );
            $insert = $this->db->insert("users", $userData);
            if($insert){
                $insertedId = $this->db->insert_id();

                $userDetailsData = array('user_id' => $insertedId);
                $this->db->insert("user_details", $userDetailsData);

                $subdomainData = array('user_id' => $insertedId);
                $this->db->insert("subdomains", $subdomainData);
            }
        }
    }

    public function wpSite()
    {
        $id = $this->session->userdata('login_user')['id'];
        $getUser = $this->db->where('id',$id)->get('users')->row();
        $src ='/var/www/html/pnapna_apps/sites/wordpress/wordpress';
        $dest ='/var/www/html/pnapna_apps/sites/wordpress_'.$getUser->account_name;

        if (!is_dir($dest)) {
            mkdir($dest, 0777, TRUE);
        }

        foreach(
            $iterator = new \RecursiveIteratorIterator(
                new \RecursiveDirectoryIterator($src, \RecursiveDirectoryIterator::SKIP_DOTS),
                \RecursiveIteratorIterator::SELF_FIRST) as $item
        ){
            if( $item->isDir()){
                if(!is_dir($dest . DIRECTORY_SEPARATOR . $iterator->getSubPathName())){
                    mkdir($dest . DIRECTORY_SEPARATOR . $iterator->getSubPathName(), 0777, TRUE);
                }
            } 
            else{
                if(file_exists($item)){
                    copy($item, $dest . DIRECTORY_SEPARATOR . $iterator->getSubPathName());
                }
            }
        }

        $this->load->dbforge();
        $this->load->dbutil();
        $dbName ="wp_".$getUser->account_name;
        if (!$this->dbutil->database_exists($dbName))
        {
            $templine = '';
            $siteurl='https://'.$getUser->account_name.'.pnapnasites.com/';
            $this->dbforge->create_database($dbName);
            $con=mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);
            if (mysqli_connect_errno())
            {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
            }
            $lines = file(getcwd()."/application/views/dashboard/db/wp.sql");
            $find = array(
                '{{email}}','{{siteurl}}'
            );

            $replace = array(
                $getUser->email,$siteurl,
            );

            $lines = str_replace($find, $replace, $lines);

            $templine = '';

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
            $sql1="UPDATE `wp_options` SET `option_value` = '{$siteurl}' WHERE `wp_options`.`option_name` = 'siteurl' OR `wp_options`.`option_name` = 'home'";
            $sql2="UPDATE `wp_options` SET `option_value` = '".ucfirst($getUser->account_name)."' WHERE `wp_options`.`option_name` = 'blogname'";


            mysqli_query($con, $sql1);
            mysqli_query($con, $sql2);
            mysqli_close($con);

            $res = ["status"=>1,"msg"=>"success"];
        }else{
            $res = ["status"=>0,"msg"=>"fail"];
        }
        echo json_encode($res);
    }

    function UpdateWP(){
        $userId = $this->session->userdata('login_user')['id'];
        $this->db->where('id',$userId)->set('wpsite',1)->update('users');
        redirect(base_url('saasBizSite'));
    }

}