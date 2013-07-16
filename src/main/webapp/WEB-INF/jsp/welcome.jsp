<!DOCTYPE html> 
<!-- Modified by Michael Ashby, added text to Welcome page explaining PetClinic modification and where to find documentation. -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="en">

<jsp:include page="fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="fragments/bodyHeader.jsp"/>
    <h2><fmt:message key="welcome"/></h2>
    
      <p><fmt:message key="tutorialDecription"/></p>
      

       
	<ul>
	  <li>
      	<p><u> 
      		<a href="http://aka.ms/JavaAzureTutorial"><fmt:message key="tutorialDecription.link"/></a>
      	</u></p>
      </li>
	  <li> 
	  	<p><u> 
      		<a href="https://github.com/Logic2020Inc/spring-petclinic-mod"> <fmt:message key="documentationDecription.link"/></a>
    	</u></p>
      </li>
	</ul> 

    <spring:url value="/resources/images/pets.png" htmlEscape="true" var="petsImage"/>
    <img src="${petsImage}"/>

    <jsp:include page="fragments/footer.jsp"/>

</div>
</body>

</html>
