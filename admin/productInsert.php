<?php 
include('database/connection.php');
$name = $_POST['name'];
$category_id = $_POST['category_id'];
$photo = $_FILES['photo'];
$hover_photo = $_FILES['hover_photo'];
$details= $_POST['details'];
$long_details= $_POST['long_details'];
$price= $_POST['price'];
$weight= $_POST['weight'];
$dimensions= $_POST['dimensions'];
$materials= $_POST['materials'];
$other_info= $_POST['other_info'];
$status= $_POST['status'];

    $photoExt = pathinfo(basename('../eComers/src/assets/img/upload/product/'.$photo['name']),PATHINFO_EXTENSION);
    $photoName ='Product-'. rand().'.'.$photoExt;
    move_uploaded_file($photo['tmp_name'],'../eComers/src/assets/img/upload/product/'.$photoName);
    $hover_photoExt = pathinfo(basename('../eComers/src/assets/img/upload/product/'.$hover_photo['name']),PATHINFO_EXTENSION);
    $hover_photoName ='Hover-Product-'. rand().'.'.$hover_photoExt;
    move_uploaded_file($hover_photo['tmp_name'],'../eComers/src/assets/img/upload/product/'.$hover_photoName);


    if($name!='' && $category_id!='' && $photo!=''){
        $conn->query("INSERT INTO products VALUES(NULL,$category_id,'$name','$photoName','$hover_photoName','$details','$long_details',$price,'$weight','$dimensions','$materials','$other_info','$status')");
        header('Location: product.php');
    }

?>