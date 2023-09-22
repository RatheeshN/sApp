import { Injectable } from '@angular/core';
import { Router, ActivatedRouteSnapshot } from '@angular/router';
@Injectable({
  providedIn: 'root'
})
export class RoleGuardService {

  constructor(private router: Router) { }

  canActivate(route: ActivatedRouteSnapshot): any {
    let currentRole=JSON.parse(localStorage.getItem('currentUser')||'{}').roles[0].name;
    let expectedRoleArray = route.data['roles']; 
    let canAccess=false;
    for(let i=0; i<expectedRoleArray.length; i++){
      if(expectedRoleArray[i]==currentRole)
      {
        canAccess=true;
        return true;
      }
    }
    if(canAccess==false)
    {
      this.router.navigate(['/']);
      return false;
    }
  }
}