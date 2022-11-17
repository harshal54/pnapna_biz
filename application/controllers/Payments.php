<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payments extends MY_Controller {

	function __construct(){
		parent::__construct();
	}

	public function payments()
	{
		$data['paymentDetails'] = $this->db->where('user_id',userData()->id)->order_by('payment_id', 'DESC')->get('payments')->result();

		$data["content"] = "dashboard/payments/payments";
		$this->load->view('dashboard/_layout', $data);
	}

	public function checkoutPayment()
	{
		$data['cartDetails'] = $this->db->where('user_id',userData()->id)->get('cart')->row();

		$data["content"] = "dashboard/payments/checkout";
		$this->load->view('dashboard/_layout', $data);
	}

	public function paymentDetails($id)
	{
		$userId = userData()->id;
		$data['paymentDetails'] = $this->db->where('user_id',$userId)->where('txn_id',$id)->get('payments')->row();
		$paymentId = $data['paymentDetails']->payment_id;
		$data['userModules'] = $this->db->where('payment_id',$paymentId)->get('user_modules')->row();

		$data["content"] = "dashboard/payments/paymentdetails";
		$this->load->view('dashboard/_layout', $data);
	}

	public function activateFieldService()
	{
		$userdata     = userData();
		$userId       = userData()->id;
		$accountName  = userData()->account_name;
		$variantName  = getUserVariant()->slug;
		$subDomainUrl = subDomainUrl();
		$templine = '';
		$dbName     = strtolower("fieldser_".$accountName);

		if ($this->input->is_ajax_request()) {
			$this->load->dbforge();
			$this->load->dbutil();

			if (!$this->dbutil->database_exists($dbName)) {
				$paidModules = $this->db->where('user_id', $userId)->get('payments')->row();
				$userModules = json_decode($paidModules->item_details);
				$this->dbforge->create_database($dbName);

				$con=mysqli_connect($this->db->hostname,$this->db->username,$this->db->password,$dbName);

				if (mysqli_connect_errno()){echo "Failed to connect to MySQL: " . mysqli_connect_error();die;}

				$templine = '';

				$lines = file(getcwd()."/application/views/dashboard/databases/fieldservices/fieldservices.sql");
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

				$lines = file(getcwd()."/application/views/dashboard/databases/fieldservices/fieldservices2.sql");

				$find = array(
					'{{email}}','{{name}}','{{l_name}}','{{password}}','{{fieldservice_type}}','{{account_name}}'
				);
				$replace = array(
					$userdata->email,$userdata->name,$userdata->l_name,$userdata->password,$variantName,$accountName
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
				$subdomainData = array(
					'name'   => $accountName,
					'status' => 1
				);
				$this->db->where('user_id', $userId)->update('subdomains', $subdomainData);
				echo "DB created";
			}else {
				echo "Database exists";
			}
		}
	}

}