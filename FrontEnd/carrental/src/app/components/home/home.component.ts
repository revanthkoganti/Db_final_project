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
  // Properties for storing form data
  selectedCarType: string = '';
  pickUpLocation: string = '';
  dropOffLocation: string = '';
  pickUpDate: Date | null = null;
  dropOffDate: Date | null = null;

  // Method to handle form submission
  searchCars() {
    // You can perform actions here based on the selected car type and other form data
    // For example, you can filter the cars array based on the selected criteria.
    console.log('Search Cars:', this.selectedCarType, this.pickUpLocation, this.dropOffLocation, this.pickUpDate, this.dropOffDate);
  }
}
