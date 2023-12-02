package com.uga.carRental.response;

import lombok.Data;

@Data
public class Response {
	private String message;
	private Boolean status;
	private String licenseNumber;
}
