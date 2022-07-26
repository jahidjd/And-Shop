<?php 
include('database/connection.php');
$conn->query('DELETE FROM blog WHERE id='.$_GET['id']);
header('Location: blogList.php');



?>