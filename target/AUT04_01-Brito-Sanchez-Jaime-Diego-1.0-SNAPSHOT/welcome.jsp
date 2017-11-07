<%-- 
    Document   : index.jsp
    Created on : 07-nov-2017, 11:42:27
    Author     : clase
--%>

<%@page import="es.cifpcm.util.CurrentDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="content-box">
            <%
                CurrentDate currentDate = new CurrentDate();
            %>
            <h1>Bienvenido</h1>
            <h3>Son las <% out.print(currentDate.getHour()); %> 
                horas del dia <% out.print(currentDate.getDay()); %> 
                del mes <% out.print(currentDate.getMonth()); %> 
                del año <% out.print(currentDate.getYear()); %> </h3>
            <a href="index_juego.html" >Acceder</a>
        </div>
    </body>
</html>
