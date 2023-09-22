import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { AuthenticationComponent } from './authentication/authentication.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LayoutsModule } from './shared/layouts/layouts.module';
import { DatePipe } from '@angular/common';
import { BsDatepickerModule } from 'ngx-bootstrap/datepicker';
import { FontAwesomeModule,FaIconLibrary } from '@fortawesome/angular-fontawesome';
import { CookieModule } from 'ngx-cookie';
import { AdminComponent } from './users/admin/admin.component';
import { StudentComponent } from './users/student/student.component';
import { StudentComponent as AdminStudentComponent } from './users/admin/student/student.component';
import { TeacherComponent } from './users/teacher/teacher.component';
import { TeacherComponent as AdminTeacherComponent } from './users/admin/teacher/teacher.component';

import { AdminDashboardComponent } from './users/admin/admin-dashboard/admin-dashboard.component';
import { far } from '@fortawesome/free-regular-svg-icons';
import { fab } from '@fortawesome/free-brands-svg-icons';
import { faCoffee, fas } from '@fortawesome/free-solid-svg-icons';
import { ModalComponent } from './modal/modal.component';
import { DlDateTimeDateModule, DlDateTimePickerModule } from 'angular-bootstrap-datetimepicker';
import { CommonModule } from '@angular/common';
import { ClassComponent } from './users/admin/class/class.component'

@NgModule({
  declarations: [
    AppComponent,
    AuthenticationComponent,
    AdminComponent,
    StudentComponent,
    TeacherComponent,
    AdminDashboardComponent,
    ModalComponent,
    AdminStudentComponent,
    ClassComponent,
    AdminTeacherComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    CommonModule,
    ReactiveFormsModule,
    LayoutsModule,
    FontAwesomeModule,
    BsDatepickerModule.forRoot(),
    CookieModule.withOptions(),
  ],
  providers: [DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule {
  constructor(library: FaIconLibrary) {
    library.addIconPacks(fab, far, fas);
    library.addIcons(faCoffee);
  }
 }
