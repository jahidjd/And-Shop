<?php 
include('database/connection.php');
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:GET');
    header('Access-Control-Allow-Headers:Content-Type');
    header('content-type:application/json');

$id=$_GET['id'];

$re = $conn->query("SELECT orders.*,products.price,products.name as pName, products.photo FROM `orders` JOIN products on orders.product_id= products.id WHERE orders.customer_id=$id")->fetch_all(MYSQLI_ASSOC);
echo json_encode($re);


?>