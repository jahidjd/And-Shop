import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-blogdetails',
  templateUrl: './blogdetails.component.html',
  styleUrls: ['./blogdetails.component.css']
})
export class BlogdetailsComponent implements OnInit {

  constructor(private api:ApiService) { }
  // name:any;
  // email:any;
  // website:any;
  // comment:any;

  ngOnInit(): void {
  }

}
