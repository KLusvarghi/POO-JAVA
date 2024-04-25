<%-- 
    Document   : tabuada
    Created on : 31/10/2022, 14:17:18
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
            boolean hasParameterN = request.getParameter("number") != null;            
            int number = 0;
            try {
                number = Integer.parseInt(request.getParameter("number"));
            }catch(Exception err) {
                errorMessage = err.getMessage();
            }
        %>
        <h1>Tabuada</h1>
        <h4><a href="index.html">Voltar</a></h4>
        <% if(errorMessage!= null){ %>
            <div style="color:red"> <%= errorMessage %> </div>
        <% } %>
        <form>
            <input type="number" name="number"/> +
            <input type='submit' name='somar' value='='/>
        </form>
        <% if(hasParameterN){ %>
            <table>
                <% for(int i= 1; i <= 10; i++){ %>
                    <tr>
                        <td><%= number %></td>
                        <td>x <%= i %> </td>
                        <td>= <%= (number*i) %> </td>
                    </tr>
                <% } %>
            </table>
        <% } %>
    </body>
</html>
