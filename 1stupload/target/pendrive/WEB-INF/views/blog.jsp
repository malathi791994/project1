<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/resources/assets/css/style.css'/>">
 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" 

type="text/css" href="assets/css/bootstrap.css">

		
		<link rel="stylesheet" type="text/css" 

href="assets/css/main.css">

		
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		


		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link 

href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
<style>
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background-color: #d3d3d3;
 	font-family: 'Oxygen', sans-serif;
 	
}
input[type=submit] {
  padding: 0 -16px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
}
.main{
 	margin-top: 7px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 

15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
	width:100%;
	height:34px;
    font-size: 11px;
    padding-top: 3px;
    
}

textarea
{
width:100%;
	height:50px;
}

.main-login{
 	background-color: #fff;
    /* 

shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    

-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	

max-width: 330px;
    padding: 30px 30px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}

</style>	</head>
	<body>
	
		<!-- <div class="container"> -->
			<div class="row main">
				<!-- <div class="panel-heading"> -->
	             <!--   <div class="panel-title text-center"> -->
	               		<center><h1 class="title">What's in your Mind?</h1></center>
	 
              		<hr />
              		
	               	</div>
	            </div> 
				<div class="main-login main-center">
				


		 <form:form action="./blog1" commandName="blo" method="post" class="form-horizontal">				
						<div 

class="form-group">
						
	<label for="name" class="cols-sm-2 control-label">Author</label>
							<div class="cols-sm-10">
		

						
<div class="input-group">
									
<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input path="author" type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" required="true"/>
								</div>
			

				</div>
						</div>

						<div class="form-group">
		

					
<label for="email" class="cols-sm-2 control-label">Title</label>
							
<div class="cols-sm-10">
								
<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-

hidden="true"></i></span>
									<form:input type="text" path="title" class="form-control" name="email" id="email"  

placeholder="Enter your Title" required="true"/>
								</div>
							</div>
		

				</div>

						<div class="form-group">
							<label 

for="username" class="cols-sm-2 control-label">Content</label>
							<div class="cols-sm-10">
				

				<div class="input-group">
									<span class="input-group-addon"><i 

class="fa fa-users fa" aria-hidden="true"></i></span>
									<form:textarea type="text" path="content" class="form-control" name="username" id="username"  placeholder="Enter your content" required="true"></form:textarea><div class="form-group">
							<!-- <label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div> -->
						</div>

					
								</div>
					

		</div>
						</div>

						
<div class="form-group">
							<label for="text" class="cols-sm-2 control-label">Tags</label>
		

					<div class="cols-sm-10">
								<div class="input-group">
		

							<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
			

						<form:input type="text" path="tags" class="form-control" name="confirm" id="confirm"  placeholder="Enter yout Tag" required="true"/>
		
<p class="submit"><input type="submit" value="POST"></p>
					
						</div>
							</div>
						</div>

		
	<a href="bloglist">to list blogdetails</a>
				
							<!-- <button type="button" class="btn btn-primary btn-lg btn-block login-button">Post</button> -->
							
						<!-- <div class="login-register">
	

			            <a href="index.php">Login</a>
				         </div>
 -->					</form:form>
			


			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	</body>
</html> 
<%-- <style>
input[type=text], select {
    width: 50%;
    /* padding: 12px 20px; */
    margin: 8px 0;
    /* //display: inline-block; */
   /*  //border: 1px solid #ccc; */
    border-radius: 4px;
    /* //box-sizing: border-box; */
}


div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
input[type=submit] {
    width: 100%;
    background-color: #00ced1;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #1e90ff;
}


textarea {
    width: 50%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}

.blogForm
{
margin-left:50px;
margin-right:50px;
}
</style>
</head>
<body>
<div class="container" >
			
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="collapse">
		
						<a href="home1" ><h1>POSTIN</h1></a>
	                   
				</div>				  
</nav>
		</div>			<!-- <div class="col-md-10">	 
					Brand and toggle get grouped for better mobile display
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
							<i class="fa fa-bars"></i>
						</button>
					</div>
					Collect the nav links, forms, and other content for toggling
					<div class="collapse navbar-collapse" id="menu">
						<ul class="nav navbar-nav navbar-right">
							  <li><a href="home1">Home</a></li>
							  <li><a href="about">About Us</a></li>
							  <li><a href="blog">Blog</a></li>
							  <li><a href="#forum">Forum</a></li>				                                                

                  								  
							  <li><a href="sign n login">Signin/Login</a></li>
						</ul>
					</div>
				 -->	<!-- /.Navbar-collapse -->		 
				<!-- </div> -->
		<!-- 	</div>
		</div>		
	</nav>
     -->
<div class="blogForm">
<center><h3>What's in your mind?</h3></center>

  <form:form action="./blog1" commandName="blo" method="post">
    <label for="name"> NAME</label><br>
    <form:input type="text" path="blogTitle" class="form-control" id="fname" name="firstname"/>

   <br>
 <label for="blog"> BLOG</label><br>
  <form:textarea path="blogContent" class="form-control"></form:textarea>

    
    <input type="submit" class="btn-btn-primary" value="post"/>
  </form:form>

</div>

</body>
</html>
 --%>