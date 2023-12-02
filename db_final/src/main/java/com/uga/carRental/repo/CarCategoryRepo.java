package com.uga.carRental.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uga.carRental.entity.CarCategory;

public interface CarCategoryRepo extends JpaRepository<CarCategory, String>{

}
