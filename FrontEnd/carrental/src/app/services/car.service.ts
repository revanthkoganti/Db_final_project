import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CarService {

  constructor() { }
  selectedcar:any;
  searchreq:any;
  licenseNumber:any;
}
