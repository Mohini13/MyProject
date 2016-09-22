<%-- 
    Document   : BookingRoom3
    Created on : 12-Apr-2016, 8:55:55 PM
    Author     : Robert Jr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
               
        <style>
            #divfrm
            {
                margin-left: 500px;
                margin-right: 500px;
            }
            #log
            {
                margin-left: 500px;
                margin-right: 500px;
                margin-top: 50px;
            }
            #Details
            {
                margin-top: 80px;
                margin-left: 500px;
                margin-right: 500px;
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
            #details
            {
                margin-top: 40px;
            }
            #full
            {
                margin-bottom: 50px;
            }
            #conf
            {
                font-size: 16px;
            }
            #body
            {
                background-color: #FBF8EF;
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
                <li class="navHover"><a href="LogoutServlet">Logout</a></li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
       
    <center>
        <h1 id="Details">Step 3 of 3</h1>
        <div id="divfrm">
        <h3>Booking Confirmation</h3>
        <p><%=(request.getAttribute("confirmation"))%><br><br
        </div>
        <form action="RoomToBookServlet">
            <input type="submit" class="btn btn-success" value="Back to home page">
        </form><br/><br/>
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong>Congratulations!</strong> You Completed your Booking.
        </div>
    </center>           
    </body>
</html>