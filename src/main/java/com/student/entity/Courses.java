package com.student.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="COURSES")
public class Courses {
	
	
	@Id
	@Column(name="COURSE_ID")
	private Integer courseId;
	@Column(name="COURSE_NAME")
	private String courseName;


}
