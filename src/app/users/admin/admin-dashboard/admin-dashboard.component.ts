import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-admin-dashboard',
  templateUrl: './admin-dashboard.component.html',
  styleUrls: ['./admin-dashboard.component.css']
})
export class AdminDashboardComponent implements OnInit{
  userDetails=JSON.parse(localStorage.getItem('currentUser')||'{}');
  name!: string;

  ngOnInit() {
    this.name=this.userDetails.name;
  }
  
}
