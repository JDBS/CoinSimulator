<%-- 
    Document   : contador
    Created on : 08-nov-2017, 16:56:16
    Author     : Jaime D. Brito Sánchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <%  /* Carga y actualización de contador de visitas */
            final String CONTADOR = "contador";
            int contador =1;
            
            if(session.getAttribute(CONTADOR)==null){
                session.setAttribute(CONTADOR, 1);
            }else{
                contador=(Integer)session.getAttribute(CONTADOR);
                contador++;
                session.setAttribute(CONTADOR, contador);
            }
        %>
        <div class="content-box">
            <% if(contador<10){ %>
                <h3>Has visitado esta página <% out.print(contador); %> veces.</h3>
            <% }else{ %>
                <h3>Has completado el límite de visitas existosamente.</h3>
            <% } %>
            
            
            <% /*Link de vuelta */
                String link="\""+request.getContextPath()+"\"";
            %>
            <a href=<% out.print(link); %> >Volver</a>
        </div>
    </body>
</html>
