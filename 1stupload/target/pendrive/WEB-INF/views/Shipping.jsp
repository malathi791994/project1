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
  
    <strong>Shipping Details.</strong> Enter it here?.</h1>
  
<form:form class="form-group"  commandName="comd" action="./payment">
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">

 <form:input path="Name" type="text" placeholder="Name" name="username" required="true" class="input-txt"/>
  
					
  <br><br>


    <form:input path="emailid" type="text" placeholder="emailid" name="emailid" required="true" class="input-txt"/>
    
    <br><br>
   
   <form:input path="address" type="password" placeholder="Address" name="pswd" required="true" class="input-txt"/>
   

    <br><br>
    
      <form:input path="phonenumber" type="text" placeholder="PhoneNumber" name="confirmpassword" required="true" class="input-txt"/>
  
    <br><br>
  <!--    <div class="login-footer">
  
           <a href="#" class="lnk">
  
                    <button type="submit" class="btn btn--right">Register </button>
   
 
          </div>
     -->
   
          
   <button type="submit"  class="btn btn--right">Register  </button>
   
    </div>
</form:form>
</div>
</div>
</div>
</div>
</body>
</html>
