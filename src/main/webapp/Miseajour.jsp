<%-- 
    Document   : Miseajour
    Created on : 30 mars 2018, 10:00:24
    Author     : Formation
--%>

<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="m2i.compethance.employeemaven.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Miseajour</title>
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="add">
            <h1>Mise à jour</h1>
            <form action="EmployesControllerUpdate" method="POST">
                <table>
                    <tr>
                        <td>Nom de l'employé :</td>
                        <td><input type="text" name="ename"></td>
                    </tr>
                    <tr>
                        <td>Numéro d'identification de l'employé :</td>
                        <td><input type="text" name="enumberupdate"</td>
                    </tr>
                    <tr>
                        <td>Id :</td>
                        <td><select name="id">
                                <% for (Employesdetails oe : GestionEmployes.getAllEmployes()) {%>
                                <option value="<%= oe.getId()%>"><%= oe.getId()%></option>
                                <% }%>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="miseàjour" value="Ok"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
