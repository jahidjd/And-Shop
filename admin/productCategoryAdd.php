<?php 
include('database/connection.php');
$name=$_POST['name'];
if($name!=''){
$conn->query("INSERT INTO product_category VALUES(NULL,'$name')");
header("Location: productCategory.php");
}else{
    header("Location: productCategory.php");
}

?>