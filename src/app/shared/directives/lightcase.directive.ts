import { AfterViewInit, Directive, ElementRef } from '@angular/core';
declare var jQuery: any;
@Directive({
  selector: '[lightcase]'
})
export class LightcaseDirective implements AfterViewInit{
  $el: any;
  constructor(private elementRef: ElementRef) { }

  ngAfterViewInit(){
    this.$el = jQuery(this.elementRef.nativeElement);
    this.$el.lightcase();
  }
}
