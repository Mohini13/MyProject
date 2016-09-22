<%-- 
    Document   : PhotoGallary
    Created on : Mar 25, 2016, 2:54:21 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photo Gallery</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
        
        
        <style type="text/css">
            #back
            {
                font-size: 20px;
                text-align: center;
                color: orangered;
            }
            #gallery
            {
                background-color: #FFFDD0;    
                margin-top: 55px;
            } 
            #down
            {
                background-color: black;
            }
            #foot
            {
                color: white;
                text-align: center;                
            }
        </style>
        
    </head>
    <body bgcolor="#000000">
        
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="HotelHome.jsp"><b>Taj Hotels</b></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
        <ul class="nav navbar-nav navbar-right">
            <li class="navHover"><a href="Login.jsp">Login</a></li>
            <li class="navHover"><a href="Contact.jsp">Contact us</a></li>
            <li class="navHover"><a href="Availability.jsp">Check Availability</a></li>
            <li class="navHover"><a href="Things.jsp">Things To Do</a></li>
        </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
        <div id="gallery">
            <header id="head"><h1><img src="Photos/TajLogo.jpg"/></h1></header>
            <div id="pics">
                <ul>
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(1).jpg" title="Taj Hotel"><img src="Photos/images/Taj(1).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(2).jpg" title="Taj Hotel"><img src="Photos/images/Taj(2).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(3).jpg" title="Taj Hotel"><img src="Photos/images/Taj(3).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(4).jpg" title="Taj Hotel"><img src="Photos/images/Taj(4).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(5).jpg" title="Taj Hotel"><img src="Photos/images/Taj(5).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(6).jpg" title="Taj Hotel"><img src="Photos/images/Taj(6).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(7).jpg" title="Taj Hotel"><img src="Photos/images/Taj(7).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(8).jpg" title="Taj Hotel"><img src="Photos/images/Taj(8).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(9).jpg" title="Taj Hotel"><img src="Photos/images/Taj(9).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(10).jpg" title="Taj Hotel"><img src="Photos/images/Taj(10).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(11).jpg" title="Taj Hotel"><img src="Photos/images/Taj(11).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(12).jpg" title="Taj Hotel"><img src="Photos/images/Taj(12).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(13).jpg" title="Taj Hotel"><img src="Photos/images/Taj(13).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(14).jpg" title="Taj Hotel"><img src="Photos/images/Taj(14).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(15).jpg" title="Taj Hotel"><img src="Photos/images/Taj(15).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(16).jpg" title="Taj Hotel"><img src="Photos/images/Taj(16).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(17).jpg" title="Taj Hotel"><img src="Photos/images/Taj(17).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(18).jpg" title="Taj Hotel"><img src="Photos/images/Taj(18).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(19).jpg" title="Taj Hotel"><img src="Photos/images/Taj(19).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(20).jpg" title="Taj Hotel"><img src="Photos/images/Taj(20).jpg"/></a></oi> 
                    <oi><a class="fancybox" rel="group" href="Photos/Taj(21).jpg" title="Taj Hotel"><img src="Photos/images/Taj(21).jpg"/></a></oi> 
                </ul>  
            </div>    
            <footer id="foot">
                <div id="down">
                @All rights are Reserved
                </div><br/>
                <p><a id="back" href="HotelHome.jsp"/>Taj Hotels</p> 
            </footer>         
        </div>
       
        <!-- Add jQuery library -->
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        <!-- Add mousewheel plugin (this is optional) -->
        <script type="text/javascript" src="lib/jquery.mousewheel-3.0.6.pack.js"></script>
        
        <!-- Add fancyBox -->
        <link rel="stylesheet" href="source/jquery.fancybox.css" type="text/css" media="screen" />
        <script type="text/javascript" src="source/jquery.fancybox.pack.js"></script>

        <script type="text/javascript">
	$(document).ready(function() {
		$(".fancybox").fancybox();
	});
        </script>       
    </body>
</html>
