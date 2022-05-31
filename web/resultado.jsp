<%@page import="br.uninove.Soma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    float n1 = Float.parseFloat(request.getParameter("n1"));
    float n2 = Float.parseFloat(request.getParameter("n2"));
    float resultado;
    Soma soma = new Soma();
    
    soma.n1 = n1;
    soma.n2 = n2;
    
    resultado = soma.calcular();

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <hr>
        <ul>
            <li><b>Resultado: </b><%= String.format("%.2f", resultado)%></li>
        </ul>
        <br>
        <a href="./">Calcular novamente</a>
    </body>
</html>
