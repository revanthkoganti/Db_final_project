import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {
  cars= [
    {
      id: 1,
      brand: 'Toyota',
      model: 'Camry',
      year: 2022,
      rentalPrice: 50,
      imageUrl: 'https://www.motortrend.com/uploads/2023/07/2024-Toyota-Camry-XSE-Hybrid-front-view-9.jpg?fit=around%7C875:492'
    },
    {
      id: 2,
      brand: 'Honda',
      model: 'Accord',
      year: 2021,
      rentalPrice: 55,
      imageUrl: 'https://www.motortrend.com/uploads/2023/07/2024-Toyota-Camry-XSE-Hybrid-front-view-9.jpg?fit=around%7C875:492',
    },
    {
      id: 3,
      brand: 'Ford',
      model: 'Fusion',
      year: 2023,
      rentalPrice: 60,
      imageUrl: 'https://www.motortrend.com/uploads/2023/07/2024-Toyota-Camry-XSE-Hybrid-front-view-9.jpg?fit=around%7C875:492',
    },
    
  ];
  // Properties for storing form data
  
  carForm!:FormGroup
  showcars: boolean=false;
  constructor(private fb: FormBuilder,private http:HttpClient) {}

  ngOnInit() {
     this.carForm= this.fb.group({
      selectedCarType: ['', Validators.required],
      pickUpLocation: ['', Validators.required],
      pickUpDate: [null, Validators.required],
      dropOffDate: [null, Validators.required],
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
        "returnDate": this.carForm.value.returnDate,
        "location": this.carForm.value.location,
        "categoryId": 2
      }
      let url="http://localhost:8080/search";
      this.http.post(url,req).subscribe((res:any)=>{
        if(res.status === "success"){
          this.cars=res.cars;
          this.showcars=true;
        }
      })
      // Perform the form submission logic here
      console.log('Form submitted!', this.carForm.value);
    }
  }
  
}
