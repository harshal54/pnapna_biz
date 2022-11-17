<?php
 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class ImportExcel extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }    
 
    public function index() {

      $data["content"] = 'importexcel/import-excel';
      $this->load->view('biz/_layout', $data);
       
    }
 
    public function importFile(){
      if ($this->input->post('submit')) {
                $path = 'uploads/import-excel/';
                require_once APPPATH . "/third_party/PHPExcel.php";
                $config['upload_path'] = $path;
                $config['allowed_types'] = 'xlsx|xls|csv';
                $config['remove_spaces'] = TRUE;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);            
                if (!$this->upload->do_upload('uploadFile')) {
                    $error = array('error' => $this->upload->display_errors());
                } else {
                    $data = array('upload_data' => $this->upload->data());
                }
                if(empty($error)){                                                                                                                                                                
                  if (!empty($data['upload_data']['file_name'])) {
                    $import_xls_file = $data['upload_data']['file_name'];
                } else {
                    $import_xls_file = 0;
                }
                $inputFileName = $path . $import_xls_file;
                 
                try {
                    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                    $objPHPExcel = $objReader->load($inputFileName);
                    $allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null, true, true, true);
                    $flag = true;
                    $i=0;
                    $j=0;
                    $k=0;
                    $l=0;
                    foreach ($allDataInSheet as $value) {
                      if($flag){
                        $flag =false;
                        continue;
                      }

                      $desc = $value['A'].' is an experienced Cleaners, in '.$value['C'].' '.$value['D'].'. They are also the PnaPna area Ambassadors and were voted 5 stars for their services. Click here to ask for  rebate coupon for first time users of '.$value['A'].'’s services. Satisfaction Guaranteed. 
                      They perform residential and commercial maid and janitorial services. ';

                      ///////////////password is password////////////////

                      $md_5 = '5f4dcc3b5aa765d61d8327deb882cf99';
                      $pass = '$2a$08$2y5C32/1CgPHQ/PpjQkm5utZ6sa0qccENCqvICunv95wRNoLYnlz.';
                      if(!empty($value['D']))
                      {
                        $zip = $value['D'];
                      }else{
                        $zip = '00000'; 
                      }
                     
                        $trade = 'CL';
                      
                       if(!empty($value['F']))
                       {

                        $phn = str_replace(array('(',')','-',' '), '',$value['F']);
                        
                       }else{
                         $phn = '1111111111'; 
                       }
                       if(!empty($value['A']))
                       {
                        $name= strtoupper(substr($value['A'], 0,3 ));
                       
                       }else{
                        $name = 'ZZZ'; 
                       }
                       $date = '20220328';
                       $comp = 'I';
                       $future = 'TT';

                       $UID = $zip.$trade.$phn.$name.$date.$comp.$future;

                       if(!empty($value['G'])){

                        $insertdata[$i]['name'] = $value['A'];
                        $insertdata[$i]['email'] = $value['G'];
                        $insertdata[$i]['password'] = $pass;
                        $insertdata[$i]['password_md5'] = $md_5;
                        $insertdata[$i]['phone'] = $value['F'];
                        $insertdata[$i]['variant_id'] = '3';
                        $insertdata[$i]['marketplace_status'] = '2';
                        $insertdata[$i]['UID'] = $UID;
                        $insertdata[$i]['verified_at'] = '1';
                        
                        $this->db->insert('users',$insertdata[$i]);
  
                        $user_id=$this->db->insert_id();
                        $insert[$j]['user_id'] = $user_id;
                        $insert[$j]['billing_address'] = $value['B'];
                        $insert[$j]['shipping_address'] = $value['B'];
                        // $insert[$j]['city'] = $value['C'];
                        $insert[$j]['city'] = $value['C'];
                        $insert[$j]['country'] = $value['E'];
                        $insert[$j]['zip'] = $value['D'];
                        
  
                        $this->db->insert('user_details',$insert[$j]);

                        $insert2[$l]['user_id'] = $user_id;
                        $insert2[$l]['name'] = $value['A'];
                       $result= $this->db->insert('subdomains',$insert2[$l]); 


                       $insert1[$k]['user_id'] = $user_id;
                       $insert1[$k]['verified'] = 1;
                       }

                      $insert1[$k]['professional'] = 'Home Cleaner';
                      $insert1[$k]['country'] = 1;
                      $insert1[$k]['description'] = $desc;
                      $insert1[$k]['company_name'] = $value['A'];
                      $insert1[$k]['zip'] = $value['D'];
                      $insert1[$k]['location'] = $value['B'];
                      // $insert1[$k]['city'] = $value['C'];
                      $insert1[$k]['city'] = $value['C'];
                      $insert1[$k]['website'] = $value['H'];
                      $insert1[$k]['phone'] = $value['F'];
                      $insert1[$k]['verification_status'] = $value['I'];
                      $insert1[$k]['verification_detail'] = $value['J'];
                      $insert1[$k]['is_featured'] = '0';
                      $insert1[$k]['skill'] = 6;
                      $this->db->insert('service_provider',$insert1[$k]);
 
                      $i++;
                      $j++;
                      $k++;
                      $l++;
                    }   
                             
                   
                    if($result){
                      redirect(base_url('import-excel'));
                    }else{
                      echo "ERROR !";
                    }             
      
              } catch (Exception $e) {
                   die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME)
                            . '": ' .$e->getMessage());
                }
              }else{
                  echo $error['error'];
                }
                 
                 
        }
     
    }
     
}
?>




               