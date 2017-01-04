<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>

<title>Admin page</title>
<link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css'/>" rel="stylesheet"/>
  <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet">
   <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/landing-page.css'/>" rel="stylesheet"> 
    <link href="<c:url value='/resource/bootstrap-3.3.6-dist/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  
</head>
<body>
<div class="container">
  <center><h2>Admin Details</h2></center>
<br>
<br>
<br>

 
 <div class="well"> <a href="addproduct">PRODUCT</a></div>
 <div class="well"> <a href="addsupplier">SUPPLIER</a></div>
 <div class="well"> <a href="addcategory">CATEGORY</a></div>
 
</div>
</body>
</html>