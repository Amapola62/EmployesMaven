<%-- 
    Document   : Supprimer
    Created on : 30 mars 2018, 11:49:59
    Author     : Formation
--%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="m2i.compethance.employeemaven.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
        <title>Supprimer</title>
    </head>
    <body>
        <h1>Supprimer</h1>
        <form action="EmployesControllerDelete" method="POST">
        <select name="id">
            <% for (Employesdetails oe : GestionEmployes.getAllEmployes()) {%>
            <option value="<%= oe.getId()%>"><%= oe.getId()%></option>
            <% }%>
        </select>
        <input type="submit" name="supprimer" value="Ok">
        </form>
    </body>
</html>
