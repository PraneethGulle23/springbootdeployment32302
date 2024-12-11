package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, String> {
    // You can use this method to find admin by username
    Admin findByUsername(String username);
}
