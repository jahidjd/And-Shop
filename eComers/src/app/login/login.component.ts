import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private api:ApiService) { }
userName:any;
password:any;
logged_in:any=false;
user_info:any;
responseData:any;
  ngOnInit(): void {
    if(localStorage.getItem('user')){
      this.user_info={name:localStorage.getItem('user'),userId:localStorage.getItem('userId')}
      this.logged_in=true;
      console.log(this.user_info)
    }
    
  }
  login(){
   this.api.customerLogin({userName:this.userName, password: this.password}).subscribe((res)=>{
     this.responseData = res;
     if(this.responseData.status){
      this.logged_in=true
      
      localStorage.setItem('user',this.responseData.result.name)
      localStorage.setItem('userId',this.responseData.result.id)
      window.location.assign('checkout')
      // window.location.reload()
    }else{
      alert('wrong id');
    }
     
   })

  }

}
