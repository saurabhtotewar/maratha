package com.eagle.Marathavaduvar.controller;



import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eagle.Marathavaduvar.utill.URLMapper;
import com.eagle.Marathavaduvar.input.MarathaRegistrationRequest;
import com.eagle.Marathavaduvar.utill.Viewmapper;


import com.eagle.Marathavaduvar.services.MarathaRegServicesImpl;

@Controller
public class FrantController {
	
	 
	@Autowired
	MarathaRegServicesImpl marathaRegServicesImpl;
	
	 //Save the uploaded file to this folder
    private static String UPLOADED_FOLDER = "c://test//";

	
	public static final String REGISTRATION_MODEL = "request";


	@PostMapping("/requestReg")
	@ResponseStatus(value = HttpStatus.OK)
	public @ResponseBody String personReg(@ModelAttribute(REGISTRATION_MODEL)@Valid MarathaRegistrationRequest request,
            RedirectAttributes redirectAttributes) throws Exception 
	{
		
		 boolean flag = false;
		 
		System.out.println(request);
        if (request.getPhoto().isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            return Viewmapper.REGISTER;
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = request.getPhoto().getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + request.getPhoto().getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + request.getPhoto().getOriginalFilename() + "'");
            
    		
    		flag = marathaRegServicesImpl.savePerson(request, UPLOADED_FOLDER + request.getPhoto().getOriginalFilename());
    		
    		
        } catch (IOException e) {
            e.printStackTrace();
        }
        return Viewmapper.REGISTER;
	}
	

	
	@GetMapping("/personmatches")
	public String bdmdatabaseReport(Model model) throws Exception {
		
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		  model.addAttribute("request",marathaRegServicesImpl.getAll() );
			
		  return Viewmapper.PERSONMATCHES;
		
		
	}

	
	@GetMapping(URLMapper.REGISTER)
	public String registerForm(@ModelAttribute MarathaRegistrationRequest request, Model model) {
		
		System.out.println("rec_reg");
		model.addAttribute(REGISTRATION_MODEL, new MarathaRegistrationRequest());
		return Viewmapper.REGISTER;
	}
	
	
}
