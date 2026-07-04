package com.laptopshop.smartlaptop.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.laptopshop.smartlaptop.Repository.CustomerRepository;
import com.laptopshop.smartlaptop.model.Customer;

@Controller
public class ApplicationController {

	@GetMapping("/")
	public String openindexpage() {
		return "index";
	}

	@GetMapping("/login-page")
	public String showLoginPage() {
		return "login";
	}

	@GetMapping("/registration-page")
	public String showRegistrationpage() {
		return "registration";
	}
	@GetMapping("/Home")
	public String showHomePage() {
		return "home";
	}
}
