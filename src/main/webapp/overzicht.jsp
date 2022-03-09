<%@ page import="domain.model.Lid" %>
<%@ page import="domain.db.LidDB"%>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: senne
  Date: 22/02/2022
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Overzicht</title>

</head>
<body>
<header>
    <h1>Ledenlijst</h1>
    <nav>
        <div class="nav-content">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="voegtoe.jsp">Voeg toe</a></li>
                <li><a href="overzicht.jsp">Overzicht</a></li>
            </ul>
        </div>
    </nav>
</header>
<h2>Overzicht leden</h2>
<table>
    <thead>
    <tr>
        <th>Naam</th>
        <th>Voornaam</th>
        <th>Geboortedatum</th>
        <th>Afdeling</th>
        <th>Pas aan</th>
        <th>Verwijder</th>
    </tr>
    </thead>
    <tbody>
    <% for(Lid lid: leden){%>
    <tr>
        <td><%= lid.getVooraam() %></td>
        <td>...</td>
        <td>...</td>
        <td>...</td>
        <td>Pas aan</td>
        <td >X</td>
    </tr>
    <tr>
        <td>...</td>
        <td>...</td>
        <td>...</td>
        <td>...</td>
        <td>Pas aan</td>
        <td >X</td>
    </tr>
    <tr>
        <td>...</td>
        <td>...</td>
        <td>...</td>
        <td>...</td>
        <td>Pas aan</td>
        <td >X</td>
    </tr>
    </tbody>

</table>
<footer>
    <h3>Web ontwikkeling 2 - 2022 - Geerts Senne</h3>
</footer>
</body>
</html>
