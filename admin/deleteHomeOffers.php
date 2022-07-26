<?php 
include('database/connection.php');
$conn->query('DELETE FROM home_products WHERE id='.$_GET['id']);
header('Location: homeOfferList.php');



?>