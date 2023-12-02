package com.uga.carRental.response;

import java.util.List;

import com.uga.carRental.entity.CarResponse;

import lombok.Data;

@Data
public class FilterResponse {
	private String status ;
	private List<CarResponse> cars;
}

