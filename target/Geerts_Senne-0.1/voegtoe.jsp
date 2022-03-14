<%--
  Created by IntelliJ IDEA.
  User: senne
  Date: 22/02/2022
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Voegtoe</title>
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

<div class="form-container">
    <form method="post" action="Leden">
        <div class="row">
            <div class="col-25">
                <label for="voornaam">Voornaam</label>
            </div>
            <div class="col-75">
                <input type="text" id="voornaam" name="voornaam" placeholder="Uw voornaam">
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="anaam">Achternaam</label>
            </div>
            <div class="col-75">
                <input type="text" id="anaam" name="achternaam" placeholder="Uw achternaam">
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="afdeling">Afdeling</label>
            </div>
            <div class="col-75">
                <select name="afdeling" id="afdeling" required>
                    <option value="" disabled selected hidden>Kies uw afdeling...</option>
                    <option value="sloebers">Sloebers</option>
                    <option value="speelclub">Speelclub</option>
                    <option value="rakwi">Rakwi</option>
                    <option value="tito">Tito</option>
                    <option value="keti">Keti</option>
                    <option value="aspi">Aspi</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="gdatum">Geboortedatum</label>
            </div>
            <div class="col-75">
                <input type="date" id="gdatum" name="geboortedatum"
                       value="2012-09-01"
                       min="2003-01-01" max="2022-12-31">
            </div>
        </div>
        <div class="row">
            <input type="submit" value="Voegtoe">
        </div>
    </form>
</div>
<footer>
    <h3>Web ontwikkeling 2 - 2022 - Geerts Senne</h3>
</footer>
</body>
</html>
