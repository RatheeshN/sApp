import { DOCUMENT } from '@angular/common';
import { Component, Inject, OnInit, Renderer2 } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { AuthenticationService } from '../../services/auth/authentication.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  
  userDetails=JSON.parse(localStorage.getItem('currentUser')||'{}');
  name!: string;
  userType=this.userDetails.roles[0].name;
  photo!: string;
  screenWidth!: number;
  isShown:boolean=false;
  constructor(
    private domSanitizer: DomSanitizer, 
    private authenticationService: AuthenticationService,
    private renderer: Renderer2,
    @Inject(DOCUMENT) private document: Document
    ) {}
  ngOnInit() {
    this.screenWidth = window.innerWidth;
    if(this.userType=='Student')
    {
      this.name=this.userDetails.name;
    }
    else{
      this.name=this.userDetails.name;
    }
  }

  transform(url: string) {
    return this.domSanitizer.bypassSecurityTrustResourceUrl(url);
  }

  logout()
  {
    this.authenticationService.logout();
  }
  toggleMenu()
  { 
    const body = document.getElementsByTagName('body')[0];
    if(this.screenWidth>1024)
    {
      if(body.classList.contains("menubar-pin"))
      {
        this.renderer.removeClass(document.body, 'menubar-pin');
      }
      else{
        this.renderer.addClass(document.body, 'menubar-pin');
      }
    }
    else
    {
      if(body.classList.contains("menubar-visible"))
      {
        this.renderer.removeClass(document.body, 'menubar-visible');
      }
      else{
        this.renderer.addClass(document.body, 'menubar-visible');
      }
    }
    
  }

}
