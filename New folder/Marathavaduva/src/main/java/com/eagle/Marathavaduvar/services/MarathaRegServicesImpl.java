 package com.eagle.Marathavaduvar.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eagle.Marathavaduvar.Repository.MarathaLoginRepository;
import com.eagle.Marathavaduvar.Repository.MarathaRegRepository;
import com.eagle.Marathavaduvar.entity.MarathaRegistration;
import com.eagle.Marathavaduvar.entity.MarathaUserlogin;
import com.eagle.Marathavaduvar.input.MarathaRegistrationRequest;


@Service
public class MarathaRegServicesImpl {
	
@Autowired
MarathaRegRepository marathaRepository;

@Autowired
MarathaLoginRepository marathaLoginRepository;

@Transactional
public boolean savePerson(MarathaRegistrationRequest RegistrationRequest, String path) throws Exception {
	
		
	boolean flag = false;
		   MarathaRegistration mRegistrationRequest = new MarathaRegistration();
		   
		 
		   mRegistrationRequest.setFirstName(RegistrationRequest.getName());
		   mRegistrationRequest.setLastName(RegistrationRequest.getLastName());
		   mRegistrationRequest.setDob(RegistrationRequest.getDob());
		   mRegistrationRequest.setCaste(RegistrationRequest.getCaste());
		   mRegistrationRequest.setSubCaste(RegistrationRequest.getSubCaste());
		   mRegistrationRequest.setGender(RegistrationRequest.getGender());
		   mRegistrationRequest.setMaritalStatus(RegistrationRequest.getMaritalStatus());
	
		   mRegistrationRequest.setProfileCreatedBy(RegistrationRequest.getProfileCreatedBy());
		   mRegistrationRequest.setEmail(RegistrationRequest.getEmail());
		   mRegistrationRequest.setMobile(RegistrationRequest.getMobile());
		   mRegistrationRequest.setPhone(RegistrationRequest.getPhone());
		   mRegistrationRequest.setGothra(RegistrationRequest.getGothra());
		   mRegistrationRequest.setHorosMatch(RegistrationRequest.getHorosMatch());
		   mRegistrationRequest.setMoonsign(RegistrationRequest.getMoonsign());
		   mRegistrationRequest.setBirthPlace(RegistrationRequest.getBirthPlace());
		   mRegistrationRequest.setBirthTime(RegistrationRequest.getBirthTime());
		   mRegistrationRequest.setHeight(RegistrationRequest.getHeigth());
		   mRegistrationRequest.setBloodGroup(RegistrationRequest.getBloodGroup());
		   mRegistrationRequest.setComplexion(RegistrationRequest.getComplexion());
		   mRegistrationRequest.setPhysicallychallenged(RegistrationRequest.getPhysicalStatus());
		   mRegistrationRequest.setPhoto(path);
		   mRegistrationRequest.setEducationalArea(RegistrationRequest.getEducationalArea());
		   mRegistrationRequest.setEducation(RegistrationRequest.getEducation());
		   mRegistrationRequest.setOccupation(RegistrationRequest.getOccupation());
		   mRegistrationRequest.setEducationCity(RegistrationRequest.getEducationCity());
		   mRegistrationRequest.setPreferredCity(RegistrationRequest.getPreferredCity());
		   mRegistrationRequest.setIncome(RegistrationRequest.getManglikExp());
		   mRegistrationRequest.setManglikExp(RegistrationRequest.getManglikExp());
		   mRegistrationRequest.setHeightExp(RegistrationRequest.getHeightExp());
		   mRegistrationRequest.setEducationExp(RegistrationRequest.getEducationExp());
		   mRegistrationRequest.setOccupationExp(RegistrationRequest.getOccupationExp());
		   mRegistrationRequest.setAccept(RegistrationRequest.getAccept());
		 
			
			MarathaUserlogin 	marathaUserlogin = new MarathaUserlogin();
	
			marathaUserlogin.setUsername(RegistrationRequest.getConfirm());
			marathaUserlogin.setPassword(RegistrationRequest.getPassword());
			marathaUserlogin.setEnabled(true);
			marathaUserlogin.setRole("person");
			
			try {
				marathaRepository.save(mRegistrationRequest);
				marathaLoginRepository.save(marathaUserlogin);
			} catch (Exception e) {
				e.printStackTrace();
				flag = false;
			}

			return flag; 
		 
	
}




public List<MarathaRegistration> getAll()
{
	
	List<MarathaRegistration> li=marathaRepository.findAll();
	System.out.println(li);
	return li;
	

}
public MarathaRegRepository getMarathaRepository() {
	return marathaRepository;
}

public void setMarathaRepository(MarathaRegRepository marathaRepository) {
	this.marathaRepository = marathaRepository;
}


}
