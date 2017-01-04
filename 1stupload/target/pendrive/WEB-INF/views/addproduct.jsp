<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
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

<title>PRODUCT DETAIL</title>
</head>
<body>
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container-fluid" >
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
         <li><a href="edit">HOME</a></li>
          <!-- <li><a href="">ABOUT US</a></li> -->
          
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach items="${cList}" var="category">
        <li><a commandName="cat" href="categorypage?id=${category.cid}">${category.name }</a> 
        </c:forEach>
         <!--  <li><a href="page4">Normalpendrives</a></li>
          <li><a href="page5"> Modern pendrives</a></li>
           -->
        </ul>
      </li>
                       
</li>
          
         <!--  <li class="dropdown"><a  href="indexs"> CATEGORY</a> -->
       <!--  <li><a href="addproduct">ADD</a></li> -->
          
	    <!--   <li><a href="page3">LOGIN</a></li> -->
	     <!--  <li><a href="memberDetails">REGISTER</a></li> -->
        </ul>
      </div>
    </div>
  </div>
</nav>    
<br><br><br><br><br><br>
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
<table >
	<form:form action="./saveProduct"  commandName="prod" method="POST" enctype="multipart/form-data">
			
		<tr>
			<td>Product Name</td>
			</div>
			<td><form:input path="name" class="form-control" required="true" /></td>
		</tr>
		<br>
		<tr>
		<div class="col-sm-2">
			<td>Product Description</td>
			</div>
			<td><form:input path="description" class="form-control" required="true"/></td>
		</tr>
		<br>
		<tr>
		<div class="col-sm-2">
			<td>Product Price</td>
			</div>
			<td><form:input path="price" class="form-control" required="true"/></td>
		</tr>
		<br>
			<tr>
			<td>supplier</td>
			</div>
			<td><form:select path="sid" class="form-control" >
			<c:forEach items="${sList }" var="sup">
			<option value="${sup.id}">${sup.name}</option>
			</c:forEach>
			</form:select>
			</td>
		</tr>
		<br>
			<tr>
			<td>category</td>
			</div>
			<td><form:select path="cid" class="form-control" >
			<c:forEach items="${cList }" var="cat">
			<option value="${cat.cid}">${cat.name}</option>
			</c:forEach>
			</form:select>
			</td>
		</tr>
		  <tr> 
		  <div class="col-sm-2">
			<td>Product Image</td> 
			</div>
			<td><form:input type="file" path="file" name="file"/>${message}</td>
	</tr> 
	<tr>
		<div class="col-sm-2">
			<td>Product Stock</td>
			</div>
			<td><form:input path="quantity" class="form-control"/></td>
		</tr>
		<br>
	<tr>
	<td><form:hidden path="imgs" value="${img}"/>
	</td>
	</tr>
	<br>
	<td colspan="2"><input type="submit" name="action" value="add" />
			<input type="reset" value="Reset" onclick="addproduct"/>
			</td>
		</table> 
		
		<br>
			</form:form>
			</center>
		
		<br>
		<center>
		to <a href="viewproduct">view</a> the product List...
		
		<table  class="container" border="2">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<th>STOCK</th>
			<th>image</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
			<%-- <%String ss=(String)request.getAttribute("img");
			out.println(ss);%> --%>

</div>
			<c:forEach items="${productList}" var="product">
			<%-- <c:set var="m" value="${requestScope.img}"/> --%>
				<tr>
					<td>${product.pid}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
			 		<td>${product.price}</td>
			 		<td>${product.quantity}</td>
			 		<td><img src="<c:url value="${product.imgs}"/>" height="100px" width ="100px" ></td>
						<td><a href="editPage?id=${product.pid}"><button>Edit</button></a>
					<td><a href="deleteProduct?id=${product.pid}"><button>delete</button></a>
					
				</tr>

			</c:forEach>
		</table>

		</center>
		</div>
		
</body>
</html>