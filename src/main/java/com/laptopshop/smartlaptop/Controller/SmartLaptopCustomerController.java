package com.laptopshop.smartlaptop.Controller;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.laptopshop.smartlaptop.Repository.CustomerRepository;
import com.laptopshop.smartlaptop.Repository.LaptopRepository;
import com.laptopshop.smartlaptop.Service.CustomerService;
import com.laptopshop.smartlaptop.model.Customer;
import com.laptopshop.smartlaptop.model.Laptop;

import ch.qos.logback.core.model.Model;

import jakarta.servlet.http.HttpSession;

@Controller
public class SmartLaptopCustomerController {
	@Autowired
	private CustomerService customerService;

	@PostMapping("/registration")
	public String checkregistration(@ModelAttribute Customer customer) {
		System.out.println("Customer Registration Details");
		System.out.println("Name      : " + customer.getName());
		System.out.println("Email     : " + customer.getEmail());
		System.out.println("Address   : " + customer.getAddress());
		System.out.println("Phone No  : " + customer.getPhone());
		System.out.println("Password  : " + customer.getPassword());
		System.out.println(customer);
		customerService.addCustomer(customer);
		return "registrationsuccessful";
	}
	@Autowired
	private CustomerRepository customerRepository;
	
	@PostMapping("/login")
	public String login(@RequestParam String email,
	                    @RequestParam String password,
	                    HttpSession session) {

	    Customer customer =
	            customerRepository.findByEmailAndPassword(email, password);

	    if (customer != null) {

	        session.setAttribute("customerName", customer.getName());

	        return "allcomputerinfo";
	    }

	    return "login";
	}
	
	@GetMapping("/all-computerinfo")
    public String computerPage() {
        return "allcomputerinfo";
    }

    @GetMapping("/logout")
    public String logout() {
        return "index";
    }
    
    

    @GetMapping("/cart")
    public String cartPage(HttpSession session, Map<String, Object> map) {

        List<Laptop> cartItems =
                (List<Laptop>) session.getAttribute("cartItems");

        map.put("cartItems", cartItems);

        return "cart";
    }
    
    @Autowired
    private LaptopRepository laptopRepository;
    
    @PostMapping("/addtocart")
    public String addToCart(@RequestParam int id,
                            HttpSession session) {

        Laptop laptop  = laptopRepository.findById(id);

        List<Laptop> cartItems =
                (List<Laptop>) session.getAttribute("cartItems");

        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        cartItems.add(laptop);

        session.setAttribute("cartItems", cartItems);
        session.setAttribute("cartCount", cartItems.size());

        return "redirect:/allcomputerinfo";
    }
    @GetMapping("/laptop")
    public 	String openLaptopPage() {
    		return "laptop";
    }
}
