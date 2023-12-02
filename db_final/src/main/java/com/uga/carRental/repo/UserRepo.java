package com.uga.carRental.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uga.carRental.entity.Customer;

public interface UserRepo extends JpaRepository<Customer, String>{

	Customer findByEmail(String email);


}
