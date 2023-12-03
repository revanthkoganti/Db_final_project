import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CarService } from 'src/app/services/car.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent {

  constructor(private router: Router,public carservice:CarService) {}


  register(){
    this.router.navigate(['/registeruser']);
  }
  logout(){
    this.carservice.isloggedin=false;
    this.router.navigate(['/home']);
  }
  login(){
    this.router.navigate(['/loginuser']);
  }

}
