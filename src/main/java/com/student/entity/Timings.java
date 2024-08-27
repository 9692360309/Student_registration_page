package com.student.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Timings {
	
	@Id
	@Column(name="TIMING_ID")
	private Integer timingId;
	@Column(name="TIMING_NAME")
	private String timingName;


}
