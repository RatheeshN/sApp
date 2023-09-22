import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
@Injectable({
  providedIn: 'root'
})
export class ApiCallService {
  
  public static apiURL: string = "http://localhost/schoolApp/public/api/v1";
  constructor(private http: HttpClient) { }
  userDetails = JSON.parse(localStorage.getItem('currentUser')||'{}');
  
  callPortalApiGet(apiurl:string) {
    console.log(this.userDetails);
    const reqHeader = new HttpHeaders().set('Authorization', 'Bearer ' + this.userDetails.token);
    return this.http.get<any>(apiurl,{headers:reqHeader})
      .pipe(map(response => {
          return response;
      }));
  }
  callPortalApiPost(apiurl:string,input:any) {
    const reqHeader = new HttpHeaders().set('Authorization', 'Bearer ' + this.userDetails.token);
    return this.http.post<any>(apiurl,input,{headers:reqHeader})
      .pipe(map(response => {
          return response;
      }));
  }
  
}