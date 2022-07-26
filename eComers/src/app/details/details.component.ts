import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApiService } from '../api.service';
import { ShopComponent } from '../shop/shop.component';


@Component({
  selector: 'app-details',
  templateUrl: './details.component.html',
  styleUrls: ['./details.component.css']
})
export class DetailsComponent implements OnInit {

  constructor(private route: ActivatedRoute, private api:ApiService) { }
  product:any=[];
  details:any;
  cartData:any;
  cart:any = [];
  pData:any;
  element:any;
  isTrue:any;
  
  ngOnInit(): void {
    const routeParams = this.route.snapshot.paramMap;
  const productIdFromRoute = Number(routeParams.get('id'));
  this.api.getDetails(productIdFromRoute).subscribe((response:any)=>{
    this.details = response
    console.log(this.details)
  })
  console.log(productIdFromRoute)

  this.api.getProduct().subscribe((data:any)=>{
    this.product = data;
  })
  
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
          
        }else{
          alert('already added')
        }
      }else{
        this.cart.push({id:this.cartData.id, photo:this.cartData.photo ,name:this.cartData.name, price:this.cartData.price, qty:1})
        
      }
      localStorage.setItem('cart',JSON.stringify(this.cart))
      this.isTrue= true;
      console.log(this.cart)
    })
    console.log(id)

  }

}
