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
<title>PRODUCT DETAIL</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>

<script>
var v=${pdata};
angular.module('myapp',[]).controller('addproductController',function($scope)
		{
	$scope.plist=v;
		});
</script>
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
      <a class="navbar-brand" href="addproduct">Pendrive</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav nav-pills navbar-right">
         <li><a href="index">HOME</a></li>
        <!--   <li><a href="#section2">ABOUT US</a></li> -->
          
       <!--    <li class="dropdown"><a  href="indexs"> CATEGORY</a>
        <li><a href="addproduct">ADD</a></li>
          
	      <li><a href="#section3">LOGIN</a></li>
	      <li><a href="#section4">REGISTER</a></li> -->
        </ul>
      </div>
    </div>
  </div>
 
</nav>    
<br><br><br><br><br><br>
<div class="container" ng-app="myapp" ng-controller="addproductController">
<input type="text" class="form-control" placeholder="Search...." ng-model="sr"/><br>
<table class="table">
<thead>
<tr class="info">
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Price</th>
<!-- <th>Image</th> -->
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>

<tbody>
<tr ng-repeat="pd in plist|filter:sr"> 
<td>{{pd.pid}}</td>
<td>{{pd.name}}</td>
<td>{{pd.description}}</td>
<td>{{pd.price}}</td>
<%-- <td><img src="<c:out value='{{pd.imgpath}}'/>" height="100px" width="50px"/></td>  --%>
<td><a href="editPage?id={{pd.pid}}">edit</a></td>
<td><a href="deleteProduct?id={{pd.pid}}">delete</a></td>
</tr>
</tbody>
</div>
</table>
</body>
</html>