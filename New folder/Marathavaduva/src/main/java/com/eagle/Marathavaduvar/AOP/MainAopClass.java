package com.eagle.Marathavaduvar.AOP;

import org.aspectj.lang.annotation.Pointcut;

public abstract class MainAopClass {

	@Pointcut("execution(* com.eagle.Marathavaduvar.services.MarathaRegServicesImpl.savePerson(..))")
	public void RecRegpointcut() {

	}
	
}
