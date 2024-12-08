package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public String studentRegistration(Student student) {
        try {
            // Directly save the student details, including the plain-text password
            studentRepository.save(student);
            return "Student Registered Successfully";
        } catch (Exception e) {
            // Log the exception and return a friendly message
            System.err.println("Error during student registration: " + e.getMessage());
            return "Registration failed. Please try again.";
        }
    }

    @Override
    public Student validateStudentLogin(String email, String password) {
        Student student = studentRepository.findByEmail(email);
        if (student != null && student.getPassword().equals(password)) {
            return student;
        }
        return null;

    }
}
