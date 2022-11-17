<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * CodeIgniter PHPMailer Class
 *
 * This class enables SMTP email with PHPMailer
 *
 * @category    Libraries
 * @author      CodexWorld
 * @link        https://www.codexworld.com
 */

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
class PHPMailer_Lib
{
    public function __construct(){
        log_message('Debug', 'PHPMailer class is loaded.');
    }

    public function load()
    {
        // require_once(APPPATH."third_party/PHPMailer-master/PHPMailerAutoload.php");
        // echo APPPATH."third_party/PHPMailer-master/PHPMailerAutoload.php";die;
        // $mail = new PHPMailer;

        // // SMTP configuration
        // $mail->isSMTP();
        // $mail->Host     = 'smtp.gmail.com';
        // $mail->SMTPAuth = true;
        // $mail->Username = 'info@signondoc.com';
        // $mail->Password = 'Gmail@123';
        // $mail->SMTPSecure = 'ssl';
        // $mail->Port     = 465;
        
        // $mail->setFrom('info@signondoc.com', 'Steel Cart');
        // $mail->addReplyTo('info@signondoc.com', 'Steel Cart');
        // return $mail;


        // Include PHPMailer library files
        require_once APPPATH.'third_party/PHPMailer/Exception.php';
        require_once APPPATH.'third_party/PHPMailer/PHPMailer.php';
        require_once APPPATH.'third_party/PHPMailer/SMTP.php';
        
        $mail = new PHPMailer;
                // SMTP configuration
        $mail->isSMTP();
        $mail->Host     = 'sn1.migomta.one';
        $mail->SMTPAuth = true;
        $mail->Username = 'signondoc/smtp1';
        $mail->Password = 'D6DOGITdxbtUJN11Gisl8Hic';
        $mail->SMTPSecure = "PLAIN";
        $mail->Port     = 587;
        $mail->setFrom('info@pnapna.com', 'PnaPna');
        $mail->addReplyTo('info@pnapna.com', 'PnaPna');
        
        return $mail;
    }
}