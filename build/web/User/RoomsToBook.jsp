<%-- 
    Document   : RoomsToBook
    Created on : 31-Mar-2016, 7:16:52 PM
    Author     : Mohini Chaudhary
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
                margin-top: 60px;
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
                <a class="navbar-brand" href="BookingHistoryServlet"> My Bookings</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
                <ul class="nav navbar-nav navbar-right">
            <li class="navHover"><a href="Contact.jsp">Contact us</a></li>            
            <li class="navHover"><a href="Things.jsp">Things to do</a></li> 
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
            <li class="navHover"><a href="LogoutServlet">Logout</a></li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
            <div id="hed">
                <header id="head">Available Rooms To Book</header>
            </div>
        
        <table class="table table-striped" id="details" cellpadding="10">
            <tr>
                <th>Room ID</th>
                <th>Room Type</th>
                <th>Floor</th>
                <th>Area</th>
                <th>Daily Price</th>
                <th>No of Rooms</th>
                <th>Room Feature </th> 
                <th>Action</th>
            </tr>

            <%
                try {

                    List<Room> roomsList = (List<Room>) request.getAttribute("available_rooms");

                    for (Room room : roomsList) {
            %> <tr><td> <%=room.getRoom_number()%> </td> <p>
            <td> <%=room.getRoom_type()%> </td> 
            <td> <%=room.getFloor()%> </td> 
            <td> <%=room.getArea()%> </td> 
            <td> <%=room.getDaily_price()%> </td> 
            <td> <%=room.getBedsNumber()%> </td> 
            <td> <%=room.getRoom_feature()%> </td>
            <td>
                <form action="BookingPrepareServlet" method="POST">
                    <button type="submit" name="Room Number" class="btn btn-primary active" value="<%=room.getRoom_number()%>"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Book Room</button>
                </form>               
            </td>
        </tr><%
                }
            } catch (Exception ex) {
                ex.getMessage();
                ex.printStackTrace();
            }

        %>
    </table>
</body>
</html>
