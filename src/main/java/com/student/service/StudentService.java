package com.student.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.entity.Courses;
import com.student.entity.Gender;
import com.student.entity.Student;
import com.student.entity.Timings;
import com.student.repository.CoursesRepository;
import com.student.repository.GenderRepository;
import com.student.repository.StudentRepository;
import com.student.repository.TimingsRepository;

@Service
public class StudentService {
	
	
	@Autowired
	private GenderRepository genderRepo;
	@Autowired
	private CoursesRepository coursesRepo;
	@Autowired
	private TimingsRepository timingsRepo;
	
	
	@Autowired
	private StudentRepository studentRepo;
	
	
	
	public List<String> getGender(){
		List<Gender> findAll = genderRepo.findAll();
		
		List<String> genders = new ArrayList<>();
		
		findAll.forEach(gender->{
			genders.add(gender.getGenderName());
		});
		
		return genders;
	}
	
	public List<String> getCourses(){
		List<Courses> findAll = coursesRepo.findAll();
		
		List<String> courses = new ArrayList<>();
		
		findAll.forEach(course->{
			courses.add(course.getCourseName());
		});
		
		return courses;
	}
	
	public List<String> getTimings(){
		List<Timings> findAll = timingsRepo.findAll();
		
		List<String> timings = new ArrayList<>();
		
		findAll.forEach(timing->{
			timings.add(timing.getTimingName());
		});
		
		return timings;
	}
	
	public Student saveStudent(Student student) {
        return studentRepo.save(student);
    }
	
	 public List<Student> searchStudents(String search) {
	        return studentRepo.findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(search, search);
	    }
	 
	 public List<Student> findAllStudents() {
	        return studentRepo.findAll();
	    }
	
	

}
