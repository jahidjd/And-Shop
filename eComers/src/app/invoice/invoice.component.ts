import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-invoice',
  templateUrl: './invoice.component.html',
  styleUrls: ['./invoice.component.css']
})
export class InvoiceComponent implements OnInit {

  constructor(private api:ApiService) { }
id:any = localStorage.getItem('userId');
invoice:any = [];
// orderId:any;

  ngOnInit(): void {
    if(this.id!=''){
      this.api.invoiveApi(this.id).subscribe((res)=>{
        console.log(res)
        this.invoice = res;
        // this.orderId  = this.invoice[0].order_id
        
  
      })
    }
    
  }

}
