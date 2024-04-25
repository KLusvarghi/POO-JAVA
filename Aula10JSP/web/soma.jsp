<%-- 
    Document   : soma
    Created on : 31/10/2022, 14:17:10
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
        <%
            String errorMessage = null;
            // variavel que recebe uma requisição dos parametros n1 e n2 e verifica se é diferente de null
            boolean hasParameterN1 = request.getParameter("n1") != null;            
            boolean hasParameterN2 = request.getParameter("n2") != null;
            double n1 = 0, n2 = 0, soma = 0;
            try {
                n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
                soma = n1+n2;
            }catch(Exception err) {
                errorMessage = err.getMessage();
            }
        %>
        <h1>Soma: </h1>
        <h4><a href="index.html">Voltar</a></h4>
        <div>
            <% if(errorMessage!= null){ %>
            <div style="color:red"> <%= errorMessage %> </div>
            <% } %>
            <form>
                <input type="number" name="n1"/> +
                <input type="number" name="n2"/>
                <input type='submit' name='somar' value='='/>
            </form>
            <%
            if(hasParameterN1 && hasParameterN2) {%>
                <%= n1 %> + <%= n2 %> = <%= soma %>
            <% } %>
        </div>
    </body>
</html>
