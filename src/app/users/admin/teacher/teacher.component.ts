import { Component } from '@angular/core';

@Component({
  selector: 'app-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.css']
})
export class TeacherComponent {
  genders = ['male', 'female','other'];
  filter: any ;
  exams: any ;
  page: number = 1;
  
  
  userDetails=JSON.parse(localStorage.getItem('currentUser') || '{}');
  creating: boolean=false;
  selectedExam: any;
  academicYears: any;
  academicYear:any=null;
  loadingStudents!: boolean;
  students: any;
  confirming!: boolean;
  updating!: boolean;
}
