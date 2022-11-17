<?php 
         $email          = $_POST['email'];
         $password       = $_POST['password'];
		 $accountName    = $_POST['accountName'];
               
		if(!empty($email) && !empty($password) && !empty($accountName)){

            $dbName = strtolower("podium_".$accountName);
            $conn = new mysqli('localhost', 'root', 'Server@123Inc');

             if ($conn)
            {
            	$sql = "CREATE DATABASE $dbName";
            	if ($conn->query($sql) === TRUE) {

            	$templine = '';
            	$con = new mysqli('localhost', 'root', 'Server@123Inc',$dbName);
            	
                if (mysqli_connect_errno())
                {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }

                $lines = "/var/www/html/pnapnapodium/DB/podium.sql";
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
             }
            }else{
                $res = ["status"=>0,"msg"=>"Database already exit."];
            }
		}else{
			$res = ["status"=>0,"msg"=>"fail"];
		}

         echo json_encode($res);
              die;	
?>