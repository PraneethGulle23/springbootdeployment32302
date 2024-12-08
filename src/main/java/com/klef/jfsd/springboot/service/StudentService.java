package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;

@Service
public interface StudentService 
{
	public Student validateStudentLogin(String email,String password);
	public String studentRegistration(Student student);
}