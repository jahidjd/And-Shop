<?php 
include("database/connection.php");

$name = $_POST['name'];
$short_details = $_POST['short_details'];
$status = $_POST['status'];
$photo = $_FILES['photo'];

if($name!='' && $short_details!='' && $status!='' && $photo!=''){
    $photoExt = pathinfo(basename('../eComers/src/assets/img/upload/product/'.$photo['name']),PATHINFO_EXTENSION);
    $photoName = 'Home-Offer-Product-'.rand().'.'.$photoExt;
    move_uploaded_file($photo['tmp_name'],'../eComers/src/assets/img/upload/product/'.$photoName);

    $conn->query("INSERT INTO home_products VALUES(NULL,'$name','$short_details','$status','$photoName')");
    header("Location: homeOffers.php");
}else{
    header("Location: homeOffers.php");
}


?>