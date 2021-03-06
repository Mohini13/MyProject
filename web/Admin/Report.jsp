<%-- 
    Document   : Report
    Created on : Apr 15, 2016, 5:48:28 PM
    Author     : Mohini Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="source/Styles/HomeCss.css" type="text/css">
         <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        
         <style>
            #body
            {
                background-color: #FBF8EF;
            }
            #log
            {
                margin-left: 500px;
                margin-right: 500px;
                margin-top: 50px;
            }
            #Details
            {
                margin-top: 50px;
            }
            #end
            {
                margin-bottom: 50px;
            }
            #head            
            {
                margin-top: 80px;
                font-family: 'Open Sans', sans-serif;
                font-size: 2.5em;
/*                border: 1px solid #555;
                background-color: rgba(0,0,0,0.6);*/
                padding-top: 20px;
                height: 75px;
                font-weight: 500;
                line-height: 40px;
                padding-left: 50px;
                text-align: center;
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
            <li class="navHover"><a href="AllRoomsServlet">Back</a></li>
            <li class="navHover"><a href="LogoutServlet"> Logout</a></li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
            <div id="hed">
                <header id="head">Searching........</header>
            </div>

        <form action="SearchServlet" method="post" id="details">
            <Center>
                <h3> Check In Date:</h3>
            <input type="date" name="startDate" required="true"><br><br>
           <h3> Check out date:</h3>
            <input type="date" name="endDate" required="true"><br><br>
            <h3>Floors</h3>
            <select name="floor">    
                <option value="%">Any</option>
                <option>First</option>
                <option>Second</option>
                <option>Third</option>
                <option>Fourth</option>
            </select>
             <h3>Price</h3>            
            <select name="daily_price"> 
                <option value="%">Any</option>
                <option>200</option>
                <option>300</option>
                <option>400</option>
                <option>500</option>
            </select>


            <p>
                <button id="button" type="submit" class="btn btn-primary btn-lg">
               Search <span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </p>
            </center>
        </form>
    </body>
</html>
