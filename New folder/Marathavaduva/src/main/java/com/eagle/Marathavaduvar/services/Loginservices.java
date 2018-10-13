package com.eagle.Marathavaduvar.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eagle.Marathavaduvar.Repository.MarathaLoginRepository;

import com.eagle.Marathavaduvar.entity.MarathaUserlogin;

@Transactional
@Service
public class Loginservices implements LoginServicesImpl {

	
	@Autowired
	MarathaLoginRepository jpUserRepository;

	public MarathaUserlogin getUserByUsername(String username) {
		return jpUserRepository.findByUserNameIgnoreCase(username);
	}
}
