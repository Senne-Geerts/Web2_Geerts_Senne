<%@ page import="domain.model.Lid" %>
<%@ page import="domain.db.LidDB"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
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
        <th>Voornaam</th>
        <th>Achternaam</th>
        <th>Geboortedatum</th>
        <th>Afdeling</th>
        <th>Pas aan</th>
        <th>Verwijder</th>
    </tr>
    </thead>
    <tbody>
        <%
            String tableDate = "";
            List<Lid> ledenLijst = (ArrayList<Lid>) request.getAttribute("result");
            for(Lid lid: ledenLijst){
                tableDate += String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s<td>%s</td><td>%s</td>"
                        ,lid.getVoornaam(),lid.getAchternaam(), lid.getGeboortedatum(), lid.getAfdeling(),"Pas aan", "X");
            }
        %>
        <%=tableDate%>
    </tbody>
</table>
<p>Totaal aantal leden:</p>
<p>Het jonste lid:</p>
<p>Het oudste lid:</p>
<p>De grooste groep:</p>
<footer>
    <h3>Web ontwikkeling 2 - 2022 - Geerts Senne</h3>
</footer>
</body>
</html>
