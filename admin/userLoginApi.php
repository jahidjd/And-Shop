<?php
include('database/connection.php');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Method:POST');
header('Access-Control-Allow-Headers:Content-Type');
header('Cobtent-Type:application/json');

$url = file_get_contents('php://input');
$data = json_decode($url,true);

$userName = $data['userName'];
$password = $data['password'];
if($userName!='' && $password!=''){

    $result = $conn->query("SELECT * FROM customer_login WHERE user_name='$userName' AND password='$password'")->fetch_assoc();
    if(!empty($result)){
        echo json_encode(array("status"=>true, "result"=>$result));
    }else{
        echo json_encode('Wrong information');
    }
}else{
   echo json_encode(array("status"=>false));
}



?>