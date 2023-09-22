import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { first } from 'rxjs/operators';
import { AuthenticationService } from '../shared/services/auth/authentication.service';
import { ApiCallService } from 'src/app/shared/services/common/api-call.service';

declare var $: any;
@Component({
    selector: 'app-authentication',
    templateUrl: './authentication.component.html',
    styleUrls: ['./authentication.component.css']
})
export class AuthenticationComponent implements OnInit {

    loginForm!: FormGroup;
    resetForm!: FormGroup;
    changePasswordForm!: FormGroup;
    loading = false;
    reloading = false;
    invalidCredentials = false;
    submitted = false;
    resubmitted = false;
    returnUrl!: string;
    message: any;
    smessage: any;
    username: any;
    constructor(
        private formBuilder: FormBuilder,
        private route: ActivatedRoute,
        private router: Router,
        private authenticationService: AuthenticationService,
        private apiService:ApiCallService
        // private alertService: AlertService
    ) {

    }

    ngOnInit() {
        
        if (localStorage.getItem('currentUser')) {
            let userType = JSON.parse(localStorage.getItem('currentUser')||'{}').roles[0].name;
            userType = userType.toLowerCase();
            this.router.navigate(['/' + userType + '/dashboard']);
        }
        const body = document.getElementsByTagName('body')[0];
        body.classList.add('menubar-hoverable');
        body.classList.add('header-fixed');
        this.loginForm = this.formBuilder.group({
            username: ['', Validators.required],
            password: ['', Validators.required]
        });
        
        this.changePasswordForm = this.formBuilder.group({
            otp: ['', Validators.required],
            password: ['', Validators.required],
            confirm_password: ['', Validators.required]
        });

        // get return url from route parameters or default to '/'
        this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
        
    }

    // convenience getter for easy access to form fields
    get f() { return this.loginForm.controls; }
    get r() { return this.resetForm.controls; }
    get c() { return this.changePasswordForm.controls; }

    login() {
        this.submitted = true;
        this.loading = true;
        this.invalidCredentials = false;
        // stop here if form is invalid
        if (this.loginForm.invalid) {
            this.loading = false;
            return;
        }


        this.authenticationService.login(this.f['username'].value, this.f['password'].value)
            .pipe(first())
            .subscribe(
                data => {
                    this.loading = false;
                    if (data.status) {
                        localStorage.setItem('currentUser', JSON.stringify(data.result));
                        this.router.navigate([this.returnUrl+data.result.roles[0].name.toLowerCase()+'/dashboard']);
                    }
                    else {
                        this.loading = false;
                        this.invalidCredentials = true;
                        console.log('invalid user')
                    }

                },
                error => {
                    console.log(error)
                    this.loading = false;
                });
    }
    show_reset() {
		$('.form-login').hide('slow');
		$('.form-reset').fadeIn('slow');
	}
    show_login() {
		$('.form-reset').hide('slow');
		$('.form-register').hide('slow');
		$('.form-change').hide('slow');
		$('.form-create').hide('slow');
		$('.form-login').fadeIn('slow');
	}
    
    
}
