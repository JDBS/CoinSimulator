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
                
                /* Cantidad introducida por el usuario */
                double quantity = Double.MIN_VALUE;
                if(request.getParameterValues("money")!=null){
                    String strMoney=request.getParameterValues("money")[0];
                    quantity = Converter.stringToDouble(strMoney);
                }

            %>

            <% /* Chequeo de errores en parámetros */
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
                
                    <%
                        if(side==userSide){
                    %>
                        <img src="https://misionfortuna.files.wordpress.com/2013/11/dinero.jpg"/>
                        <h3>
                            ¡Enhorabuena! ¡Has Ganado! Tu recompensa es de 
                            <% out.println(quantity*2 + "€"); %>
                        </h3>
                    <%
                        }else{
                    %>
                        <img src="http://slowinver.com/wp-content/uploads/2014/11/arruinado-en-inversiones.jpg"/>
                        <h3>
                            ¡Vaya! ¡Has Perdido!
                        </h3>
                    <%
                        }
                    %>
                
            <%
                }else{ /* Mensaje de error */
            %> 
                <em>Los parámetros no han sido introducidos de forma correcta.</em2>
            <%
                }
            %>
            <% /* Link de retorno */
                String link="\""+request.getContextPath()+"/"+"index_juego.html"+"\"";
            %>
            <a href=<% out.print(link); %> >Volver</a>
        </div>
    </body>
</html>
