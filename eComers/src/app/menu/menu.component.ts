import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor() { }
  cart:any;
cartNumber:any;
cartAdd =0;
logout = 'Login';
login = true;
  ngOnInit(): void {
   this.cart=  localStorage.getItem('cart')
   this.cartNumber = JSON.parse(this.cart)
   this.cartAdd = this.cartNumber.length
   if(localStorage.getItem('user') && localStorage.getItem('userId')){
    if(this.login){
      this.logout = 'Logout';
      
    }else{
      this.logout = 'Login'
    }
  }

}

logOut(){
  this.login = false;
  this.logout = 'Login';
  localStorage.removeItem('user')
  localStorage.removeItem('userId')
  localStorage.removeItem('cart')

  window.location.reload()
}
}
