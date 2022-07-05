<?php
session_start();
    $image_update = "../images/";
    $imageUser = 'images/';
    function GuiMail($recieverMail,$recieverName,$letterTitle,$lettercontent){   
        require "PHPMailer-master/src/PHPMailer.php"; 
        require "PHPMailer-master/src/SMTP.php"; 
        require 'PHPMailer-master/src/Exception.php'; 
        $mail = new PHPMailer\PHPMailer\PHPMailer(true);//true:enables exceptions
        try {
            $mail->SMTPDebug = 0; //0,1,2: chế độ debug. khi chạy ngon thì chỉnh lại 0 nhé
            $mail->isSMTP();  
            $mail->CharSet  = "utf-8";
            $mail->Host = 'smtp.gmail.com';  //SMTP servers
            $mail->SMTPAuth = true; // Enable authentication
            $mail->Username = 'doanvlps17699@fpt.edu.vn'; // SMTP username
            $mail->Password = '04012002';   // SMTP password
            $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
            $mail->Port = 465;  // port to connect to                
            $mail->setFrom('doanvlps17699@fpt.edu.vn', 'ATSHOP Gửi thông báo' ); 
            $mail->addAddress($recieverMail, $recieverName); //mail và tên người nhận  
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = $letterTitle;
            $noidungthu = $lettercontent; 
            $mail->Body = $noidungthu;
            $mail->smtpConnect( array(
                "ssl" => array(
                    "verify_peer" => false,
                    "verify_peer_name" => false,
                    "allow_self_signed" => true
                )
            ));
            $mail->send();
            return true;
        } catch (Exception $e) {
            return $mail->ErrorInfo;
        }}
?>