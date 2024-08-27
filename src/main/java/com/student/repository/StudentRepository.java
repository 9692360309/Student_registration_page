package com.student.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.student.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Serializable>{

	List<Student> findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(String name, String email);
	

}
