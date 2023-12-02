package com.uga.carRental.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uga.carRental.entity.Car;

public interface CarRepo extends JpaRepository<Car, String>{

}
