<%-- 
    Document   : ShowAllRooms
    Created on : Apr 1, 2016, 1:39:12 PM
    Author     : kamalpreet
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Room"%>
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
        <style>
            #body
            {
                background-color: #FBF8EF;
            }
            #table
            {
                margin-top:50px;
                margin-left: 10px;
                margin-right: 10px;
            }
            #foot
            {
                text-align: center;
            }
            #Details
            {
                margin-top: 80px;
                margin-left: 500px;
                margin-right: 500px;
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
                <a class="navbar-brand" href="Availability.jsp">Back</a></li>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
        <ul class="nav navbar-nav navbar-right">
            <li class="navHover"><a href="Login.jsp">Login</a></li>
            <li class="navHover"><a href="Contact.jsp">Contact us</a></li>
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
        </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
         <h1 id="Details">Available Rooms</h1>
         <table class="table table-striped" id="table" cellspacing="4">
            <tr>
                <th>Floor</th>
                <th>Daily Price</th>
                <th>Number of Beds</th> 
                <th>Action</th>
            </tr>
           
                <%                    
                    try {

                        List<Room> roomsList = (List<Room>)request.getAttribute("showrooms");
                        
                        if(roomsList != null){
                        for (Room room : roomsList) {
                %>          <tr>
                            <td> <%=room.getFloor()%> </td> 
                            <td> <%=room.getDaily_price()%> </td> 
                            <td> <%=room.getBedsNumber()%> </td> 
                            <td><a href="ShowMore.jsp?rid=<%=room.getRoom_number()%>" class="btn btn-warning " role="button">Show More <span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></td>
                            </tr>
                <%
                        }
                       }
                        else if(roomsList == null)
                        {
                            System.out.println("Sorry, This Room is not Available!!!!!");
                        }
                    
                    } catch (Exception ex) {
                        ex.getMessage();                           
                        ex.printStackTrace();
                    }

                %>
        </table>  
        <footer id="foot"><a href="Availability.jsp" class="btn btn-primary" role="button"> Back to Search </a></footer>
    </body>
</html>
