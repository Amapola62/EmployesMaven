<%-- 
    Document   : Employesshow2
    Created on : 30 mars 2018, 16:12:45
    Author     : Formation
--%>
<%-- 
    Document   : Employesjsp
    Created on : 29 mars 2018, 14:28:59
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
        <h1>Liste des employés</h1>
        <% for (Employesdetails oe : GestionEmployes.getAllEmployes()) {%>
        <hr/>
        <div class="datarow">Id : <%= oe.getId()%><br/>
            Nom : <%= oe.getEname()%><br/>
            Numéro d'identification : <%= oe.getEnumber()%>
            <br/><hr/></div>
            <% }%>
    </div>
    <hr/>
    <a href="EmployesAdd.jsp">Retour</a>
</body>
</html>

