<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product in Cart</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"> </script>

</head>
<body>
<%@include file="header.jsp" %>
<br>
<br>
<br>
<h4>In Cart</h4>
<table class="table">

<thead>
<tr class="success">
<th>Image</th>
<th>Name</th>
<th>Quantity</th>
<th>Price per unit</th>
<th>Price</th>
<th></th>
</tr>
</thead>
<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
<tbody>
<tr>
<form:form action="./updateItem?id=${pd.product.pid}" commandName="item" method="post">
<td><form:hidden path="itemId" value="${pd.itemId}"/>  <img src="<c:url value="${pd.product.imgs}"/>" height="80px" width="50px"></td>
<td>${pd.product.name} <%-- <form:hidden path="product" value="${pd.product}"/> --%> </td>
<td> <form:input path="quantity" id="quantity" name="quantity" value="${pd.quantity}"/></td>
<td>Rs.${pd.product.price}</td>
<td>Rs.${pd.product.price*pd.quantity}</td>
<!-- <td><input type="submit" class="btn link" value="update"/> -->
</td>
<td><a commandName="item" href="deleteItem?id=${pd.itemId}">x</a></td>
<td></td>
</form:form>
</tr>
</tbody>
</c:forEach>
<tr class="success">
<td colspan="4" align=right><strong>Total Price</strong></td>
<td>Rs.${totalPrice}</td>
<td></td>
<tr>
</table>
<div align="center">
<button class="btn btn-success"><a href="page4" style="color:white">Continue Shopping</a></button>
<button class="btn btn-success"><a href="payment" style="color:white">Order Now</a></button>
</div>
<div align="right">
</div>

<%-- 
<table class="table">
<thead>
<tr class="info">
<th>Image</th>
<th>Name</th>
<th>Quantity</th>
<th>Price per unit</th>
<th>Price</th>
<th></th>
</tr>
</thead>
<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
<tbody>
<tr>
<td><img src="<c:url value="${pd.product.imgs}"/>" height="60px" width="50px"></td>
<td>${pd.product.name}</td>
<td>${pd.quantity}<!-- <input id="quantity" name="quantity"> --></td>
<td>Rs.${pd.product.price}</td>
<td>Rs.${pd.product.price*pd.quantity}</td>
<td><a href="deleteThisProduct?id=${pd.product.pid}">x</a></td>
</tr>
</tbody>
</c:forEach>
<tr class="info">
<td colspan="4" align=right><strong>Total Price</strong></td>
<td>Rs.${totalPrice}</td>
<tr>
</table>
<button><a href="page4">Continue Shopping</a></button> --%>
</body>
</html>