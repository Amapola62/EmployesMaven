<%-- 
    Document   : clientjsp
    Created on : 29 mars 2018, 13:58:49
    Author     : Formation
--%>

<%@ page language="java" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="m2i.compethance.employeemaven.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listes des clients</h1>
        <% for(Client oc: GestionClient.getAllClients())
            { %>
            <hr/>
            <div class='datarow'>Id : <%= oc.getId() %> <br/>
            Nom : <%= oc.getNom() %> <br/>
            Prenom : <%= oc.getPrenom() %> 
            <br/><hr/></div>
        <% } %>
    </body>
</html>
