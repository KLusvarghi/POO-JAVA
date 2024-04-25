<%-- 
    Document   : newjsp
    Created on : 31/10/2022, 15:40:10
    Author     : Ghost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Calendar cal = Calendar.getInstance();	
            System.out.println("Dias em Outubro : " +   cal.getActualMaximum(Calendar.DAY_OF_MONTH));
        }%>
    </body>
</html>
