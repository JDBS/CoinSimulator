<%-- 
    Document   : juego.jsp
    Created on : 07-nov-2017, 11:47:05
    Author     : clase
--%>

<%@page import="es.cifpcm.util.Converter"%>
<%@page import="es.cifpcm.enumerations.Side"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="content-box">
            <%
                Side side=Side.getRandomSide(); /* Lado que ha tocado */

                /* Definición del lado introducido por el usuario */
                Side userSide=null;
                if(request.getParameterValues("coin")!=null){
                    String strSide=request.getParameterValues("coin")[0];
                    userSide=Side.stringToSide(strSide);
                }

                double quantity = Double.MIN_VALUE;
                if(request.getParameterValues("money")!=null){
                    String strMoney=request.getParameterValues("money")[0];
                    quantity = Converter.stringToDouble(strMoney);
                }

            %>

            <%
                if(userSide!=null && quantity!=Double.MIN_VALUE){
            %>
                <h1>Resultado</h1>
                <h2> <%
                        if(side==Side.face){
                    %>
                        Ha salido cara.
                    <%
                        }else{
                    %>
                        Ha salido cruz
                    <%
                        }
                    %>
                </h2>
                <h3>
                    <%
                        if(side==userSide){
                    %>
                        ¡Enhorabuena! ¡Has Ganado! Tu recompensa es de 
                        <% out.println(quantity*2 + "€"); %>
                    <%
                        }else{
                    %>
                        ¡Vaya! ¡Has Perdido!
                    <%
                        }
                    %>
                </h3>
            <%
                }else{
            %>
                <em>Los parámetros no han sido introducidos de forma correcta.</em2>
            <%
                }
            %>
            <%
                String link="\""+request.getContextPath()+"/"+"index_juego.html"+"\"";
            %>
            <a href=<% out.print(link); %> >Volver</a>
        </div>
    </body>
</html>
