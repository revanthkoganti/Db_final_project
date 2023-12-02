import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { CarService } from 'src/app/services/car.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent {
  carForm!: FormGroup;
  insuranceOptions:any;
  constructor(public carservice:CarService,private fb: FormBuilder,private http:HttpClient
    ,private router:Router) {}
  ngOnInit() {
    this.carForm = this.fb.group({
      insurance: [null], 
    });
    let url="http://localhost:8080/insurance"
    this.http.get(url).subscribe((res)=>{
      
    })
  }
  bookCar(){
    let req={
      "bookingId": 2,
      "pickupDate": this.carservice.searchreq.pickupDate,
      "returnDate": this.carservice.searchreq.returnDate,
      "bookingStatus": "CONFIRMED",
      "carRentalInsurance": {
        "insuranceCode": "1201"
      },
      "car": {
        "registrationNo": this.carservice.selectedcar.registrationNo
      },
      "customer": {
        "licenseNumber": this.carservice.licenseNumber
      }
    }
    let url="http://localhost:8080/booking";
    this.http.post(url,req).subscribe((res:any)=>{
      if(res.status=== true){
        alert("booking successful");
        this.router.navigateByUrl("home");
      }
    })
  }
  


}
