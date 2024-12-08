package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public ModelAndView loginSelectionPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login_selection_page");
        return mv;
    }

    @GetMapping("/home")
    public ModelAndView home(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");
        if (loggedInStudent != null) {
            mv.addObject("student", loggedInStudent);
            mv.setViewName("home");
        } else {
            mv.addObject("error", "Please log in to access the home page.");
            mv.setViewName("redirect:/studentlogin");
        }
        return mv;
    }

    @GetMapping("/dashboard")
    public ModelAndView studentDashboard(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");
        if (loggedInStudent != null) {
            mv.addObject("student", loggedInStudent);
            mv.setViewName("studentdashboard");
        } else {
            mv.setViewName("redirect:/studentlogin");
        }
        return mv;
    }

    @GetMapping("/academic-activities")
    public ModelAndView studentActivities(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");
        if (loggedInStudent != null) {
            mv.addObject("student", loggedInStudent);
            mv.setViewName("MyActivities");
        } else {
            mv.setViewName("redirect:/studentlogin");
        }
        return mv;
    }

    @GetMapping("/project")
    public ModelAndView studentProjects(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");

        if (loggedInStudent != null) {
            mv.addObject("student", loggedInStudent);
            mv.setViewName("myprojects");  // Correct view name
        } else {
            mv.setViewName("redirect:/studentlogin");
        }

        return mv;
    }

    @GetMapping("/job-opportunities")
    public ModelAndView jobOpportunities(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");

        if (loggedInStudent != null) {
            mv.addObject("student", loggedInStudent);
            mv.setViewName("JobOpportunities"); // New JSP for job opportunities
        } else {
            mv.setViewName("redirect:/studentlogin");
        }

        return mv;
    }

    @GetMapping("/studentreg")
    public ModelAndView studentReg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @GetMapping("/studentlogin")
    public ModelAndView studentLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }

    @PostMapping("/insertstudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        String firstname = request.getParameter("sfirstname");
        String lastname = request.getParameter("slastname");
        String email = request.getParameter("semail");
        String password = request.getParameter("spassword");
        String contact = request.getParameter("scontact");
        String degree = request.getParameter("sdegree");
        String college = request.getParameter("scollege");
        String city = request.getParameter("scity");
        String country = request.getParameter("scountry");

        Student student = new Student();
        student.setFirstname(firstname);
        student.setLastname(lastname);
        student.setEmail(email);
        student.setPassword(password);
        student.setContact(contact);
        student.setDegree(degree);
        student.setCollege(college);
        student.setCity(city);
        student.setCountry(country);

        String message = studentService.studentRegistration(student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);

        return mv;
    }

    @PostMapping("/checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request, HttpSession session) {
        String email = request.getParameter("semail");
        String password = request.getParameter("spassword");

        Student student = studentService.validateStudentLogin(email, password);

        ModelAndView mv = new ModelAndView();
        if (student != null) {
            session.setAttribute("loggedInStudent", student);
            mv.setViewName("redirect:/home");
        } else {
            mv.setViewName("studentlogin");
            mv.addObject("error", "Invalid email or password. Please try again.");
        }

        return mv;
    }
}