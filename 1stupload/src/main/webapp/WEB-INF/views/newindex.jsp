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
padding-top: 0px; /* If you're making other pages, make sure there is 50px of padding to make sure the navbar doesn't overlap content! */
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
.we
{
font-size:xx-large;
color:white;
}
</style>

</head>

<body>
<%@include file="header.jsp" %>

   <%-- <!-- Navigation -->
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
                <a class="navbar-brand" href="index">Lyedianz store</a>
            
</div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
<ul class="nav navbar-nav">
                    
<li>
                        
<a href="#abt">About</a>
                    
</li>
                    
<!-- <li>
                        
<a href="#">Services</a>
                    
</li>
       -->              
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="page4">Normalpendrives</a></li>
          <li><a href="page5"> Modern pendrives</a></li>
          
        </ul>
      </li>
                       
</li>
               
</ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a data-toggle="modal" href="#signup" datatarget="#signup"><span class="glyphicon glyphicon-user"></span> Welcome ${userBean.userId }</a></li>
      </ul>      
</div>
            
<!-- /.navbar-collapse -->
        
</div>
        
<!-- /.container -->
    
</nav>

    

 --%>
    <!-- Header -->
   
    <div class="intro-header">
      
  <div class="container-fluid ">

           
 <div class="row">
               
 <div class="col-lg-12">
                   
 <div class="intro-message">
 
<div class="we">

 Welcome ${userBean.userName }
 </div>
           <br>
           <br>             
                      

  <h1 style="color: #ffff;">PENDRIVES WORLD</h1>
    
 
                      
  
                
    </div>
            
    </div>
            </div>

   
     </div>
     
   <!-- /.container -->

    </div>
    <!-- /.intro-header -->

 
   <!-- Page Content -->

	
<a  name="services"></a>
  
  <div class="content-section-a">

  
      <div class="container">
         
   <div class="row">
             
   <div class="col-lg-5 col-sm-6">
                 
                   
   <div class="clearfix"></div>
            
       <h2 class="section-heading">FLASHDRIVE </h2>
  
                <h3 style=color:red> <p class="lead">This pendrive consists of 3 ports.
                                     <li>pendrive</li> 
                                     <li>sdcard </li>
                                     <li>cardreader</li>

</p></h3>
    
    
            </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                 
   <img class="img-responsive" src="<c:url value='/resource/img/lyeda.jpg'/>" height=300 width=300 alt="">

                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        

<div class="container">

            <div class="row">
               
 <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
               
                    

  <div class="clearfix"></div>
                  
   <h2 class="section-heading">FLASHDRIVE FOR MOBILE</h2>
                    
<p class="section-heading" style=color:red>THIS PENDRIVE IS USEFUL FOR APPLE AND SAMSUNG MOBLIE USER</p>
<h3 style=color:red><li>Memorycard</li>
<li>Mobile port</li></h3>
           </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
          

          <img class="img-responsive" src="<c:url value='/resource/img/lyeda1.jpg'/>" alt="">
                </div>
            </div>

        

</div>
  
             <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

	
<a  name="contact"></a>
   
 <div class="banner" id=abt>

     
   <div class="container">
  
         <div class="row">
         
                      
    <h2>ABOUT US:</h2>
 

 <p>At lyedianz store, our vision is to be Earth's most customer centric company; to build a place where people can come to find and discover virtually anything they want to buy online. With Amazon.in, we endeavour to build that same destination in India by giving customers more of what they want – vast selection, low prices, fast and reliable delivery, and a trusted and convenient online shopping experience – and provide sellers a world-class e-commerce platform. We are committed to ensure 100% Purchase Protection for your shopping done on Amazon.in so that you can benefit from a safe and secure online ordering experience, convenient payment options such as cash on delivery, easy returns and enjoy a completely hassle free online shopping expserience.</p>
   
                                              
                  
                         </div></div> </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->
  
    
 
   

  <!-- Footer -->
    <footer>
 
                          
                  
                    
                </footer>

    <!-- jQuery -->
   
 <script src="js/jquery.js"></script>

  
  <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
    