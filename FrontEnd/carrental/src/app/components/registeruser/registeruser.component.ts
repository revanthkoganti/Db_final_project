import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';

@Component({
  selector: 'app-registeruser',
  templateUrl: './registeruser.component.html',
  styleUrls: ['./registeruser.component.scss']
})
export class RegisteruserComponent implements OnInit {
  registrationForm: FormGroup;

  constructor(private formBuilder: FormBuilder,private http:HttpClient,private _snackBar: MatSnackBar,
    private router:Router) {
    this.registrationForm = this.formBuilder.group({
      firstName: ['', Validators.required],
      lastName: ['', Validators.required],
      LicenseNo: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      phoneNo: ['', Validators.required],
      address: ['', Validators.required],
      password: ['', Validators.required],
    });
  }

  ngOnInit(): void {
    // Optional: Move initialization logic here
  }

  onSubmit() {
    let req={
      "licenseNumber": this.registrationForm.value.LicenseNo,
      "firstName": this.registrationForm.value.firstName,
      "lastName": this.registrationForm.value.lastName,
      "phoneNumber": this.registrationForm.value.phoneNo,
      "address": this.registrationForm.value.address,
      "password": this.registrationForm.value.password,
      "email": this.registrationForm.value.email
    }
    let url="http://localhost:4200/register";
    this.http.post(url,req).subscribe((res)=>{
      this._snackBar.open("Successful Registration", "Done");
      this.router.navigateByUrl("loginuser");
    })
    console.log(this.registrationForm.value);
  }
}