<%@page contentType="text/html" import="java.util.*, java.text.*"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        // Um JSP fragment � uma parte do c�digo JSP passado para um manipulador de tags que pode ser chamado quantas vezes forem necess�rias.
        // Podendo assim por exemplo, chamar quantas vezes o navbar no meu c�digo
        %>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <h1>Hello World!</h1>
        <%
            // JavaServer Pages � uma tecnologia que ajuda os desenvolvedores de software a criarem p�ginas web geradas dinamicamente baseadas em HTML, XML ou outros tipos de documentos. 
            // Podendo assim executar p�ginas HTML com c�digos java dentro
            Date agora = new Date() ;
            out.println("<br>Hoje: " + agora);
        %>
        
        

    </body>
</html>
