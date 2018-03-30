<%-- 
    Document   : EmployeeAdd
    Created on : 27 mars 2018, 11:13:53
    Author     : Formation
--%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employes</title>
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="add">
        <h1>Ajouter des employés</h1>
        <form action="EmployesControllerAdd" method="POST">
            <table>
                <tr>
                    <td>Nom de l'employé :</td>
                    <td><input type="text" name="ename"></td>
                </tr>
                <tr>
                    <td>Numéro d'identification de l'employé :</td>
                    <td><input type="text" name="enumber"</td>
                </tr>
                <tr>
                    <td><input type="submit" name="ajouterEmployes" value="Ajouter"</td>
                </tr>
            </table>
        </form>
        </div>
        <form action="Employesshow1.jsp" method="POST">
            <input type="submit" name="afficherEmployes" value="Afficher"> &nbsp; &nbsp;<br>
        </form>
    </body>
</html>
