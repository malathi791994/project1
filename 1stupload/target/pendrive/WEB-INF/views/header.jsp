<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>

 <meta charset="utf-8">
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    
   <title>pendrive shop</title>
  <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css'/>" rel="stylesheet">
  <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet">
  <!-- Custom CSS -->
    <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/landing-page.css'/>" rel="stylesheet"> 
   <!-- Custom Fonts -->
    <link href="<c:url value='/resource/bootstrap-3.3.6-dist/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  
  <!--[if lt IE 9]-->
<!--       <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script> -->

<script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>

<style>
.intro-header
{
padding-top: 50px; /* If you're making other pages, make sure there is 50px of padding to make sure the navbar doesn't overlap content! */
padding-bottom: 50px;
padding-right:50px;
padding-left:50px;

    background:url("<c:url value='/resource/img/malu.jpg'/>");
background-size: cover;
}
.banner
{
background:url("<c:url value='/resource/img/banner-bg.jpg'/>");
background-size: cover;
color:white;
}
</style>

</head>

<body>

   <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        
<div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            
<div class="navbar-header">
                
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    
<span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    
<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                
</button>
                <a class="navbar-brand" href="#">Lyedianz store</a>
            
</div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
<ul class="nav navbar-nav">
<li>
                        
<a href="index">Home</a>
                    
</li>
         
 <li>
                        
<a href="newlogin">admin</a>
                    
</li>                   
 <li>
                        
<a href="page4">Cart</a>
                    
</li> 
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${cList}" var="c"> 
          <li><a commandName="cat" href="page5?id=${c.cid}"> ${c.name}</a></li>
          </c:forEach>
        </ul>
      </li>
                       
</li> 
</ul>
<ul class="nav navbar-nav navbar-right">
<form action="logout" id="logout" method=post>
 	
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h2 style="color:white;">${pageContext.request.userPrincipal.name} |
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h2> 
                 </c:if> 
</ul>

   <!--  <ul class="nav navbar-nav navbar-right">
      <li><a data-toggle="modal" href="newlogin" datatarget="#signup"><span class="glyphicon glyphicon-user"></span> admin</a></li>

      <li><a href="file:///C:/Users/Dinesh/Desktop/malathi/page3.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      

    </ul>
 -->

                    
<!-- <li>
                        
<a href="#">Services</a>
                    
</li> -->
                    

               

     <%--  <ul class="nav navbar-nav navbar-right">
      <li><a data-toggle="modal" href="#signup" datatarget="#signup"><span class="glyphicon glyphicon-user"></span> Welcome ${userBean.userId }</a></li>
      </ul> --%>      
</div>
            
<!-- /.navbar-collapse -->
        
</div>
        
<!-- /.container -->
    
</nav>
</body>
</html>
