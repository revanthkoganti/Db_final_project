package com.uga.carRental.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="car_rental_insurance")
public class CarRentalInsurance {
	@Id
	private String insuranceCode;
	private String coverageType;
	private String insuranceName;
	private int insuranceCostPerDay;
		
}
