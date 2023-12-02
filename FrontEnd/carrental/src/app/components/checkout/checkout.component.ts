import { Component } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { CarService } from 'src/app/services/car.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent {
  carForm!: FormGroup;
  constructor(public carservice:CarService,private fb: FormBuilder) {}
  ngOnInit() {
    this.carForm = this.fb.group({
      insurance: [false], 
    });
  }
  bookCar(){
    
  }

}
