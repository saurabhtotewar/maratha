package com.eagle.Marathavaduvar;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Service;

import com.eagle.Marathavaduvar.input.Role;
import com.eagle.Marathavaduvar.utill.URLMapper;
import com.eagle.Marathavaduvar.utill.Viewmapper;

@Service
public class LoginSuccessHandler implements  AuthenticationSuccessHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	private RequestCache requestCache = new HttpSessionRequestCache();

	String URL = "";

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException {
		System.out.println("LoginSucess");
		SavedRequest savedRequest = requestCache.getRequest(request, response);

		URL = request.getRequestURI();

		if (savedRequest == null) {
			clearAuthenticationAttributes(request);
			response.setContentType("application/json");
			Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
			for (GrantedAuthority grantedAuthority : authorities) {
				if (Role.person.name().equalsIgnoreCase(grantedAuthority.getAuthority())) {
					response.setHeader("Role", "person");
					break;
				} else if (Role.admin.name().equalsIgnoreCase(grantedAuthority.getAuthority())) {
					response.setHeader("Role", "admin");
					break;
				} 
				
			}
			return;
		}

		handle(request, response, authentication);
		clearAuthenticationAttributes(request);
	}

	protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		String targetUrl = determineTargetUrl(authentication);

		if (response.isCommitted()) {
			System.out.println("Response has already been committed. Unable to redirect to " + targetUrl);
			return;
		}

		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	/**
	 * Builds the target URL according to the logic defined in the main class
	 * Javadoc.
	 */
	public String determineTargetUrl(Authentication authentication) {
		boolean isPerson = false;
		boolean isAdmin = false;
		
		
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (Role.person.name().equalsIgnoreCase(grantedAuthority.getAuthority())) {

				System.out.println("url check");
				System.out.println("URL :" + URL);

				isPerson = true;
				break;
			} else if (Role.admin.name().equalsIgnoreCase(grantedAuthority.getAuthority())) {
				isAdmin = true;
				break;
			} 
			
		}
		if (isPerson) {
			
			return Viewmapper.PERSONMATCHES;
		}
		
		else if (isAdmin) {
			return URLMapper.LOGIN;
		} 
			else {
			throw new IllegalStateException();
		}
	}

	protected void clearAuthenticationAttributes(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return;
		}
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}

	protected RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}

	public RequestCache getRequestCache() {
		return requestCache;
	}

	public void setRequestCache(RequestCache requestCache) {
		this.requestCache = requestCache;
	}
}