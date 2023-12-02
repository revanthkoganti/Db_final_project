package com.uga.carRental.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="location")
public class Location {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int locationId;
	private String name;
	private String street;
	private String city;
	private String state;
	private int zipcode;
	
}
