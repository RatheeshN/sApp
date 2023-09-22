import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'sApp';
  ngOnInit()
  {
    const body = document.getElementsByTagName('body')[0];
        body.classList.add('menubar-hoverable');
        body.classList.add('header-fixed');
  }
}
