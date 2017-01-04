<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>
</head>
<body>


		
<table border="2">
	<form:form action="./updatecategory"  commandName="cat" method="POST">
			
	
	<tr>
			<td>category Id</td>
			
			<td><form:input path="cid" value="${categoryObject.cid}"  readonly="true"/></td>
		</tr>
		<tr>
			<td>category Name</td>
			
			<td><form:input path="name" value="${categoryObject.name}"/></td>
		</tr>
		<br>
		<tr>
			<td>category Description</td>
			<td><form:input path="description" value="${categoryObject.description}"/></td>
		</tr>
		<br>
		<%-- <tr>
			<td>category Price</td>
			<td><form:input path="price" value="${categoryObject.price}"/></td>
		</tr> --%>
		</table>
		
		<br>
		
			<td colspan="2"><input type="submit" name="action" value="update" />
			<input type="reset" value="Reset" onclick="addcategory"/>
			</td>
			</form:form>
			</center>
		
		<br>
		<center>
		<table border="2">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<!-- <th>PRICE</th> -->
		</tr>
			

			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.cid}</td>
					<td>${category.name}</td>
					<td>${category.description}</td><%-- 
			 		<td>${category.price}</td> --%>
						<td><a href="editpagecat?id=${category.cid}"><button>Edit</button></a>
					<td><a href="deletecategory?id=${category.cid}"><button>delete</button></a>
					
				</tr>

			</c:forEach>
		</table>
		</center>
		
</body>
</html>