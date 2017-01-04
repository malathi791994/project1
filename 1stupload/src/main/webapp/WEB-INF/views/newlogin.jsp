<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    



<!DOCTYPE html>
<html lang="en">
<html >
  <head>
    <meta charset="UTF-8">
 
   <title> login form</title>
    
   
  <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/css/reset.css'/>"/>

     <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/css/style.css'/>"/>

   

 
    
    
  </head>

 
 <body>

  
  <div class="container">
  
<div class="login">
  
	<h1 class="login-heading">
  
    <strong>Welcome.</strong> Please login.</h1>
  
    <form method="post" action="./checklogin">
      
  <input type="text" name="username" placeholder="Username" required="required" class="input-txt" />
   
       <input type="password" name="password" placeholder="Password" required="required" class="input-txt" />
  
        <div class="login-footer">
  
         
  
           
  
          <button type="submit" class="btn btn--right">Sign in  </button>
   
 
          </div>
      </form>
  </div>
</div>
    
   
       
    

    
  </body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html lang="en">
<head>
  <!-- <meta charset="utf-8"> -->
   <title> login form</title>
    
   
 
    <link rel="stylesheet" href="<c:url value='/resource/css/reset.css'/>"/>

     <link rel="stylesheet" href="<c:url value='/resource/css/style.css'/>"/>
     <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/scss'/>"/>

     <link rel="stylesheet" href="<c:url value='/resource/bootstrap-3.3.6-dist/js/index.js'/>"/>
     

<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

   <div class="container">
  
<div class="login">
  
	<h1 class="login-heading">
  
    <strong>Welcome.</strong> Please login.</h1>
  
    <form method="post">
      
  <input type="text" name="user" placeholder="Username" required="required" class="input-txt" />
   
       <input type="password" name="password" placeholder="Password" required="required" class="input-txt" />
  
        <div class="login-footer">
  
           <a href="#" class="lnk"/>
  
           
  
          <button type="submit" class="btn btn--right">Sign in  </button>
   
 
          </div>
      </form>
  </div>
</div>
 

  </body>
</html>


<!-- <div class="container">
<div style="background-color:black;color:red;padding:50px;">

  
  <form class="form-inline" role="form" action="./checklogin"method="post">
    <div class="form-group">
      <label for="userid">USER ID:</label><br>
      <input type="text" class="form-control" name="username" placeholder="Enter username">
    </div><br>
    <div class="form-group">
      <label for="pwd">Password:</label><br>
      <input type="password" class="form-control" name="password" placeholder="Enter password">
    </div><br>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div><br><br>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
 -->
 --%>