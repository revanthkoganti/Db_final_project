package com.uga.carRental.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uga.carRental.entity.CarRentalInsurance;

public interface CarRentalInsuranceRepo extends JpaRepository<CarRentalInsurance, String>{

}
