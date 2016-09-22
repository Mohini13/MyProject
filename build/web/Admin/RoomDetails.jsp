<%-- 
    Document   : EditRoom
    Created on : 24-Mar-2016, 1:35:27 PM
    Author     : Mohini Chaudhary
--%>

<%@page import="entities.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Room room = new Room();
    try {
        room = (Room) request.getAttribute("room");
        if (room == null) {
            //out.print("room is null");
            //return;
            room = new Room();
        }

    } catch (Exception ex) {
        out.print(ex.getMessage());
    }

%>
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
            #body
            {
                background-color: #FBF8EF;
            }
            #log
            {
                margin-left: 500px;
                margin-right: 500px;
                margin-top: 30px;
                margin-bottom: 50px;
            }
            #Details
            {
                margin-top: 150px;
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
            <li class="navHover"><a href="AllRoomsServlet">Back</a></li>
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
            <div id="hed">
                <header id="head">Add Your Room</header>
            </div>
        

        <form name="form" id="log" action="RoomDetailsServlet" method="POST">

            <!--            Room ID : -->
            <input type="hidden"  name="room_number" required="required" value="<%= room.getRoom_number()%>"><p>
                Availability:
                <select name="room_availability" class="form-control">
                    <% if (room.getRoom_availability().equals("Y")) { %>
                    <option value="Y" selected> Available </option> 
                    <option value="N">Not Available </option>
                    <% } else { %>
                    <option value="Y"> Available </option> 
                    <option value="N" selected>Not Available </option>
                    <% }%>
                </select><p>
                Picture:
            <input type="file" class="form-control" class="btn btn-primary" name="picture" value="<%= room.getPicture()%>"><p>
                Room Type:
            <input type="text" class="form-control" name="room_type" value="<%= room.getRoom_type()%>"><p>
                Floor:
            <input type="text" class="form-control" name="floor" value="<%= room.getFloor()%>"><p>
                Area:
            <input type="text" class="form-control" name="area" value="<%= room.getArea()%>"><p>
                Daily Price:
            <input type="text" class="form-control" name="daily_price" value="<%= room.getDaily_price()%>" ><p>
                No of Beds:
            <input type="text" class="form-control" name="bedsNumber" value="<%= room.getBedsNumber()%>" ><p>
                Room Feature:
            <input type="text" class="form-control" name="room_feature" value="<%= room.getRoom_feature()%>"><p>

            <center><input type="submit" class="btn btn-primary" name="save" value="Save"/></center>
        </form>
    </body>
</html>
