package com.uga.carRental.repo;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.uga.carRental.entity.Booking;

public interface BookingRepo extends JpaRepository<Booking, Integer> {
	@Query(value = "SELECT * FROM booking b WHERE b.registration_no = ?1 and b.pickup_date = ?2 and b.return_date = ?3", nativeQuery = true)
	List<Booking> findByAvailability(String registrationNo, Date pickupDate, Date returnDate);

}

