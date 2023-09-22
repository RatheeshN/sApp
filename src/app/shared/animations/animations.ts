import { trigger, transition, style, animate, query, stagger, keyframes } from '@angular/animations';

export const fadeAnimation = trigger('fadeAnimation', [
  transition(':enter', [
    style({ opacity: 0 }), animate('700ms', style({ opacity: 1 }))]
  ),
  transition(':leave',
    [style({ opacity: 1 }), animate('700ms', style({ opacity: 0 }))]
  )
]);

export const listAnimation = trigger('listAnimation', [
  transition('* => *', [

    query(':enter', style({ opacity: 0 }), {optional: true}),

    query(':enter', stagger('100ms', [
      animate('1s ease-in', keyframes([
        //style({opacity: 0, transform: 'translateY(-75%)', offset: 0}),
        //style({opacity: .5, transform: 'translateY(35px)',  offset: 0.3}),
        style({opacity: 1, transform: 'translateY(0)',     offset: 1.0}),
      ]))]), {optional: true})
  ])
]);