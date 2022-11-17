<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ImportCsv extends CI_Controller {
    
    function __construct() {
        parent::__construct();
    }
    
    public function index(){
        $data = array();
        
        // Get messages from the session
        if($this->session->userdata('success_msg')){
            $data['success_msg'] = $this->session->userdata('success_msg');
            $this->session->unset_userdata('success_msg');
        }
        if($this->session->userdata('error_msg')){
            $data['error_msg'] = $this->session->userdata('error_msg');
            $this->session->unset_userdata('error_msg');
        }
        
        // Get rows
        $data['members'] = $this->getRows();

        // pr($data['members']);die;
        
        // Load the list page view
        $this->load->view('importcsv/index', $data);
    }
    
    public function import(){

        $data = array();
        $memData = array();
        
        pr($data);die;
        // If import request is submitted
        if($this->input->post('importSubmit')){
            // Form field validation rules
            $this->form_validation->set_rules('file', 'CSV file', 'callback_file_check');
            
            // Validate submitted form data
            if($this->form_validation->run() == true){
                $insertCount = $updateCount = $rowCount = $notAddCount = 0;

                // If file uploaded
                if(is_uploaded_file($_FILES['file']['tmp_name'])){
                    // Load CSV reader library
                    $this->load->library('csvreader');
                    
                    // Parse data from CSV file
                    $csvData = $this->csvreader->parse_csv($_FILES['file']['tmp_name']);
                    
        pr($csvData);die;
                    // Insert/update CSV data into database
                    if(!empty($csvData)){
                        foreach($csvData as $row){ $rowCount++;
                            
                            // Prepare data for DB insertion


                            $memData = array(
                                // 'user_id' => $row['Userid'],
                                // 'company_name' => $row['company_name'],
                                // 'zip' => $row['zip'],
                                // 'description' => $row['Description'],
                                'location' => $row['Location'],
                                'hr_rate' => $row['Price'],
                                // 'website' => $row['Website'],
                                'facebook_id' => $row['Facebook'],
                                'instagram_id' => $row['Instagram'],
                            );

                                // Insert member data
                                // $insert = $this->insert($memData);
                                
                                // if($insert){
                                //     $insertCount++;
                                // }

                                // Update member data
                                $update = $this->update($memData, $row['Userid']);
                                
                                if($update){
                                    $updateCount++;
                                }
                        }
                        
                        // Status message with imported data count
                        $notAddCount = ($rowCount - ($insertCount + $updateCount));
                        $successMsg = 'Members imported successfully. Total Rows ('.$rowCount.') | Inserted ('.$insertCount.') | Updated ('.$updateCount.') | Not Inserted ('.$notAddCount.')';
                        $this->session->set_userdata('success_msg', $successMsg);
                    }
                }else{
                    $this->session->set_userdata('error_msg', 'Error on file upload, please try again.');
                }
            }else{
                $this->session->set_userdata('error_msg', 'Invalid file, please select only CSV file.');
            }
        }
        redirect('importcsv');
    }
    
    /*
     * Callback function to check file value and type during validation
     */
    public function file_check($str){
        $allowed_mime_types = array('text/x-comma-separated-values', 'text/comma-separated-values', 'application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'text/plain');
        if(isset($_FILES['file']['name']) && $_FILES['file']['name'] != ""){
            $mime = get_mime_by_extension($_FILES['file']['name']);
            $fileAr = explode('.', $_FILES['file']['name']);
            $ext = end($fileAr);
            if(($ext == 'csv') && in_array($mime, $allowed_mime_types)){
                return true;
            }else{
                $this->form_validation->set_message('file_check', 'Please select only CSV file to upload.');
                return false;
            }
        }else{
            $this->form_validation->set_message('file_check', 'Please select a CSV file to upload.');
            return false;
        }
    }


















    
    /*
     * Fetch members data from the database
     * @param array filter data based on the passed parameters
     */
    function getRows($params = array()){
        $this->db->select('*');
        $this->db->from('service_provider');
        
        if(array_key_exists("where", $params)){
            foreach($params['where'] as $key => $val){
                $this->db->where($key, $val);
            }
        }
        
        if(array_key_exists("returnType",$params) && $params['returnType'] == 'count'){
            $result = $this->db->count_all_results();
        }else{
            if(array_key_exists("id", $params)){
                $this->db->where('id', $params['id']);
                $query = $this->db->get();
                $result = $query->row_array();
            }else{
                $this->db->order_by('id', 'desc');
                if(array_key_exists("start",$params) && array_key_exists("limit",$params)){
                    $this->db->limit($params['limit'],$params['start']);
                }elseif(!array_key_exists("start",$params) && array_key_exists("limit",$params)){
                    $this->db->limit($params['limit']);
                }
                
                $query = $this->db->get();
                $result = ($query->num_rows() > 0)?$query->result_array():FALSE;
            }
        }
        
        // Return fetched data
        return $result;
    }
    
    /*
     * Insert members data into the database
     * @param $data data to be insert based on the passed parameters
     */
    public function insert($data = array()) {
        if(!empty($data)){
            // Add created and modified date if not included
            // if(!array_key_exists("created_at", $data)){
            //     $data['created_at'] = date("Y-m-d H:i:s");
            // }
            
            // Insert member data
            $insert = $this->db->insert('service_provider', $data);
            
            // Return the status
            return $insert?$this->db->insert_id():false;
        }
        return false;
    }
    
    /*
     * Update member data into the database
     * @param $data array to be update based on the passed parameters
     * @param $condition array filter data
     */
    public function update($data, $uID) {
        if(!empty($data)){
            // Add modified date if not included
            // if(!array_key_exists("modified", $data)){
            //     $data['modified'] = date("Y-m-d H:i:s");
            // }
            
            // Update member data
            $update = $this->db->where('user_id', $uID)->update('service_provider', $data);
            
            // Return the status
            return $update?true:false;
        }
        return false;
    }






}