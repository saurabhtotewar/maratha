package com.eagle.Marathavaduvar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

@Configuration
@ComponentScan("com.eagle.Marathavaduvar")
@EnableAsync
@SpringBootApplication
public class MarathavaduvaApplication extends SpringBootServletInitializer {

	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(MarathavaduvaApplication.class);
    }
	
	public static void main(String[] args) {
		SpringApplication.run(MarathavaduvaApplication.class, args);
	}
}
