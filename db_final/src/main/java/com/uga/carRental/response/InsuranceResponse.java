package com.uga.carRental.response;

import java.util.List;

import com.uga.carRental.entity.CarRentalInsurance;

import lombok.Data;
@Data
public class InsuranceResponse {
	private String status ;
	private List<CarRentalInsurance> carRentalInsurance;
}


