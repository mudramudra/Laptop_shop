package com.laptopshop.smartlaptop.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.laptopshop.smartlaptop.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	 Customer findByEmailAndPassword(String email, String password);

}
