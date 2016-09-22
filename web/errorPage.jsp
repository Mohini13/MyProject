<%-- 
    Document   : errorPage
    Created on : Apr 8, 2016, 6:39:56 PM
    Author     : Mohini Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error</h1>
        <% String msg = "";            
            msg = (String) request.getAttribute("error");
            out.print(msg);
        %>
    </body>
</html>
