import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { Router } from '@angular/router';
import {CookieService} from 'ngx-cookie';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  httpOptions: { headers: any; };

  constructor(private http: HttpClient,private router: Router,private _cookieService: CookieService) { 
    let csrf = this._cookieService.get("XSRF-TOKEN");
    console.log(this._cookieService);
    if (typeof(csrf) === 'undefined') {
      csrf = '';
    }
    this.httpOptions = {
      headers: new HttpHeaders({'X-CSRFToken': csrf}),
    };
  }

  login(username: string, password: string) {
        return this.http.post<any>(`http://localhost/schoolApp/public/api/v1/login`,{email:username,password:password},this.httpOptions)
          .pipe(map(user => {
              return user;
        }));
  }

  logout() {
      // remove user from local storage to log user out
      localStorage.removeItem('currentUser');
      this.router.navigate(['/']);
  }

}
