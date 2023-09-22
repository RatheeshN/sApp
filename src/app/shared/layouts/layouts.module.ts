import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LayoutsComponent } from './layouts.component';
import {HeaderComponent} from './header/header.component';
import { NavigationComponent} from './navigation/navigation.component';
import { RouterModule } from '@angular/router';
import { fas } from '@fortawesome/free-solid-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
import { fab } from '@fortawesome/free-brands-svg-icons';
import { FaIconLibrary } from '@fortawesome/angular-fontawesome';
import { SafePipe } from '../pipes/safe.pipe';
import { NgScrollbarModule } from 'ngx-scrollbar';

@NgModule({
  imports: [
    CommonModule,
    RouterModule,
    NgScrollbarModule
  ],
  declarations: [
    LayoutsComponent, 
    HeaderComponent,
    NavigationComponent,
    SafePipe
  ],
  exports:[HeaderComponent, NavigationComponent]
})
export class LayoutsModule { 
  constructor(library: FaIconLibrary) {
    library.addIconPacks(fab, far, fas);
  }
}
