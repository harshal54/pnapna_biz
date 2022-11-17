<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');


// $id =  $_POST['id'];
$account_name =  $_POST['accountName'];
$email        =  $_POST['email'];
$password     = $_POST['password'];
// $slug         = substr($email, 0, strpos($email, '@'));
$dbName       = strtolower("cal_".$account_name);

$conn         = new mysqli('localhost', 'root', 'Server@123Inc');

if($conn) {
  $sql = "CREATE DATABASE $dbName";

  if ($conn->query($sql) === TRUE) {
    $templine = '';

    $siteurl  ='https://'.$account_name.'.pnapnasites.com/';
    $con      = new mysqli('localhost', 'root', 'Server@123Inc',$dbName);

    if (mysqli_connect_errno())
    {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

    $lines = file("/var/www/html/pnapnacal/biz/database/pnapna_cal.sql");
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


    $lines = file("/var/www/html/pnapnacal/biz/database/pnapna_cal2.sql");
    $find = array(
      '{{email}}','{{password}}',
    );
    $replace = array(
      $email,$password,
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
    $res = ["status"=>1,"msg"=>"success"];
  }else{
    $res = ["status"=>0,"msg"=>"fail"];
  }
  echo json_encode($res);
}
?>