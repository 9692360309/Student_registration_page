package com.student.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.student.entity.Courses;

public interface CoursesRepository extends JpaRepository<Courses, Serializable> {

}
