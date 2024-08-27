package com.student.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.student.entity.Gender;

public interface GenderRepository extends JpaRepository<Gender, Serializable> {

}
