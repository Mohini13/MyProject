<%-- 
    Document   : BookingHistory
    Created on : 13-Apr-2016, 2:58:16 AM
    Author     : Robert Jr
--%>


<%@page import="database.DBBooking"%>
<%@page import="entities.Booking"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% List<Booking> bookings = new ArrayList<Booking>();
   bookings = (List<Booking>)request.getAttribute("bookings"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking History</title>
        
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
                <li class="navHover"><a href="RoomToBookServlet"> Available Rooms </a></li>
                <li class="navHover"><a href="LogoutServlet"> Logout</a></li>
            </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
            <div id="hed">
                <header id="head">Booked Rooms</header>
            </div>
     
        <table class="table table-striped" id="details" cellpadding="10">
            <tr>
                <th>Reference Number</th>
                <th>Room Type</th>
                <th>Daily Price</th>
                <th>Check-In Date</th>
                <th>Check-out Date</th>
                <th>Length of Stay</th>
                <th>Total Price</th>
                <th>Action</th>
            </tr>

            <%
                try {

                    

                    for (Booking booking : bookings) {
            %> <tr><td> <%=DBBooking.getReferenceNumber(booking)%> </td> <p>
                <td> <%=booking.getRoom().getRoom_type()%> </td> 
            <td> <%=booking.getRoom().getDaily_price() %> </td> 
            <td> <%=booking.getStartDate() %> </td> 
            <td> <%=booking.getEndDate() %> </td> 
            <td> <%=booking.getNumOfDays() %> </td> 
            <td> <%=booking.getPrice() %> </td>
            <td>
                <form action="BookingDeleteServlet" method="POST">
                    <button type="submit" name="refNumber" class="btn btn-danger active" value="<%=DBBooking.getReferenceNumber(booking)%>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete Booking</button>
                    <input type="hidden" name="roomNumber" value="<%=booking.getRoom().getRoom_number()%>">
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

