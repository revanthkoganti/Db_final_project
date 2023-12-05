package com.uga.carRental.entity;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="booking")
public class Booking {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingId;
	
	private Date pickupDate;
	private Date returnDate;
	private String bookingStatus;
	
    @ManyToOne(targetEntity = CarRentalInsurance.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "insurance_code")
    private CarRentalInsurance carRentalInsurance;
    
    @ManyToOne(targetEntity = Car.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "registration_no")
    private Car car;
    
    @ManyToOne(targetEntity = Customer.class, fetch = FetchType.LAZY)
    @JoinColumn(name = "license_number")
    private Customer customer;
    private double totalAmount;
    private Date paymentDate;
}
