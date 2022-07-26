<?php 
include('database/connection.php');
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST');
    header('Access-Control-Allow-Headers:Content-Type');
    header('content-type:application/json');

$url = file_get_contents('php://input');
$data = json_decode($url,true);



$customer_id = $data['customer_id'];
$order_id = rand();
$first = $data['first_name'];
$last = $data['last_name'];
$name = $first .' '.$last ;
$address = $data['address'];
$phone = $data['phone'];
$email = $data['email'];
$payment_method = $data['payment_method'];
$total = $data['total'];
$shippingRate = $data['shippingRate'];
$total_amount = $total+$shippingRate;
$date = date('Y-m-d');


 $cartData = $data['order'];

 
//  echo json_encode( $cartData);
//  exit;



if($email!='' && $cartData!='' && $address!='' && $phone!=''){
    foreach($cartData as $cart ){
        $id=$cart['id'];
        $qty=$cart['qty'];
        $q = "INSERT INTO orders VALUES(NULL, $customer_id,$id , $order_id,$qty,'$name','$address','$phone','$email', '$payment_method', $total_amount,'pending','$date')";
       $res =  $conn->query($q);
       echo json_encode(array('status'=>true)); 
    }
   
   
}else{
    echo json_encode(array('status'=>false  ));  
}


?>
