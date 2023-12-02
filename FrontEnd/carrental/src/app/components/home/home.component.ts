import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { CarService } from 'src/app/services/car.service';
import { ChangeDetectorRef } from '@angular/core';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  // Properties for storing form data
  
  carForm!:FormGroup
  showcars: boolean=false;
  cars: any;
  options: any;
  constructor(private fb: FormBuilder,private http:HttpClient,private router:Router
    ,private carservice:CarService,private cdr: ChangeDetectorRef) {}

  ngOnInit() {
     this.carForm= this.fb.group({
      selectedCarType: ['', Validators.required],
      pickUpLocation: ['', Validators.required],
      pickUpDate: [null, Validators.required],
      dropOffDate: [null, Validators.required],
    });
    let url="http://localhost:8080/category"
    this.http.get(url).subscribe((res:any)=>{
      this.options=res.carCategory;
    });
  }

  // Method to handle form submission
  searchCars() {
    // You can perform actions here based on the selected car type and other form data
    // For example, you can filter the cars array based on the selected criteria.
    //console.log('Search Cars:', this.selectedCarType, this.pickUpLocation, this.dropOffLocation, this.pickUpDate, this.dropOffDate);
    if (this.carForm.valid) {
      let req={
        "pickupDate": this.carForm.value.pickUpDate,
        "returnDate": this.carForm.value.dropOffDate,
        "location": this.carForm.value.pickUpLocation,
        "categoryId": this.carForm.value.selectedCarType
      }
      this.carservice.searchreq=req;
      let url="http://localhost:8080/search";
      this.http.post(url,req).subscribe((res:any)=>{
        if(res.status === "Success"){
          this.cars=res.cars;
          this.showcars=true;
          this.cdr.detectChanges();
        }
      })
      // Perform the form submission logic here
      console.log('Form submitted!', this.carForm.value);
    }
  }
  rent(car:any){
    this.carservice.selectedcar=car;
    this.router.navigateByUrl("/checkout");
  }
}
