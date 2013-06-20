/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springframework.samples.petclinic.service;
import java.sql.SQLException;
import java.util.Locale;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.stereotype.Component;

/**
 * Added to receive exceptions thrown in ClinicServiceImpl. 
 * This is meant to handle Transient Faults: See: http://msdn.microsoft.com/en-us/library/hh680934%28v=pandp.50%29.aspx
 * TODO: implement a parse and logic for SQL Database transient exceptions.
 *
 * @author Michael Ashby 
 */
@Aspect
@Component
public class ExceptionHandler   {

    private MessageSource messageSource;

    @Pointcut("execution(* org.springframework.samples.petclinic.service.ClinicServiceImpl*.*(..))")
    public void findPetTypes() {    }
    
    @Pointcut("execution(* org.springframework.samples.petclinic.service.ClinicServiceImpl*.*(..))")
    public void findOwnerById() {    }
    
    @Around("findPetTypes() || findOwnerById()")
    public Object profile(ProceedingJoinPoint pjp) throws Throwable {
        Object output = pjp.proceed();
        System.out.println("Method execution completed.");
       
     // Insert transient fault exception handling here. 
     // throw new SQLException();
        return output; 
    }
 
} 