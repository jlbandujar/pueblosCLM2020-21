<%-- 
    Document   : pueblos
    Created on : 25-ene-2021, 21:17:32
    Author     : DAW2-PROFESOR
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Pueblos de CLM</h1>
        <% 
            String provinciaActiva = ( String ) request.getAttribute("provincia");
            ArrayList<String> provincias = ( ArrayList<String> ) request.getAttribute("provincias");
            ArrayList<String> pueblos = ( ArrayList<String> ) request.getAttribute("pueblos");
         %>
         Provincia Seleccionada: <%=provinciaActiva%> <br>
         <form action="Poblaciones" method="get">
         Provincia:<select class="form-control"  name="provincia">
             
             <% 
                 
                 for ( String prov: provincias ) { 
                 String textoSelected="";
                 if ( prov.equals(provinciaActiva)) {
                     textoSelected = " selected";
                 }
                 %>
                     <option <%=textoSelected%> value="<%=prov%>"><%=prov%></option>
             <% } %>
         </select>
         <br>
          Poblacion:<select class="form-control"  name="pueblo">
             
             <% 
                 
                 for ( String pue: pueblos ) { 
                 %>
                     <option value="<%=pue%>"><%=pue%></option>
             <% } %>
         </select>
         <input type="submit" class="btn btn-primary" value="Enviar">
         </form>
        </div>
    </body>
</html>
