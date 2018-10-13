package com.eagle.Marathavaduvar.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eagle.Marathavaduvar.entity.MarathaRegistration;

public interface  MarathaRegRepository extends JpaRepository<MarathaRegistration,Long>
{
	
	List<MarathaRegistration> findByFirstName(String name);
	List<MarathaRegistration> findAll();
	MarathaRegistration findByEmail(String email);
	
	MarathaRegistration findByUserName(String username);

}

