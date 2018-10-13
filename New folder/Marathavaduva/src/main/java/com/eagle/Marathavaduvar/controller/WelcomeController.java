package com.eagle.Marathavaduvar.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.eagle.Marathavaduvar.utill.URLMapper;
import com.eagle.Marathavaduvar.utill.Viewmapper;

import com.eagle.Marathavaduvar.LoginSuccessHandler;




@Controller
public class WelcomeController {
	@Autowired
	LoginSuccessHandler sucessHandler;


	@Value("${application.message:Hello World}")
	private String message = "Hello World";
	
	
	@GetMapping(URLMapper.LOGIN)
	public String candidatelogin(Authentication authentication) {

		if (authentication != null) {
			String url = sucessHandler.determineTargetUrl(authentication);
			System.out.println(authentication.getAuthorities());
			return "redirect:" + url;
		} else {
			return Viewmapper.LOGIN;
		}

	}
	
	
	
	@GetMapping(URLMapper.HOME)
	public String loadHome() {
		return Viewmapper.HOME;
	}
	
	
	
	
	@GetMapping(URLMapper.CONTACT)
	public String Contact() {
		return Viewmapper.CONTACT;
	}
	
	
	
	@GetMapping(URLMapper.ABOUT)
	public String About() {
		return Viewmapper.ABOUT;
	}
	
	
	
	
	
	@GetMapping(URLMapper.FORGOT)
	public String Forgot() {
		return Viewmapper.FORGOT;
	}
	
	
	
	
	
}
