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
  total: number=0;
  tax:number=0;
  insurance_amount:number=0;
  final_amount=0;
  constructor(public carservice:CarService,private fb: FormBuilder,private http:HttpClient
    ,private router:Router) {}
  ngOnInit() {
    this.carForm = this.fb.group({
      insurance: [''], 
    });
    let url="http://localhost:8080/insurance"
    this.http.get(url).subscribe((res:any)=>{
      this.insuranceOptions=res.carRentalInsurance;
    })
    this.total = this.calculate_total();
    this.tax= Number(this.total) * 0.08;
    this.final_amount=Number(this.total)+Number(this.tax);
  }
  calculate_total() {
    let datedifference = this.getDateDifferenceInDays(this.carservice.searchreq.pickupDate,this.carservice.searchreq.returnDate);
    let total=Number(this.carservice.selectedcar.costPerDay)*Number(datedifference);
    
    return total;
  }
  getCurrentDate(): string {
    const currentDate = new Date();
  
    const month = (currentDate.getMonth() + 1).toString().padStart(2, '0');
    const day = currentDate.getDate().toString().padStart(2, '0');
    const year = currentDate.getFullYear();
  
    return `${month}/${day}/${year}`;
  }
  bookCar(){
    let dt=this.getCurrentDate();
    let req={
      "paymentDate":dt,
      "totalAmount":this.final_amount,
      "pickupDate": this.carservice.searchreq.pickupDate,
      "returnDate": this.carservice.searchreq.returnDate,
      "bookingStatus": "CONFIRMED",
      "carRentalInsurance": {
        "insuranceCode": this.carForm.value.insurance
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
        this.router.navigateByUrl("/home");
      }
    })
  }
  getDateDifferenceInDays(date1: Date, date2: Date): number {
    // Calculate the time difference in milliseconds
    const timeDifference = date2.getTime() - date1.getTime();
  
    // Calculate the number of days
    const daysDifference = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
  
    return daysDifference;
  }
  onInsuranceSelected(event: any) {
    // You can access the selected value using event.value
    this.carForm.controls['insurance'].setValue(event.insuranceCode);

    this.insurance_amount=event.value.insuranceCostPerDay;
    this.final_amount= Number(this.total)+Number(this.tax)+Number(this.insurance_amount);
    // const selectedInsuranceCode = event.value;
    // console.log('Selected Insurance Code:', selectedInsuranceCode);

    // Perform any additional logic based on the selected insurance code
    // For example, update other form controls or perform an action
  }

}
