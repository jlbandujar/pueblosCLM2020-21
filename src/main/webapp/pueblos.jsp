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
    </head>
    <body>
        <h1>Pueblos de CLM</h1>
        <% 
            String provinciaActiva = ( String ) request.getAttribute("provincia");
            ArrayList<String> provincias = ( ArrayList<String> ) request.getAttribute("provincias");
            ArrayList<String> pueblos = ( ArrayList<String> ) request.getAttribute("pueblos");
         %>
         Provincia Seleccionada: <%=provinciaActiva%> <br>
         <form action="Poblaciones" method="post">
         Provincia:<select name="provincia">
             
             <% 
                 
                 for ( int i=0;i<provincias.size(); i++ ) { 
                 String textoSelected="";
                 if ( provincias.get(i).equals(provinciaActiva)) {
                     textoSelected = " selected";
                 }
                 %>
                     <option <%=textoSelected%> value="<%=provincias.get(i)%>"><%=provincias.get(i)%></option>
             <% } %>
         </select>
         <br>
          Poblacion:<select name="pueblo">
             
             <% 
                 
                 for ( int i=0;i<pueblos.size(); i++ ) { 
                 %>
                     <option value="<%=pueblos.get(i)%>"><%=pueblos.get(i)%></option>
             <% } %>
         </select>
         <input type="submit" value="Enviar">
         </form>
    </body>
</html>
