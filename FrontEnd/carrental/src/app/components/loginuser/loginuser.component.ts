import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { Router } from '@angular/router';

@Component({
  selector: 'app-loginuser',
  templateUrl: './loginuser.component.html',
  styleUrls: ['./loginuser.component.scss']
})


export class LoginuserComponent implements OnInit {
  loginForm: FormGroup;

  constructor(private formBuilder: FormBuilder,private http:HttpClient,
    private router:Router) {
    this.loginForm = this.formBuilder.group({
      email: ['', [Validators.required, Validators.email]],
      password: ['', Validators.required],
    });
  }

  ngOnInit(): void {
    // Additional initialization logic if needed
  }

  onSubmit() {
    let req={
      "password": this.loginForm.value.password,
      "email": this.loginForm.value.email
    }
    let url="http://localhost:8080/login";
    this.http.post(url,req).subscribe((res)=>{
      
      this.router.navigateByUrl("home");
    })

    console.log('Form submitted:', this.loginForm.value);
  }
}