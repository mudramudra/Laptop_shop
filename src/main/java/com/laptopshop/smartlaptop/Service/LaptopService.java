package com.laptopshop.smartlaptop.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptopshop.smartlaptop.Repository.LaptopRepository;
import com.laptopshop.smartlaptop.model.Laptop;

@Service
public class LaptopService {
	@Autowired
    private LaptopRepository laptopRepository;

    public Laptop addLaptop(Laptop laptop) {
        return laptopRepository.save(laptop);
    }
}
