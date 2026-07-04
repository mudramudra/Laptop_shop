package com.laptopshop.smartlaptop.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.laptopshop.smartlaptop.model.Laptop;

@Repository
public interface LaptopRepository extends JpaRepository<Laptop, Integer> {
	Laptop findById(int id);

    List<Laptop> findByBrand(String brand);

}
