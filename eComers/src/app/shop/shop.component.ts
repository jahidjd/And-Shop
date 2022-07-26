import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.css']
})
export class ShopComponent implements OnInit {

  constructor(private api:ApiService) { }
shop:any;
cartData:any;
cart:any = [];
pData:any;
element:any;
isTrue:any;
subtotal=0;
cartN:any;
cartNumber:any;
cartAdd =0;
  ngOnInit(): void {
    this.api.getProduct().subscribe((data:any)=>{
      this.shop = data;
      // console.log(this.shop)
      
     
    })
    this.cartN = localStorage.getItem('cart')
    this.cartNumber = JSON.parse(this.cartN)
   this.cartAdd = this.cartNumber.length
  }
  addToCart(id:any){
    this.api.getDetails(id).subscribe((res:any)=>{
      this.cartData = res;
      if(localStorage.getItem('cart')){
        this.pData = localStorage.getItem('cart');
        this.cart = JSON.parse(this.pData);
        for(let i =0; i< this.cart.length; i++){
          
            this.element = this.cart[i];
            if(this.element.id==id){
              this.isTrue= false;
            }
        }
        if(this.isTrue){
          this.cart.push({id:this.cartData.id, photo:this.cartData.photo ,name:this.cartData.name, price:this.cartData.price, qty:1})
          this.subtotal+=parseFloat(this.cartData.price)
        }else{
          alert('already added')
        }
      }else{
        this.cart.push({id:this.cartData.id, photo:this.cartData.photo ,name:this.cartData.name, price:this.cartData.price, qty:1})
       this.subtotal+= parseFloat(this.cartData.price)
      }
      localStorage.setItem('cart',JSON.stringify(this.cart))
      this.isTrue= true;
      console.log(this.cart)
    })
  }
  removeCart(id:any){
    this.cart.splice(id,1)
    localStorage.removeItem('cart')
    localStorage.setItem('cart',JSON.stringify(this.cart))
   
    
  }
  
}
