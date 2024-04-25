<%-- 
    Document   : juros-compostos
    Created on : 07/11/2022, 14:45:37
    Author     : Ghost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Juros Compostos</h1>
        <%
            Double capital = 0.0;
            Double juros = 0.0;
            Integer meses = 0;
            String error = null;
             try {
            capital = Double.valueOf(request.getParameter("vlCapital"));
            juros = Double.valueOf(request.getParameter("vlJuros"));
            meses = Integer.valueOf(request.getParameter("vlTempo"));
             } catch (Exception e) {
            error = e.getMessage();
            }
            double jurosS = 1 + (juros / 100);
            //double composto = p * Math.pow(juros,t);
            double composto = capital * Math.pow(jurosS, meses);
        %>

        <form>
        <div class="mb-3">
            <label class="form-label">Digite o valor capital</label>
            <input type="number" class="form-control" name="vlCapital" >
        </div>
        <div class="mb-3">
            <label class="form-label">Digite o valor do juros</label>
            <input type="number" class="form-control" name="vlJuros">
        </div>
        <div class="mb-3">
            <label class="form-label">Digite o valor do tempo</label>
            <input type="number" class="form-control" name="vlTempo">
        </div>
        <button type="submit" class="btn btn-primary" name="calcular">Calcular</button>
        </form>
        <hr>
        <% if(error != null) { %>
            <span>Informe os valores</span>
        <% } else %>
        <h2> Juros Composto <%= composto %></h2>
    </body>
</html>
