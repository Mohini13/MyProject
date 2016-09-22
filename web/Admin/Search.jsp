<%-- 
    Document   : Search
    Created on : 11-Mar-2016, 7:48:54 PM
    Author     : Mohini Chaudhary
--%>

<%@page import="entities.Booking"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="entities.Room"%>
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
                <header id="head">List of Booked Rooms</header>
            </div>
        
         
        <table class="table table-striped" id="details" cellpadding="10">
            <tr>
                <th>Reference ID </th>
                <th>Username</th>
                <th>Room Number</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Number of Day</th>
                <th>Daily Price</th>
             </tr>

            <%
                try {

                    List<Booking> BookList = (List<Booking>) request.getAttribute("Booked_Room");

                    for (Booking book : BookList) {
            %> <tr><td> <%=book.getRef_number()%> </td> <p>
            <td><%= book.getUser().getUser_name()%></td>  
            <td><%= book.getRoom().getRoom_number()%></td> 
            <td> <%=book.getStartDate()%> </td> 
            <td> <%=book.getEndDate()%> </td> 
            <td> <%=book.getNumOfDays()%> </td> 
            <td> <%=book.getRoom().getDaily_price()%> </td> 



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
