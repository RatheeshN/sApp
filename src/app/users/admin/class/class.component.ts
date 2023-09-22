import { Component, OnInit } from '@angular/core';
import { ApiCallService } from 'src/app/shared/services/common/api-call.service';

@Component({
  selector: 'app-class',
  templateUrl: './class.component.html',
  styleUrls: ['./class.component.css']
})
export class ClassComponent implements OnInit{
  genders = ['male', 'female','other'];
  filter: any ;
  exams: any ;
  page: number = 1;
  
  
  userDetails=JSON.parse(localStorage.getItem('currentUser') || '{}');
  creating: boolean=false;
  

  constructor(
    private apiService:ApiCallService
  ) { }
  ngOnInit() {
    this.getClass();
  }
  getClass(){
    let url = ApiCallService.apiURL+'/classes';
    console.log(url); 
    this.apiService.callPortalApiGet(url)
    .subscribe((data: {}) => {
        console.log(data);
    });
    
  }
    
  
}
