import { Component, OnInit } from '@angular/core';
import { first } from 'rxjs/operators';
import { ApiCallService } from 'src/app/shared/services/common/api-call.service';
import Swal from 'sweetalert2';
declare var $ :any;
@Component({
  selector: 'app-student',
  templateUrl: './student.component.html',
  styleUrls: ['./student.component.css']
})
export class StudentComponent implements OnInit {
  genders = ['male', 'female','other'];
  filter: any ;
  exams: any ;
  page: number = 1;
  
  
  userDetails=JSON.parse(localStorage.getItem('currentUser') || '{}');
  creating: boolean=false;
  academicYear:any=null;
  loadingStudents!: boolean;
  students: any;
  confirming!: boolean;
  updating!: boolean;
  constructor(
    private apiService:ApiCallService,
    
  ) { }

  
  showCreateModal()
  {
    
    $('.createStudent').modal();
  }

  ngOnInit() {
    
  }
}
