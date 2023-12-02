package com.uga.carRental.entity;

import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;
@Data
public class CarResponse {
	@Id
	private String registrationNo;
	
	private String brand;
	private String model;
	private String mileage;
    private String carImage;
    
    private int carCategoryId;
    private String carCategoryName;
    private int noOfPersons;
    private double costPerDay; 
    
	private int locationId;
	private String name;
	private String street;
	private String city;
	private String state;
	private int zipcode;
    

}
