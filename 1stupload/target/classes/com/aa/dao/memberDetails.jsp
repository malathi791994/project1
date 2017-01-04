<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html><head>
  
   <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/css/reset.css'/>"/>

     <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/css/style.css'/>"/>

    

<!-- <style>
body
{
background-image: url("<c:url value='/resource/img/chlm3.jpg'/>");
 /*    background-repeat: no-repeat; */
    }
    form
    {
     background-color:; 
     color:red;
     padding:50px;
     margin-top:100px;
     margin-right:300px;
     margin-left:100px;
    }
</style> -->
</head>
<body >

<div class="container">
 <div class="container">
  
<div class="login">
  <h1 class="login-heading">
  
    <strong>Register.</strong> not member yet?.</h1>
  
<form:form class="form-group" modelAttribute="userBean">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">

 <form:input path="userName" type="text" placeholder="username" name="username" required="required" class="input-txt"/>
  <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('userName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
  <br><br>


    <form:input path="emailId" type="text" placeholder="emailid" name="emailid" required="required" class="input-txt"/>
    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
    <br><br>
   
   <form:input path="password" type="password" placeholder="password" name="pswd" required="required" class="input-txt"/>
    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
    <br><br>
    
      <form:input path="confirmpassword" type="password" placeholder="confirmpassword" name="confirmpassword" required="required" class="input-txt"/>
    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
    <br><br>
  <!--    <div class="login-footer">
  
           <a href="#" class="lnk">
  
                    <button type="submit" class="btn btn--right">Register </button>
   
 
          </div>
     -->
   
          
   <button type="submit" name="_eventId_submit" class="btn btn--right">Register  </button>
   
    </div>
</form:form>
</div>
</div>
</div>
</div>
</body>
</html>
