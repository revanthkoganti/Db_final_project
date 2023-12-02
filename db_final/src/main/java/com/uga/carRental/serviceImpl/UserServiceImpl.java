package com.uga.carRental.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;
import com.uga.carRental.repo.UserRepo;
import com.uga.carRental.service.UserService;

import jakarta.validation.Valid;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserRepo repo;

	@Override
	public ResponseEntity<?> signIn(@Valid LoginRequest request) {
		String email = request.getEmail();
		String password = request.getPassword();
		Customer customer = repo.findByEmail(email);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		String encryptedPassword = encoder.encode(password);
		boolean passwordMatcher = encoder.matches(password, customer.getPassword());
	
		if ((customer.getEmail().toString().equals(email)) && passwordMatcher) {
			return new ResponseEntity<>("UserLogged in Successfully", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("User login Failed", HttpStatus.BAD_REQUEST);
		}
	}

	@Override
	public ResponseEntity<?> register(@Valid Customer customer) {

		Customer customerData = repo.findByEmail(customer.getEmail());
		if (customerData == null) {
			
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String encryptedPassword = encoder.encode(customer.getPassword());
			customer.setPassword(encryptedPassword);
			
			repo.save(customer);
			return new ResponseEntity<>("User registered successfully", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("User registration failed", HttpStatus.BAD_REQUEST);
		}

	}

}
