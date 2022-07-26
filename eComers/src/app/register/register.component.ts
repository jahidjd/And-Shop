import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  constructor(private api:ApiService) { }
userName:any;
email:any;
password:any;
status:any;
  ngOnInit(): void {
  }
  register(){
    this.api.customerRegister({userName:this.userName,email:this.email,password:this.password}).subscribe((res:any)=>{
      this.status = res
      console.log(res);
      this.userName='';
      this.email='';
      this.password='';
      if(this.status){
        window.location.assign('login')
      }
    })
  }

}
