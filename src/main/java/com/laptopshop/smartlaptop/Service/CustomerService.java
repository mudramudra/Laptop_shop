package com.laptopshop.smartlaptop.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptopshop.smartlaptop.Repository.CustomerRepository;
import com.laptopshop.smartlaptop.model.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;

	public Customer addCustomer(Customer customer) {
		return customerRepository.save(customer);
	}
}
