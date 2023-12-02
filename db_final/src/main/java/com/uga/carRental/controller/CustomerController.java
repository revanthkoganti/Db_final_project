package com.uga.carRental.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uga.carRental.entity.Booking;
import com.uga.carRental.entity.Car;
import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;
import com.uga.carRental.response.CategoryResponse;
import com.uga.carRental.response.FilterResponse;
import com.uga.carRental.response.InsuranceResponse;
import com.uga.carRental.response.Response;
import com.uga.carRental.entity.CarSearchFilter;
import com.uga.carRental.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@RestController
public class CustomerController {

	@Autowired
	UserService userService;


	@GetMapping("/api")
	public String healthCheck() {
		System.out.println("Health check API");
		return "Up and running";
	}

	@PostMapping("/login")
	public Response signIn(@Valid @RequestBody LoginRequest request){

		return userService.signIn(request);


	}

	@PostMapping("/register")
	public Response register(@Valid @RequestBody Customer customer){
		return userService.register(customer);

	}
    @PostMapping("/search")
    public FilterResponse searchAndFilterCars(@RequestBody CarSearchFilter searchFilter) {

    	FilterResponse filteredCars = userService.searchAndFilterCars(searchFilter);

        return filteredCars;
    }
    @GetMapping("/insurance")
    public InsuranceResponse getAllInsurance(HttpServletRequest request) {

    	InsuranceResponse insuranceResponse = userService.getAllInsurance();

        return insuranceResponse;
    }
    @GetMapping("/category")
    public CategoryResponse getAllCategory(HttpServletRequest request) {

    	CategoryResponse categoryResponse = userService.getAllCategory();

        return categoryResponse;
        
    }@PostMapping("/booking")
    public Response addBooking(@RequestBody Booking booking) {
        try {
  
            Response savedBooking = userService.addBooking(booking);
            
            return savedBooking;
        } catch (Exception e) {
        	Response response = new Response();
        	response.setMessage("Failed to add booking: " + e.getMessage());
        	response.setStatus(Boolean.FALSE);
            return response;
        }
    }
}
