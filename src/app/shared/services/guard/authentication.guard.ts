import { Injectable } from '@angular/core';
import { Router,ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthenticationService } from '../auth/authentication.service';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationGuard {
  constructor(
    private router: Router,
    private authenticationService: AuthenticationService
) { }
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    
    if (localStorage.getItem('currentUser')) {
        // logged in so return true
        return true;
    }

    // not logged in so redirect to login page with the return url
    this.router.navigate([''], { queryParams: { returnUrl: state.url } });
    return false;
  } 
  
}
