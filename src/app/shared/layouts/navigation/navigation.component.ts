import { DOCUMENT } from '@angular/common';
import { Component, Inject, OnInit, Renderer2 } from '@angular/core';

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.css']
})
export class NavigationComponent implements OnInit {

  date: Date = new Date();
  menuItems: any;
  userDetails = JSON.parse(localStorage.getItem('currentUser')|| '{}');
  userType = this.userDetails.roles[0].name;
  
  constructor(
    private renderer: Renderer2,
    @Inject(DOCUMENT) private document: Document
  ) { }

  ngOnInit() {

    
    if (this.userType == 'Student') {
      this.menuItems = [
        { path: '/student/dashboard', title: 'Dashboard', icon: 'tachometer-alt' },
        { path: '/student/message', title: 'Message', icon: 'inbox' },
        { path: '/student/profile', title: 'Profile', icon: 'address-card' },
        { path: '/student/onlineclass', title: 'Online Class', icon: 'file-video' },
        { path: '/student/payment', title: 'Payment', icon: 'credit-card' },
        { path: '/student/attendance', title: 'Attendance', icon: 'calendar-check' },
        { path: '/student/timetable', title: 'Timetable', icon: 'calendar-alt' },
        { path: '/student/assignment-list', title: 'Assignment', icon: 'file-alt' },
        { path: '/student/timeline', title: 'Timeline', icon: 'stream' },
        { path: '/student/examination', title: 'Exams', icon: 'book' },
        { path: '/student/library', title: 'Library', icon: 'book-reader' },
        { path: '/student/ewallet', title: 'E-Wallet', icon: 'wallet' },
        
      ];
    }
    else if (this.userType == 'Faculty') {
      this.menuItems = [
        { path: '/faculty/dashboard', title: 'Dashboard', icon: 'tachometer-alt' },
        { path: '/faculty/message', title: 'Message', icon: 'inbox' },
        { path: '/faculty/profile', title: 'Profile', icon: 'address-card' },
        { path: '/faculty/attendance', title: 'Attendance', icon: 'calendar-check' },
        { path: '/faculty/timetable', title: 'Timetable', icon: 'calendar-alt' },
        { path: '/faculty/leaveRequests', title: 'Student Leave Requests', icon: 'tasks' },
        { path: '/faculty/onlineclass', title: 'Onlineclass', icon: 'file-video' },
        { path: '/faculty/assignment-list', title: 'Assignment', icon: 'file-alt' },
        { path: '/faculty/timeline', title: 'Timeline', icon: 'stream' },
        { path: '/faculty/examination', title: 'Exams', icon: 'book' },
        { path: '/faculty/lessonplanner', title: 'Lesson Planner', icon: 'calendar-alt' }, 
        { path: '/faculty/applyleave', title: 'Apply Leave', icon: 'calendar-check' }
        
      ];
    }
    else if (this.userType == 'Admin') {
      this.menuItems = [
        { path: '/admin/dashboard', title: 'Dashboard', icon: 'tachometer-alt' },
        { path: '/admin/student', title: 'Student', icon: 'inbox' },
        { path: '/admin/teacher', title: 'Teacher', icon: 'stream' },
        { path: '/admin/class', title: 'Class', icon: 'calendar-check' },
      ];
    }
  }

  showMenuOffCanvas() {
    const body = document.getElementsByTagName('body')[0];
    if (!body.classList.contains("menubar-pin")) {
      if (!body.classList.contains("menubar-visible")) {
        this.renderer.addClass(document.body, 'menubar-visible');
      }
    }
  }
  hideMenuOffCanvas() {
    const body = document.getElementsByTagName('body')[0];
    if (!body.classList.contains("menubar-pin")) {
      if (body.classList.contains("menubar-visible")) {
        this.renderer.removeClass(document.body, 'menubar-visible');
      }
    }
  }
}
