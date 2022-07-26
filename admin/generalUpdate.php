<?php 
include('database/connection.php');
$logo = $_FILES['logo'];
$bennar_pic = $_FILES['bennar_pic'];
$bennar_text_one = $_POST['bennar_text_one'];
$two = $_POST['two'];
$three = $_POST['three'];
$discount_photo = $_FILES['special_discount_photo'];
$discount_title = $_POST['discount_title'];
$discount_details = $_POST['discount_details'];
$footer_text = $_POST['footer_text'];
$common_bennar = $_FILES['common_bennar'];
$about_photo = $_FILES['about_photo'];
$about_text = $_POST['about_text'];
$contact_text = $_POST['contact_text'];
$address = $_POST['address'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$map = $_POST['map'];

// photo uploads

    // logo
    $logoExt = pathinfo(basename('../eComers/src/assets/img/upload/logo/'.$logo['name']),PATHINFO_EXTENSION);
    $logoName ='Logo-'. rand().'.'.$logoExt;
    move_uploaded_file($logo['tmp_name'],'../eComers/src/assets/img/upload/logo/'.$logoName);
    // bennar photo
    $bennar_picExt = pathinfo(basename('../eComers/src/assets/img/upload/bennar_pic/'.$bennar_pic['name']),PATHINFO_EXTENSION);
    $bennar_picName ='Bennar-Photo-'. rand().'.'.$bennar_picExt;
    move_uploaded_file($bennar_pic['tmp_name'],'../eComers/src/assets/img/upload/bennar_pic/'.$bennar_picName);
    // discount photo
    $discount_photoExt = pathinfo(basename('../eComers/src/assets/img/upload/discount_photo/'.$discount_photo['name']),PATHINFO_EXTENSION);
    $discount_photoName ='Discouent-Photo-'. rand().'.'.$discount_photoExt;
    move_uploaded_file($discount_photo['tmp_name'],'../eComers/src/assets/img/upload/discount_photo/'.$discount_photoName);
    // about photo
    $about_photoExt = pathinfo(basename('../eComers/src/assets/img/upload/about_photo/'.$about_photo['name']),PATHINFO_EXTENSION);
    $about_photoName ='About-Photo-'. rand().'.'.$about_photoExt;
    move_uploaded_file($about_photo['tmp_name'],'../eComers/src/assets/img/upload/about_photo/'.$about_photoName);
    // common bennar photo
    $common_bennarExt = pathinfo(basename('../eComers/src/assets/img/upload/common_bennar/'.$common_bennar['name']),PATHINFO_EXTENSION);
    $common_bennarName ='Common-Bennar-'. rand().'.'.$common_bennarExt;
    move_uploaded_file($common_bennar['tmp_name'],'../eComers/src/assets/img/upload/common_bennar/'.$common_bennarName);
    
// end of the photo upload
    
 $conn->query("UPDATE general SET  logo='$logoName',bennar_pic='$bennar_picName',bennar_text_one='$bennar_text_one',bennar_text_two='$two',bennar_text_three='$three',spacial_discount_photo='$discount_photoName',discount_title='$discount_title',discount_details='$discount_details',footer_text='$footer_text',common_bennar='$common_bennarName',about_text='$about_text',about_pic='$about_photoName',contact_text='$contact_text',address='$address',email='$email',phone='$phone', map='$map' WHERE id='1' ");
  
    header('Location: generalTable.php');


?>