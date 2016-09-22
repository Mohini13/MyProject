<%-- 
    Document   : Login
    Created on : 27-Mar-2016, 3:19:21 AM
    Author     : Kamalpreet Kaur
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
        
        <style>
            #log
            {
                margin-left: 500px;
                margin-right: 500px;
                margin-top: 50px;
            }
            #Details
            {
                margin-top: 150px;
                margin-left: 500px;
                margin-right: 500px;
            }
            #error
            {
                color: red;
                font-size: 16px;
                font-style: bold;
            }
            #body
            {
                background-color: #FBF8EF;
            }
        </style>
        
        <title>Login</title>
    </head>
    <body id="body">
    <center>
        <h2 id="Details">Signup Details</h2>
        
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
            <li class="navHover"><a href="Contact.jsp">Contact us</a></li>
            <li class="navHover"><a href="Availability.jsp">Check Availability</a></li>
            <li class="navHover"><a href="Things.jsp">Things to do</a></li> 
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
        <form action="LoginServlet" method="post" id="log">
            
            <p>Username:<input type="text" name="user_name" class="form-control" id="Username" placeholder="Username" required="required"></p>
            <p>Password:<input type="password" name="passwd" class="form-control" id="password" placeholder="Password"required="required"></p>
            <p><input type="submit" class="btn btn-success" value="Login"></p>
            <p><a href="Register.jsp" class="btn btn-success" role="button">Register</a></p> 

        </form>
        
        <div id="error">
        <%

            String error = (String) request.getAttribute("error");
            if (error != null) {
                out.println("<p>" + error + "</p>");
            }

        %>
        </div>
        
    </center>
</body>
</html>
