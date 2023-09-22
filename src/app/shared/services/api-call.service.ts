import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
@Injectable({
  providedIn: 'root'
})
export class ApiCallService {
  
  public static apiURL: string = "/kiwibook_staging/";
  constructor(private http: HttpClient) { }
  userDetails = JSON.parse(localStorage.getItem('currentUser')||'{}');
  callPortalApiGet(apiurl:string) {
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