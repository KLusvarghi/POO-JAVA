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
        // Um JSP fragment é uma parte do código JSP passado para um manipulador de tags que pode ser chamado quantas vezes forem necessárias.
        // Podendo assim por exemplo, chamar quantas vezes o navbar no meu código
        %>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <h1>Hello World!</h1>
        <%
            // JavaServer Pages é uma tecnologia que ajuda os desenvolvedores de software a criarem páginas web geradas dinamicamente baseadas em HTML, XML ou outros tipos de documentos. 
            // Podendo assim executar páginas HTML com códigos java dentro
            Date agora = new Date() ;
            out.println("<br>Hoje: " + agora);
        %>
        
        

    </body>
</html>
