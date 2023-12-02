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
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cars.com%2Fresearch%2Ftoyota-camry-2021%2F&psig=AOvVaw1pIEekqvj5GTJQqjN44dmH&ust=1701579228789000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMiz1d3674IDFQAAAAAdAAAAABAE', // Update with the actual path to your images
    },
    {
      id: 2,
      brand: 'Honda',
      model: 'Accord',
      year: 2021,
      rentalPrice: 55,
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cars.com%2Fresearch%2Ftoyota-camry-2021%2F&psig=AOvVaw1pIEekqvj5GTJQqjN44dmH&ust=1701579228789000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMiz1d3674IDFQAAAAAdAAAAABAE',
    },
    {
      id: 3,
      brand: 'Ford',
      model: 'Fusion',
      year: 2023,
      rentalPrice: 60,
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cars.com%2Fresearch%2Ftoyota-camry-2021%2F&psig=AOvVaw1pIEekqvj5GTJQqjN44dmH&ust=1701579228789000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMiz1d3674IDFQAAAAAdAAAAABAE',
    },
    
  ];
}
