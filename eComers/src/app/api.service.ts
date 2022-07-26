import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http:HttpClient) { }

  sendReply(data:any){
    this.http.post("http://localhost/angular/eComers/admin/blogReplyApi.php",data);
  }
  getProduct(){
    return  this.http.get("http://localhost/angular/eComers/admin/productApi.php");
  }
  getDetails(id:any){
    return this.http.get(`http://localhost/angular/eComers/admin/productDetailsApi.php?id=${id}`);
  }
  customerRegister(data:any){
      return this.http.post('http://localhost/angular/eComers/admin/customerLoginApi.php',data)
  }
  customerLogin(data:any){
    return this.http.post('http://localhost/angular/eComers/admin/userLoginApi.php',data)
  }
  sendOrder(data:any){
    return this.http.post("http://localhost/angular/eComers/admin/orderApi.php",data)
  }
  invoiveApi(id:any){
    return this.http.get(`http://localhost/angular/eComers/admin/invoiceApi.php?id=${id}`);
  }
}
