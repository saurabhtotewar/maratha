package com.eagle.Marathavaduvar;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.eagle.Marathavaduvar.LoginSuccessHandler;
import com.eagle.Marathavaduvar.UserDetailServiceImpl;
import com.eagle.Marathavaduvar.utill.URLMapper;
import com.google.common.collect.ImmutableList;

@Configuration
@EnableWebSecurity
public class MarathaSecurityConfig {
	@Autowired
	UserDetailServiceImpl userDetailServiceImpl;

	@Autowired
	LoginSuccessHandler loginSuccessHandler;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailServiceImpl);
	}

	@Autowired
	DataSource datasource;

	
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**"); // #3
		web.ignoring().antMatchers("/css/*");
		web.ignoring().antMatchers("/fonts/*");
		web.ignoring().antMatchers("/assets1/**");
		web.ignoring().antMatchers("/images/*");
		web.ignoring().antMatchers("/js/*");
		web.ignoring().antMatchers("/jpg/*");
		web.ignoring().antMatchers("/img/*");
		web.ignoring().antMatchers("/*.jpg");
		web.ignoring().antMatchers("/*.png");
		web.ignoring().antMatchers("/*.js");
		web.ignoring().antMatchers("/*.css");
		web.ignoring().antMatchers("/*.ico");

		web.ignoring().antMatchers("/acss/*");
		web.ignoring().antMatchers("/afonts/*");
		web.ignoring().antMatchers("/ajs/*");

		// web.ignoring().antMatchers("/**");
	}


	protected void configure(HttpSecurity http) throws Exception {
	
		http.cors().and().csrf().disable().authorizeRequests()

				.antMatchers("/", URLMapper.HOME,URLMapper.ABOUT,URLMapper.CONTACT,URLMapper.REGMARATHA,URLMapper.REGISTER).permitAll()
						 
				

				.antMatchers("/person*").hasAuthority("perosn") // .access("hasRole('Person')") // can pass
																		// multiple roles

				.antMatchers("/admin*").hasAuthority("person") // .access("hasRole('admin')")

			
				.anyRequest().authenticated()

				.and()

				.formLogin()

				.loginPage("/login")

				.failureUrl("/login?error=true")

				.successHandler(loginSuccessHandler).permitAll().and().rememberMe().key("rem-me-key")
				.rememberMeParameter("remember-me-param").rememberMeCookieName("my-remember-me")
				.tokenValiditySeconds(172800);
	}


	@Bean
	public static NoOpPasswordEncoder passwordEncoder() {
	 return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
	}
	
	@Bean
	public CorsConfigurationSource corsConfigurationSource() {
		final CorsConfiguration configuration = new CorsConfiguration();
		configuration.setAllowedOrigins(ImmutableList.of("*"));
		configuration.setAllowedMethods(ImmutableList.of("HEAD", "GET", "POST", "PUT", "DELETE", "PATCH"));
		configuration.setAllowCredentials(true);
		configuration.setAllowedHeaders(ImmutableList.of("Authorization", "Cache-Control", "Content-Type"));
		final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		return source;
	}

	/*
	 * @Bean public PersistentTokenRepository tokenRepository() {
	 * JdbcTokenRepositoryImpl jdbcTokenRepositoryImpl=new
	 * JdbcTokenRepositoryImpl(); jdbcTokenRepositoryImpl.setDataSource(datasource);
	 * return jdbcTokenRepositoryImpl; }
	 */
}
