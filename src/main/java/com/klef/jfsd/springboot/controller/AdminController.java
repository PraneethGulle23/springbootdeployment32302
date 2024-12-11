package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    // This method is used to display the admin login page.
    @GetMapping("/adminlogin")
    public String adminLogin() {
        return "adminlogin";  // This should map to the adminlogin.jsp page
    }

    // This method processes the login form submission
    @PostMapping("/adminlogin")
    public String handleAdminLogin(@RequestParam("username") String username, 
                                    @RequestParam("password") String password, 
                                    Model model) {
        // Fetch the admin from the database
        Admin admin = adminRepository.findByUsername(username);

        // Check if the admin exists and the password matches
        if (admin != null && admin.getPassword().equals(password)) {
            // If login is successful, redirect to the admin home page
            return "redirect:/admin";  // Redirect to /admin URL which will map to admin.jsp
        } else {
            // If login fails, stay on the login page and show an error message
            model.addAttribute("errorMessage", "Invalid username or password!");
            return "adminlogin";  // Stay on the adminlogin.jsp page
        }
    }

    // This method is used to display the admin home page after successful login.
    @GetMapping("/admin")
    public String showAdminHomePage() {
        return "admin";  // This should map to admin.jsp page
    }
}
