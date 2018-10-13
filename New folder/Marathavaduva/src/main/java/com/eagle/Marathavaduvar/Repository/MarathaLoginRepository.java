package com.eagle.Marathavaduvar.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eagle.Marathavaduvar.entity.MarathaUserlogin;


public interface MarathaLoginRepository extends JpaRepository<MarathaUserlogin, Long> {
	List<MarathaUserlogin> findByUserName(String name);
	MarathaUserlogin findByUserNameIgnoreCase(String username);
}
