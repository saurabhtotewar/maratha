package com.eagle.Marathavaduvar;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.eagle.Marathavaduvar.entity.MarathaUserlogin;

import com.eagle.Marathavaduvar.services.Loginservices;
import com.eagle.Marathavaduvar.services.LoginServicesImpl;

@Service
public class UserDetailServiceImpl implements UserDetailsService {

	@Autowired
	LoginServicesImpl jpUser = new Loginservices();

	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
		
		MarathaUserlogin user;
		try {
			System.out.println("UserDetails");
			System.out.println(jpUser);
			System.out.println(userId);
			user = jpUser.getUserByUsername(userId);
			System.out.println(user);
			if (user == null)
				throw new UsernameNotFoundException("user name not found");

		} catch (Exception e) {
			throw new UsernameNotFoundException("database error ");
		}
		return buildUserFromUserEntity(user);
	}

	private UserDetails buildUserFromUserEntity(MarathaUserlogin userEntity) {
		// convert model user to spring security user
		String username = userEntity.getUsername();
		String password = userEntity.getPassword();
		boolean enabled = userEntity.isEnabled();
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		SimpleGrantedAuthority[] authorities = new SimpleGrantedAuthority[1];
		authorities[0] = new SimpleGrantedAuthority(userEntity.getRole());

		UserDetails springUser = new User(username, password, enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, Arrays.asList(authorities));
		System.out.println(springUser);
		return springUser;
	}

	public LoginServicesImpl getJpUser() 
	{
		return jpUser;
	}

	public void setJpUser(LoginServicesImpl jpUser) {
		this.jpUser = jpUser;
	}

}