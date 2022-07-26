<?php 
include('database/connection.php');
header('Access-Control-Allow-Origin:*');

$data = $conn->query("SELECT products.*,product_category.name as c_name  FROM products join product_category on products.category_id=product_category.id ORDER BY id DESC")->fetch_all(MYSQLI_ASSOC);

echo json_encode($data);

?>