package com.uga.carRental.service;

import java.util.List;

import com.uga.carRental.entity.Booking;
import com.uga.carRental.entity.Car;
import com.uga.carRental.entity.CarSearchFilter;
import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;
import com.uga.carRental.response.FilterResponse;
import com.uga.carRental.response.InsuranceResponse;
import com.uga.carRental.response.Response;

import jakarta.validation.Valid;

public interface UserService {

	Response signIn(@Valid LoginRequest request);

	Response register(@Valid Customer customer);
	
	FilterResponse searchAndFilterCars(CarSearchFilter searchFilter); 
	
	Response addBooking(Booking booking);
	
	InsuranceResponse getAllInsurance();
}
