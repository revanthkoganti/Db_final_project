import { Component } from '@angular/core';

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
}
