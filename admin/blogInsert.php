<?php 
include('database/connection.php');
$title = $_POST['title'];
$photo = $_FILES['photo'];
$short_details = $_POST['short_details'];
$details = $_POST['details'];
$author = $_POST['author'];
$title_two = $_POST['title_two'];
$title_two_details = $_POST['title_two_details'];
$title_two_photo = $_FILES['title_two_photo'];
$date = $_POST['date'];
if($title!='' && $photo!='' && $details!='' && $author!='' && $date!=''){
    $photoExt = pathinfo(basename('../eComers/src/assets/img/upload/blog/'.$photo['name']),PATHINFO_EXTENSION);
    $photoName = 'Blog-Photo-'.rand().'.'.$photoExt;
    move_uploaded_file($photo['tmp_name'],'../eComers/src/assets/img/upload/blog/'.$photoName);

    $photo_twoExt = pathinfo(basename('../eComers/src/assets/img/upload/blog/'.$title_two_photo['name']),PATHINFO_EXTENSION);
    $photo_twoName ='Blog-photo-two'. rand().'.'.$photo_twoExt;
    move_uploaded_file($title_two_photo['tmp_name'],'../eComers/src/assets/img/upload/blog/'.$photo_twoName);

    $conn->query("INSERT INTO blog VALUES(NULL,'$title','$photoName','$short_details','$details','$author','$date','$title_two','$title_two_details','$photo_twoName')");
    header('Location: blog.php');
}else{
    header('Location: blog.php');
}






?>