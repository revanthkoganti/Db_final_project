package com.uga.carRental.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uga.carRental.entity.Location;

public interface LocationRepo extends JpaRepository<Location, String>{

}
