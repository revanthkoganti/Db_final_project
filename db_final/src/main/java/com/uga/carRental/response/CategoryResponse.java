package com.uga.carRental.response;

import java.util.List;

import com.uga.carRental.entity.CarCategory;

import lombok.Data;
@Data
public class CategoryResponse {
	private String status;
	private List<CarCategory> carCategory;
}
