package com.eagle.Marathavaduvar.AOP;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.InternetAddress;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.eagle.Marathavaduvar.bussinessObject.Email;
import com.eagle.Marathavaduvar.entity.MarathaRegistration;
import com.eagle.Marathavaduvar.input.MarathaRegistrationRequest;
import com.eagle.Marathavaduvar.Repository.MarathaRegRepository;
import com.eagle.Marathavaduvar.services.EmailServices;
import com.eagle.Marathavaduvar.utill.EmailTemplate;



@Aspect
@Component
public class SideRegEmailNotify extends MainAopClass {

	
	
	
	@Autowired
	EmailServices emailService;

	@Autowired
	MarathaRegRepository marathaRegRepository;

	@Around("RecRegpointcut()")
	public Object cadRegCheck(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("check reg");
		Object obj[] = pjp.getArgs();
		String email = ((MarathaRegistrationRequest) obj[0]).getEmail();

		MarathaRegistration recruiter = marathaRegRepository.findByEmail(email);
		if (!(recruiter == null)) {
			System.out.println(recruiter.getFirstName());
			throw new Exception("Mobile Number or Email id already registered"); 
		}
		System.out.println("Send mail "); 
		boolean flag = (boolean) pjp.proceed();

		try {
			InternetAddress ia = new InternetAddress();
			ia.setAddress("registration@marathavadhuvar.com");

			String to = email;
			String subject = "Welcome to Marathavadhuvar";

			EmailTemplate template = new EmailTemplate("templates/registrationLogin.txt");
			// template.setTemplate(CustomerEmailMessage.MSG);

			Map<String, String> replacements = new HashMap<String, String>();
			replacements.put("${username}", ((MarathaRegistrationRequest) obj[0]).getConfirm());
			replacements.put("${password}", ((MarathaRegistrationRequest) obj[0]).getPassword());
			replacements.put("${name}", ((MarathaRegistrationRequest) obj[0]).getName());
			
			String message = template.getHtmlTemplate(replacements);

			Email email1 = new Email(ia, to, subject, message);
			email1.setHtml(true);
			emailService.send(email1);
		} catch (Throwable th) {
			System.out.println("sorry email cant be sent");
		}

		return flag;
	}

}
