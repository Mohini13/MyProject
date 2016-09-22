<%-- 
    Document   : ShowMore
    Created on : Apr 7, 2016, 2:43:02 PM
    Author     : kamalpreet
--%>

<%@page import="database.DBRoom"%>
<%@page import="java.util.List"%>
<%@page import="entities.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
        <style>
            h2
            {
                margin-top: 80px;
                font-family: 'Open Sans', sans-serif;
                font-size: 2.5em;
                font-weight: 500;
                line-height: 40px;
                padding-left: 0px;
                text-align: center;
                font:italic bold 30px Georgia, serif;
            }
            #detail
            {
                font-size: 14px;
            }
            body
            {
                background-color: #FBF8EF;
            }
            #Details
            {
                margin-top: 40px;
                margin-left: 500px;
                margin-right: 500px;
            }
            #foot
            {
                margin-bottom: 100px;
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
                <a class="navbar-brand" href="Availability.jsp">Back to Search</a></li>
                
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
        
            <div>
                
              <% int RoomNo=  Integer.parseInt(request.getParameter("rid"));
                  System.out.println("room no "+RoomNo);
               List<Room> roomsList = DBRoom.getRoomDetails(RoomNo);
                        if(roomsList != null){
                        for (Room room : roomsList) {
                %>        
                            <h2><%=room.getRoom_type()%><h2>
                            <div id="Details" >
                            <img src="<%= room.getPicture()%>" alt="Mountain View" style="width:350px;height:200px;">
                            </div><br/>
                            <div id="detail"><b>
                            Room ID: <%=room.getRoom_number()%><br/><br/>                                                                                                   
                            Floor: <%=room.getFloor()%> <br/><br/>  
                            Area: <%=room.getArea()%> <br/><br/>                                                       
                            Daily Price: <%=room.getDaily_price()%> <br/><br/>  
                            Number of Beds: <%=room.getBedsNumber()%> <br/><br/> 
                            Room Feature: <%=room.getRoom_feature()%></b> 
                            </div>

            <footer id="foot"><a href="Login.jsp" class="btn btn-primary " role="button">Book <span class="glyphicon glyphicon-book" aria-hidden="true"></span></a></footer>
                         
            </div>               
                 <%
                      }
                    }
                 %>
            
               
    </body>
</html>
