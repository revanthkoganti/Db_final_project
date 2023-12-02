import { Component } from '@angular/core';
import { CarService } from 'src/app/services/car.service';

@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent {
  constructor(private carservice:CarService) {}
}
