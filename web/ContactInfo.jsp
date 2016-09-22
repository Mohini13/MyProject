<%-- 
    Document   : ContactInfo
    Created on : Apr 14, 2016, 5:00:31 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Confirmation</title>
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
                margin-left: 480px;
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
                    <li class="navHover"><a href="Login.jsp">Login</a></li> 
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
        <div><h1 id="Details">Confirmation Email</h1></div>
 
            <div id="divfrm">
            <%
                String submit = request.getParameter("submit");
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");

                if(submit != null)
                {
            %>

            Thank You Mr./Ms. <%= name %> <br/><br/> Your message has been sent.
            Please Review your Email and Phone to get response on right address"
            <br/><br/> Email: <%= email %> <br/> Phone Number: <%= phone %> <br/><br/>Best Regards<br/> Taj Hotel
            <%
                }
            %>
        </div>
        </div>
    </body>
</html>
