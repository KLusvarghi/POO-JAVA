<%-- 
    Document   : datahora
    Created on : 31/10/2022, 14:17:04
    Author     : Ghost
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Data e Horta!</h1>
        <h4><a href="index.html">Voltar</a></h4>
        <% 
            Date now = new Date(); 
            out.println("<h3>Hoje: " + now + "</h3>");
        %>
        
    

