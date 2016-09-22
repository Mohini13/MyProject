<%-- 
    Document   : Availability
    Created on : Mar 18, 2016, 4:00:03 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
                     
        <style type="text/css">
            #cen
            {
                text-align: center;
            }
            #body {
                    padding: 15px 0 350px 0;
                    background: url(Photos/HomePage/Home.jpg)no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
            }
            #head
            {
                margin-top: 50px;
                font-family: 'Open Sans', sans-serif;
                font-size: 2.5em;
                border: 1px solid #555;
                background-color: rgba(0,0,0,0.6);
                padding-top: 20px;
                height: 75px;
                color: #fff;
                font-weight: 500;
                line-height: 40px;
                padding-left: 50px;
                text-align: center;
            }
            #Details
            {                    
                   width: 700px;
		   background-color: whitesmoke;
		   margin: 20px;
		   margin-right: 300px;
                   margin-left: 300px;
		   padding: 6px 14px;
		   font-size: 14pt;
		   line-height: 150%;                
            }
            
            #home
            {
                color: gold;
            }
            
            #button
            {
                align: center;
                height: 30px;                
	        margin: 20px auto;
	        padding: 0px 15px;
                margin-right: 300px;
                margin-left: 300px;
            }
            
           #foot 
           {
                font-family: 'Open Sans', sans-serif;
                font-size: 1.5em;
                border: 1px solid #555;
                background-color: rgba(0,0,0,0.6);
                height: 45px;
                color: #fff;
                padding-top: 10px;
                font-weight: 500;
                line-height: 20px;
                padding-left: 25px;
                text-align: center;                           
           }
        </style>
        
    </head>
    <body id="body">
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
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
        </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
            <div id="hed">
            <header id="head">Check Availability</header>
            </div>
        <form action="RoomsServlet" method="post" id="Details">
            <table class="table table-striped" >
            <tr>
            <td>
                <h3 class="form-control"><b>Floors</b></h3>
            <select name="floorsj" class="form-control" id="cen">    
                <option>-- Select a Floor --</option>
                <option>Ground</option>
                <option>First</option>
                <option>Second</option>
                <option>Third</option>
                <option>Fourth</option>
            </select>
            </td>
            </tr>
            <tr>
            <td>
                <h3 class="form-control"><b>Price</b></h3>            
            <div class="form-control">
                <select name="price1">   
                <option>-- Select a Price --</option>
                <option>100</option>
                <option>200</option>
                <option>300</option>
                <option>400</option>
                <option>500</option>
                <option>1000</option>
                <option>2000</option>
            </select>
            <select name="price2"> 
                <option>-- Select a Price --</option>
                <option>200</option>
                <option>300</option>
                <option>400</option>
                <option>500</option>
                <option>1000</option>
                <option>2000</option>
                <option>3000</option>
            </select>
            </div>
            </td>
            </tr>
            <tr>
            <td>            
                <h3 class="form-control" ><b>Number of beds</b></h3>
            <select name="noBed" class="form-control"> 
                <option>-- Select No of Beds --</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
            </td>
            </tr>
            </table>

            <button id="button" type="submit" class="btn btn-primary btn-lg">
               Search <span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
        </form>
        </div>
                <footer id="foot"><a id="home" href="HotelHome.jsp"/>Taj Hotels</footer>
        </div>  
    </body>
</html>
