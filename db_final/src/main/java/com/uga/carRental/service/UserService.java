package com.uga.carRental.service;

import org.springframework.http.ResponseEntity;

import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;

import jakarta.validation.Valid;

public interface UserService {

	ResponseEntity<?> signIn(@Valid LoginRequest request);

	ResponseEntity<?> register(@Valid Customer customer);

}
