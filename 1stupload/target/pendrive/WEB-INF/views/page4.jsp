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
<script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resource/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
<style>
.hero-feature 
{
display:inline;
float:left;
}

</style>
    
<title>Normal pendrives</title>

    
<!-- Bootstrap Core CSS -->
    
<link href="<c:url value='/resource/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" rel="stylesheet">

    
<!-- Custom CSS -->
    <link href="<c:url value='heroic-features.css'/>" rel="stylesheet">

    
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    
<!--[if lt IE 9]>
        
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    
<![endif]-->

</head>

<body>

   <!--   Navigation 
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        
<div class="container">
            Brand and toggle get grouped for better mobile display
            
<div class="navbar-header">
                
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    
<span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    
<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                
</button>
                <a class="navbar-brand" href="#"></a>
            
</div>
            Collect the nav links, forms, and other content for toggling
            
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
<ul class="nav navbar-nav">
                    
<li>
                        
<a href="index">home</a>
                    
</li>
                    
<li>
                        
<a href="#">Services</a>
                    
</li>
                    <li>
                        
<a href="#">Contact</a>
                    
</li>
                
</ul>
            
</div>
            
/.navbar-collapse
        
</div>
        
/.container
    
</nav>
 -->
 <%@include file="header.jsp" %>
 
<!-- Page Content -->
    
<div class="container">
<br>
 <br>
 <br>
 <br>
 <br>
 <br>
        
<!-- Jumbotron Header -->
        
     <!-- Page Features -->
     <div class="row text-center">

         
   
<c:forEach items="${Products}" var="p">           
<div class="col-md-3 col-sm-6 hero-feature">
 <form commandName="prod"> 
 <div class="thumbnail">             
<img src="<c:url value="${p.imgs}"/>" alt="">                    
<div class="caption">
<h3>${p.price}</h3>   
<p>${p.name}</p>    



<p>                        
<a href="Shipping" class="btn btn-primary">Buy Now!</a> <a commandname="prod" href="addToCart?id=${p.pid}" class="btn btn-primary">Add to cart</a>
            
</p>
</div> 
</div>
 </div> 
  </form>       
         
</c:forEach>            
                   
               

</div>  
</div> 
    
      
<%--  <div class="row text-center">

         
   <div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m1.jpg'/>" alt="">
                    
<div class="caption">
                        
<h3>$250</h3>
                        
<p>SanDisk Cruzer Switch 16GB USB Pen Drive
.</p>
                        
<p>
                            
<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
               
 </div>
            
</div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m2.jpg'/>" alt="">
                    
<div class="caption">
                       
 <h3> $300</h3>
                        
<p>Transcend JetFlash 350 16GB USB Pen Drive (Black)
.</p>
                        
<p>
                            
<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
                </div>
           
 </div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m3.jpg'/>" alt="">
                   
<div class="caption">
                        
<h3> $599</h3>
                        
<p>HP V220W 16GB USB 2.0 Pen Drive
.</p>
                        
<p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
                </div>
            
</div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m21.jpg'/>" alt="">
                    
<div class="caption">
                        
<h3>$300</h3>
                        
<p>hp Cruzer Orbit Rotating 8GB USB Pen Drive

.</p>
                        
<p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    
</div>
                
</div>
            
</div>

        
</div>
      
<div class="row text-center">

         
   <div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m15.jpeg'/>"" alt="">
                    
<div class="caption">
 <br>                       
<h3>$450</h3>
                        
<p>SanDisk cruzer 16GB USB Pen Drive   16GB USB Pen Drive pen drive  
.</p>
                        
<p>
                            
<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
               
 </div>
            
</div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m14.jpeg'/>" alt="">
                    
<div class="caption">
                       
 <h3>$650</h3>
                        
<p>SanDisk   16GB USB PenDrive   16GB USB PenDrive  

.</p>
                        
<p>
                            
<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
                </div>
           
 </div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m26.jpeg'/>" alt="">
                   
<div class="caption">
                        
<h3>$400</h3>
                        
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        
<p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    </div>
                </div>
            
</div>

            
<div class="col-md-3 col-sm-6 hero-feature">
                
<div class="thumbnail">
                    
<img src="<c:url value='/resource/img/m4.jpeg'/>" alt="">
                    
<div class="caption">
                        
<h3>$200</h3>
                        
<p>HP cruzer 8GB Pen Drive V215b  Pen Drive V215b
.</p>
                        
<p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-primary">Add to cart</a>
                        
</p>
                    
</div>
                
</div>
            
</div>

           
<!-- /.row -->

        
<hr>

         --%>
<!-- Footer -->
        
<!-- <footer>
            <div class="row">
                
<div class="col-lg-12">
                                  
</div>
            
</div>
        
</footer>
 -->
    

 <!-- /.container -->

    <!-- jQuery -->
    
<script src="js/jquery.js"></script>

    
<!-- Bootstrap Core JavaScript -->
    
<script src="js/bootstrap.min.js">
</script>


</body>


</html>
