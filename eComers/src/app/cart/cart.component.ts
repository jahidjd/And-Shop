import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  constructor() { }
  cartData:any;
  cart:any=[];
  plusMinus:any;
  subtotal =0;
  total=0;
  shippingRate=150;
  

  ngOnInit(): void {
   this.cartData = localStorage.getItem('cart')
   this.cart  = JSON.parse(this.cartData)
   for(let i = 0 ; i<this.cart.length;i++){
    this.subtotal = parseFloat(this.cart[i].price)*parseFloat(this.cart[i].qty)
    this.total+=this.subtotal
  
}
  
  }
 
  removeCatr(id:any){
    this.cart.splice(id,1)
    localStorage.removeItem('cart')
    localStorage.setItem('cart',JSON.stringify(this.cart))
   
    
  }

  plus(id:any){
    this.plusMinus = this.cart[id]
    this.plusMinus.qty++
    localStorage.removeItem('cart');
    localStorage.setItem('cart',JSON.stringify(this.cart))

  }

  minus(id:any){
    this.plusMinus = this.cart[id]
    if(this.plusMinus.qty>1){
       this.plusMinus.qty--
       localStorage.removeItem('cart');
    localStorage.setItem('cart',JSON.stringify(this.cart))
    }else{
      alert('must have to be 1 or you can remove it')
    }
  }

  subTotal(){
     location.reload()   
  }

}
