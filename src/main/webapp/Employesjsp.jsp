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
    <form action="Miseajour.jsp" method="POST">
        <input type="submit" name="miseajourEmployes" value="Mettre à jour"> &nbsp; &nbsp;<br>
    </form>
    <form action="Supprimer.jsp" method="POST">
        <input type="submit" name="supprimerEmployes" value="Supprimer"> &nbsp; &nbsp;<br>
    </form>
</body>
</html>
