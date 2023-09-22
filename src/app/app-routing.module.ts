import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthenticationComponent } from './authentication/authentication.component';
import { AuthenticationGuard } from './shared/services/guard/authentication.guard';
import { RoleGuardService } from './shared/services/guard/role.guard';
import { AdminComponent } from './users/admin/admin.component';
import { AdminDashboardComponent } from './users/admin/admin-dashboard/admin-dashboard.component';
import { StudentComponent  } from './users/admin/student/student.component';
import { ClassComponent } from './users/admin/class/class.component';
import { TeacherComponent } from './users/teacher/teacher.component';
import { TeacherComponent as AdminTeacherComponent } from './users/admin/teacher/teacher.component';

const routes: Routes = [
  {
    path: '',
    component: AuthenticationComponent,
  },
  {
    path: "admin",
    canActivate: [AuthenticationGuard, RoleGuardService],
    component: AdminComponent,
    data: { roles: ['Admin'] },
    children: [
      {
        path: "dashboard",
        component: AdminDashboardComponent
      },
      {
        path: "student",
        component: StudentComponent
      },
      {
        path: "class",
        component: ClassComponent
      },
      {
        path: "teacher",
        component: AdminTeacherComponent
      },
    ]
  },
]
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
