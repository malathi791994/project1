<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
	 
	 <%@page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check whether your details are correct or Not?</title>
<style>
/* body {
    background-color: black;
} */
</style>
</head>
<body>
	 <center>
		<h1 style="background-color:rgb(0, 0, 0);color:white">Are you Ready To Proceed?</h1>
		<form method="post" action="./sendEmail"></center>
		
			<%-- <table border="0" width="50%">
				<tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">To:</td> -->
					<td><input type="hidden" value="${email}" name="recipient" size="65" /></td>
				</tr> 
				<tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">Subject:</td> -->
					<td><input type="hidden" name="subject" size="65" value="Your order is..."/></td>
				</tr> 
				<tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">Message:</td> -->
					<td><textarea style="visibility:hidden" "cols="100" type="hidden" rows="50" name="message" >The products you have ordered are listed below:					
					<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
Product Name: ${pd.product.name}
Quantity: ${pd.quantity}
Price: Rs.${pd.product.price}
</c:forEach>
Total Price:Rs.${totalPrice}

					</textarea></td>
 --%>				<!-- </tr> --> <center>
 			<tr><td><p "cols="1000" type="hidden" rows="50" name="message">The products you have ordered are listed below:<br><br>					
					<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
Product Name: ${pd.product.name}<br>
Quantity: ${pd.quantity}<br>
Price: Rs.${pd.product.price}<br><br>
</c:forEach>
Total Price:Rs.${totalPrice}

								</li></p></td></tr>
								</center>
		<!-- <h1 style="background-color:rgb(0, 0, 0);color:white">Are you Ready To Proceed?</h1>
		<form method="post" action="./sendEmail">
			 --><table border="0" width="50%">
				<center><tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">To:</td> -->
					<td><input type="hidden" value="${email}" name="recipient" size="65" /></td>
				</tr> </center>
				<tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">Subject:</td> -->
					<td><input type="hidden" name="subject" size="65" value="Your order is..."/></td>
				</tr> 
				<tr>
					<!-- <td style="background-color:rgb(0, 0, 0);color:white">Message:</td> -->
					<td><textarea style="visibility:hidden" "cols="10" type="hidden" rows="5" name="message" >The products you have ordered are listed below:					
					<c:set var="totalPrice" value="0"></c:set>
<c:forEach var="pd" items="${cart}">
<c:set var="totalPrice" value="${totalPrice+(pd.product.price*pd.quantity)}"></c:set>
Product Name: ${pd.product.name}
Quantity: ${pd.quantity}
Price: Rs.${pd.product.price}
</c:forEach>
Total Price:Rs.${totalPrice}

					</textarea></td>
					
				</tr> 
								
				
				<tr>
					<td colspan="3" align="center">
						<input type="submit" value="Place Order" />
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>