package com.student.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.student.entity.Timings;

public interface TimingsRepository extends JpaRepository<Timings, Serializable> {

}
