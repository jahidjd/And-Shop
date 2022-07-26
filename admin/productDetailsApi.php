
<?php 
include('database/connection.php');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:GET');
header('Access-Control-Allow-Headers:Content-Type');
header('Content-Type:application/json');
$id = $_GET['id'];

$data = $conn->query("SELECT products.*,product_category.name as c_name  FROM products join product_category on products.category_id=product_category.id  WHERE products.id=$id ORDER BY id DESC")->fetch_assoc();

echo json_encode($data);

?>