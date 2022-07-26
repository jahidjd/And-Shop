import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.css']
})
export class CheckoutComponent implements OnInit {

  constructor(private api:ApiService) { }
cartData:any;
cart:any=[];
subtotal =0;
 total=0;
 shippingRate=150;
 first_name:any;
 last_name:any;
 phone:any;
 email:any;
 address:any;
 payment_method:any;
 customer_id:any;

 

  ngOnInit(): void {
    this.customer_id = localStorage.getItem('userId')
     this.cartData = localStorage.getItem('cart')
     console.log(this.cartData)
     
     this.cart = JSON.parse(this.cartData)
    //  console.log(typeof(this.cart))
     for(let i = 0 ; i<this.cart.length;i++){
      this.subtotal = parseFloat(this.cart[i].price)*parseFloat(this.cart[i].qty)
      this.total+=this.subtotal
  }
  

}

placeOrder(){
  if(localStorage.getItem('user')){
    
    this.api.sendOrder({customer_id:this.customer_id,order: this.cart, total:this.total,first_name:this.first_name,last_name:this.last_name,shippingRate:this.shippingRate,phone:this.phone,email:this.email,address:this.address,payment_method:this.payment_method}).subscribe((response)=>{
      if(response){
        this.first_name='';
        this.last_name='';
        this.phone='';
        this.email='';
        this.address='';
        localStorage.removeItem('cart');
   
        window.location.assign('invoice')
      }else{
        window.location.assign('checkout')
      }
    })
   

  }else{
    window.location.assign('login')
  }
}

}

