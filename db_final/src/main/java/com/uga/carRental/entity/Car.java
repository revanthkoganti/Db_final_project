package com.uga.carRental.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="car")
@Data
public class Car {
	
	@Id
	private String registrationNo;
	
	private String brand;
	private String model;
	private String mileage;
    @ManyToOne(targetEntity = CarCategory.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private CarCategory carCategory;

    @ManyToOne(targetEntity = Location.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "location_id")
    private Location location;
    
    private String carImage;
}
