package com.uga.carRental.entity;

import java.sql.Date;
import java.time.LocalDate;

import lombok.Data;

@Data
public class CarSearchFilter {
    private Date pickupDate;
    private Date returnDate;
    private String location;
    private int categoryId;
}