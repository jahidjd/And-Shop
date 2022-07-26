<?php 
include('database/connection.php');
$conn->query('DELETE FROM products WHERE id='.$_GET['id']);
header('Location: productList.php');



?>