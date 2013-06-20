# Spring PetClinic Sample Application

## Why a modified version of PetClinic?
The main differences are that here we are implementing Simple-Spring-Memcached, adding scripts for deployment to Microsoft SQL Azure Database, and adding a transient fault exception handler. 

These enhancements help to demonstrate highly available and scalable deployments of Spring applications in the Windows Azure environment. 

The original SpringSource version can be found here:
https://github.com/Logic2020Inc/spring-petclinic-mod/

##What does it look like?

This modified version of spring-petclinic has been deployed to Windows Azure here: http://petclinic.cloudapp.net/


## Running petclinic locally
```
	git clone https://github.com/Logic2020Inc/spring-petclinic-mod.git
	mvn tomcat7:run
```

You can then access petclinic here: http://localhost:8080/spring-petclinic/

## Working with Petclinic in Eclipse/STS

### prerequisites
The following items should be installed in your system:
* Maven 3 (http://www.sonatype.com/books/mvnref-book/reference/installation.html)
* git command line tool (https://help.github.com/articles/set-up-git)
* Eclipse with the m2e plugin (m2e is installed by default when using the STS (http://www.springsource.org/sts) distribution of Eclipse) 

Note: when m2e is available, there is an m2 icon in Help -> About dialog.
If m2e is not there, just follow the install process here: http://eclipse.org/m2e/download/


### Steps:

1) In the command line
```
git clone https://github.com/Logic2020Inc/spring-petclinic-mod.git
```
2) Inside Eclipse
```
File -> Import -> Maven -> Existing Maven project
```





