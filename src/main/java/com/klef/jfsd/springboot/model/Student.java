package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_id")
	private int id;
	@Column(name = "student_firstname",nullable = false,length = 100)
	private String firstname;
	@Column(name = "student_lastname",length = 100)
	private String lastname;
	@Column(name = "student_email",nullable = false,unique = true,length = 100)
	private String email;
	@Column(name = "student_password",nullable = false,length = 20)
	private String password;
	@Column(name = "student_contact",nullable = false,unique = true,length = 20)
	private String contact;
	@Column(name = "student_degree",nullable = false)
	private String degree;
	@Column(name = "student_college",nullable = false)
	private String college;
	@Column(name = "student_city",nullable = false)
	private String city;
	@Column(name = "student_country",nullable = false)
	private String country;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
}