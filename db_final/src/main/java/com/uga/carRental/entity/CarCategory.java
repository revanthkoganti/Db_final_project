package com.uga.carRental.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="car_category")
@Data
public class CarCategory {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int categoryId;
	
	private String categoryName;
	private int noOfPersons;
	private double costPerDay;

}
