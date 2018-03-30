<%-- 
    Document   : commandejsp
    Created on : 29 mars 2018, 13:43:52
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste des commandes</h1>
        <% for(Commande oc: GestionCommande.getAllCommandes())
            { %>
            <hr/>
            <div class='datarow'>Id : <%= oc.getId() %> <br/>
            Nom : <%= oc.getNomcde()%> <br/>
            Date : <%= oc.getDatecde()%> 
            <br/></div>
            <% Client ocl = oc.getClient(); %>
            <div class='datarow'>Id client : <%= ocl.getId() %> <br/>
            Nom client : <%= ocl.getNom() %> <br/>
            Prénom : <%= ocl.getPrenom() %> 
            <br/><hr/></div>
        <% } %>
    </body>
</html>
