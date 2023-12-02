package com.uga.carRental.serviceImpl;

import java.util.List;
import java.util.stream.Collectors;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.uga.carRental.entity.Booking;
import com.uga.carRental.entity.Car;
import com.uga.carRental.entity.CarResponse;
import com.uga.carRental.entity.CarSearchFilter;
import com.uga.carRental.entity.Customer;
import com.uga.carRental.entity.LoginRequest;
import com.uga.carRental.response.Response;
import com.uga.carRental.response.CategoryResponse;
import com.uga.carRental.response.FilterResponse;
import com.uga.carRental.response.InsuranceResponse;
import com.uga.carRental.repo.BookingRepo;
import com.uga.carRental.repo.CarCategoryRepo;
import com.uga.carRental.repo.CarRentalInsuranceRepo;
import com.uga.carRental.repo.CarRepo;
import com.uga.carRental.repo.UserRepo;
import com.uga.carRental.service.UserService;

import jakarta.validation.Valid;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserRepo userRepo;

	@Autowired
	CarRepo carRepo;
	
	@Autowired
	BookingRepo bookingRepo;
	
	@Autowired
	CarRentalInsuranceRepo carRentalInsuranceRepo;
	
	@Autowired
	CarCategoryRepo carCategoryRepo;
	
	@Override
	public Response signIn(@Valid LoginRequest request) {
		String email = request.getEmail();
		String password = request.getPassword();
		Customer customer = userRepo.findByEmail(email);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		String encryptedPassword = encoder.encode(password);
		boolean passwordMatcher = encoder.matches(password, customer.getPassword());
		Response response = new Response();
		if ((customer.getEmail().toString().equals(email)) && passwordMatcher) {
			response.setMessage("Login Successful");
			response.setStatus(Boolean.TRUE);
			response.setLicenseNumber(customer.getLicenseNumber());
			return response;
		} else {
			response.setMessage("Login failed");
			response.setStatus(Boolean.FALSE);
			return response;
		}
	}

	@Override
	public Response register(@Valid Customer customer) {

		Customer customerData = userRepo.findByEmail(customer.getEmail());
		Response response = new Response();
		if (customerData == null) {
			
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String encryptedPassword = encoder.encode(customer.getPassword());
			customer.setPassword(encryptedPassword);
			
			userRepo.save(customer);
			response.setMessage("User registered successfully");
			response.setStatus(Boolean.TRUE);
			return response;
		} else {
			response.setMessage("User registration failed");
			response.setStatus(Boolean.FALSE);
			return response;
		}
	}
	public FilterResponse searchAndFilterCars(CarSearchFilter searchFilter) {
	    List<Car> allCars = carRepo.findAll();

	    List<Car> filteredCars = allCars.stream()
	            .filter(car -> car.getLocation().getCity().equals(searchFilter.getLocation()))
	            .filter(car -> car.getCarCategory().getCategoryId() == searchFilter.getCategoryId())
	            .filter(car -> {
	                return bookingRepo.findByAvailability(
	                        car.getRegistrationNo(),
	                        searchFilter.getPickupDate(),
	                        searchFilter.getReturnDate()
	                ).isEmpty();
	            })
	            .collect(Collectors.toList());
	    FilterResponse response = new FilterResponse(); 
        List<CarResponse> cars = new ArrayList<>();
	    for(Car car:filteredCars){ 
	    	CarResponse carResponse = new CarResponse();  
	    	
	    	carResponse.setRegistrationNo(car.getRegistrationNo());
	    	carResponse.setBrand(car.getBrand());
	    	carResponse.setMileage(car.getMileage());
	    	carResponse.setModel(car.getModel());
	    	carResponse.setCarImage(car.getCarImage());
	    	
	    	carResponse.setCarCategoryId(car.getCarCategory().getCategoryId());
	    	carResponse.setCarCategoryName(car.getCarCategory().getCategoryName());
	    	carResponse.setNoOfPersons(car.getCarCategory().getNoOfPersons());
	    	carResponse.setCostPerDay(car.getCarCategory().getCostPerDay());
	    	
	    	carResponse.setLocationId(car.getLocation().getLocationId());
	    	carResponse.setName(car.getLocation().getName());
	    	carResponse.setStreet(car.getLocation().getStreet());
	    	carResponse.setCity(car.getLocation().getCity());
	    	carResponse.setState(car.getLocation().getState());
	    	carResponse.setZipcode(car.getLocation().getZipcode());
	    	
	    	cars.add(carResponse);
  	
	    }
	    
	    response.setCars(cars);
	    response.setStatus("Success");
	    return response;
	}

	public Response addBooking(Booking booking) {
		Response response = new Response();
		response.setStatus(Boolean.TRUE);
		response.setMessage("Booking added successfully with ID: " + booking.getBookingId());
		return response;
		
	}
	public InsuranceResponse getAllInsurance() {
		InsuranceResponse response = new InsuranceResponse();
		response.setCarRentalInsurance(carRentalInsuranceRepo.findAll());
		response.setStatus("Success");

		return response;
	}
	public CategoryResponse getAllCategory() {
		CategoryResponse response = new CategoryResponse();
		response.setCarCategory(carCategoryRepo.findAll());
		response.setStatus("Success");

		return response;
	}
}
