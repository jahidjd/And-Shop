<?php 
include('database/connection.php');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Content-Type');
header('content-type:application/json');

$url = file_get_contents('php://input');
$data = json_decode($url,true);


?>