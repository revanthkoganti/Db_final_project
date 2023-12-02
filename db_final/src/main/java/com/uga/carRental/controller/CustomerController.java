package com.uga.carRental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;
import com.uga.carRental.service.UserService;

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
	public ResponseEntity<?> signIn(@Valid @RequestBody LoginRequest request){

		return userService.signIn(request);


	}

	@PostMapping("/register")
	public ResponseEntity<?>register(@Valid @RequestBody Customer customer){
		return userService.register(customer);

	}
}
