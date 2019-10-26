<%-- 
    Document   : logout
    Created on : Jul 28, 2019, 10:57:31 AM
    Author     : Porag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            if (session.getAttribute("email") == null || session.getAttribute("email") == "") {
        %>
        You are not logged in!!! <a href="login.jsp">Please Login</a><br></br> 
        <%} else {
                session.setAttribute("email", null);
                session.setAttribute("name", null);
                session.setAttribute("password", null);
                response.sendRedirect("login.jsp");
            }
        %>

    </body>
</html>


