package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.entity.Student;
import com.student.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@GetMapping("/load")
	public String loadForm(Model model) {

		model.addAttribute("genders", studentService.getGender());
		model.addAttribute("courses", studentService.getCourses());
		model.addAttribute("timings", studentService.getTimings());

		Student sobj = new Student();

		model.addAttribute("student", sobj);

		return "index";
	}

	@PostMapping("/saveStudents")
	public String saveStudent(Student student, Model model) {

		Student students = new Student();
		students.setName(student.getName());
		students.setEmail(student.getEmail());
		students.setPhone(student.getPhone());
		students.setGender(student.getGender());
		students.setCourse(student.getCourse());
		students.setTimings(student.getTimings());
		// Save the entity using service
		studentService.saveStudent(student);
		model.addAttribute("msg", "student data  saved successfully in data base");
		return "dashBoard";

	}
	
	@GetMapping("/viewStudents")
    public String viewStudents(@RequestParam(value = "search", required = false) String search, Model model) {
        List<Student> students;
        if (search != null && !search.trim().isEmpty()) {
            students = studentService.searchStudents(search);
        } else {
            students = studentService.findAllStudents();
        }
        model.addAttribute("students", students);
        return "viewStudent";
    }

}
