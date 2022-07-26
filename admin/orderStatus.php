<?php 
include('database/connection.php');
 $id = $_POST['order_id'];
 $status = $_POST['s'];

 $conn->query("UPDATE orders SET status='$status' WHERE orders.order_id=$id");
 header('Location: orderList.php');



?>