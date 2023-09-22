/* tslint:disable:no-unused-variable */

import { TestBed, inject } from '@angular/core/testing';
import { ApiCallService } from './api-call.service';

describe('Service: ApiCall', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ApiCallService]
    });
  });

  it('should ...', inject([ApiCallService], (service: ApiCallService) => {
    expect(service).toBeTruthy();
  }));
});
