<?php 
include('database/connection.php');
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST');
    header('Access-Control-Allow-Headers:Content-Type');
    header('content-type:application/json');

$url = file_get_contents('php://input');
$data = json_decode($url,true);

$userName = $data['userName'];
$email = $data['email'];
$password = $data['password'];
if($userName!='' && $email!='' && $password!=''){
    $res = $conn->query("INSERT INTO customer_login VALUES(NULL, '$userName', '$email', '$password')");
    echo json_encode(array('status'=>true ,'result'=> $res));
}


?>