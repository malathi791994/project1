<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
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


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="<c:url value='/resource/css/demo.css'/>" rel="stylesheet"> 
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
  <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/normalize.css'/>" rel="stylesheet"> 
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		 <link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/component.css'/>" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<title>SUPPLIER DETAIL</title>
</head>
<body>
<%@include file="header.jsp" %>
<%-- <nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container" >
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="adminlogin">Pendrive</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav nav-pills navbar-right">
         <li><a href="index">HOME</a></li>
         <!--  <li><a href="#section2">ABOUT US</a></li> -->
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach items="${cList}" var="category">
        <li><a commandName="cat" href="categorypage?id=${category.cid}">${category.name }</a> 
        </c:forEach>
             </ul>
      </li>
                       
</li>
          
         <!--  <li class="dropdown"><a  href="indexs"> CATEGORY</a> -->
       <!--  <li><a href="addsupplier">ADD</a></li> -->
          
	     <!--  <li><a href="page3">LOGIN</a></li> -->
	      <!-- <li><a href="memberDetails">REGISTER</a></li> -->
        </ul>
      </div>
    </div>
  </div>
</nav>    
 --%><br><br><br><br><br><br>
<!-- <div class="container">
   <ul class="pager">
    <li class="previous"><a href="#">Previous</a></li>
    <li class="next"><a href="#">Next</a></li>
  </ul>
</div> -->


<center>
<div class="row">
 <div class="col-sm-2"></div>
 <div class="col-sm-8">
<table>
	<form:form action="./saveSupplier"  commandName="sup" method="POST" >
			
		 <tr>
		
			<td>Supplier Name</td>
		</div>
			<td><form:input path="name" class="form-control" pattern="[A-Za-z].{3,}" required="true" /></td>
		</tr> 
		<br>
		<tr>
		<div class="col-sm-2">
			<td>Supplier Description</td>
		</div>
			<td><form:input path="description" class="form-control"/></td>
		</tr>
		<br>
		
	<br>
	<td colspan="2"><input type="submit" name="action" value="add" />
			<input type="reset" value="Reset" onclick="addsupplier"/>
			</td>
		</table> 
	</div>	
		<br>
			</form:form>
			</div>
			</center>
		
		<br>
		<center>
		to <a href="viewsupplier">view</a> the supplier List...
		
		<table  class="container" border="2">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<!-- <th>PRICE</th>
			<th>image</th> -->
			<th>edit</th>
			<th>delete</th>
		</tr>
			<%-- <%String ss=(String)request.getAttribute("img");
			out.println(ss);%> --%>


			<c:forEach items="${SupplierList}" var="supplier">
			<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.description}</td>
			 		<td><a href="editpagesup?id=${supplier.id}"><button>Edit</button></a>
					<td><a href="deleteSupplier?id=${supplier.id}"><button>delete</button></a></td>
			</tr>
			</c:forEach>
				
				
				
		</table>
</div>
		</center>
		</div>
		
</body>
</html>