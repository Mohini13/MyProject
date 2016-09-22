<%-- 
    Document   : BookingRoom1
    Created on : 7-Apr-2016, 1:54:10 PM
    Author     : Mohini Chaudhary
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="entities.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Room selectedRoom = (Room)request.getAttribute("room");
   request.getSession().setAttribute("room", selectedRoom);
   LocalDate today = LocalDate.now(); %>

   
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
                <li class="navHover"><a href="RoomToBookServlet"> Available Rooms</a></li>
                <li class="navHover"><a href="LogoutServlet">Logout</a></li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <center id="full">
        <form action="User/BookingRoom2.jsp" method="POST">
            <h1 id="Details">Step 1 of 3</h1>
            <h3>Selected Room Details</h3>
            <div id="divfrm">
                Room Number:
                <input type="number" name="roomNumber" class="form-control" value="<%=(selectedRoom.getRoom_number())%>" readonly="true"><p>
                Picture: 
                <input type="text" name="picture" class="form-control" value="<%=(selectedRoom.getPicture())%>" readonly="true"><br><br>
                Room Type: 
                <input type="text" name="roomType" class="form-control" value="<%=(selectedRoom.getRoom_type())%>" readonly="true"><br><br>
                Floor: 
                <input type="text" name="floor" class="form-control" value="<%=(selectedRoom.getFloor())%>" readonly="true"><br><br>
                Hotel Area: 
                <input type="text" name="area" class="form-control" value="<%=(selectedRoom.getArea())%>" readonly="true"><br><br>
                Daily Price ($): 
                <input type="number" name="dailyPrice" class="form-control" value="<%=(selectedRoom.getDaily_price())%>" readonly="true"><br><br>
                Room Occupancy: 
                <input type="number" name="bedsNumber"class="form-control" value="<%=(selectedRoom.getBedsNumber())%>" readonly="true"><br><br>
                Additional Features:
            <input type="text" name="roomFeatures" class="form-control" value="<%=(selectedRoom.getRoom_feature())%>" readonly="true"><p>
            <h3>Additional Stay Details</h3>
                Check In Date:
                <input type="date" name="startDate" class="form-control" required="true"><br><br>
                Check out date:
                <input type="date" name="endDate" class="form-control" required="true"><br><br>
                Special Request:<br>
                <textarea class="form-control" rows="3"></textarea>                    
            <p>
            </div> 
                
            <input type="submit" class="btn btn-success" name="book" value="Step 2>>"/><br><br>
            <input type="reset" class="btn btn-success" value="Reset Form"/>
            </p>
        </form>
        <form action="RoomToBookServlet">
            <input type="submit" class="btn btn-success" value="Abort Booking">
        </form><br/><br/> 
            <div class="progress">
                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                  <span class="sr-only">20% Complete</span>
            </div>
          </div>
    </Center>
    </body>
</html>

