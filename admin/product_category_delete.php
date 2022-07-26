<?php 
include('database/connection.php');
$conn->query("DELETE FROM product_category WHERE id=".$_GET['id']);
header("Location: productCategory.php");


?>