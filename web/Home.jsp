<%-- 
    Document   : Home
    Created on : Mar 18, 2016, 2:49:48 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br/><br/><br/><br/><br/>
    <center>
        <h2>
            <%
                String a=session.getAttribute("username").toString();
                out.println("Hello  "+a);
            %>
            </h2>
            <br/>
            <br/>
            <br/><br/><br/><br/><br/>
       
             <a href="Logout.jsp">Logout</a>
           
    </center>
        
    </body>
</html>
