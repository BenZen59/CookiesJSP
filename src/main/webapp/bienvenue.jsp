<%@ page import="fr.bz.jspexercice.MyCookies" %>        <%--
  Created by IntelliJ IDEA.
  User: benoi
  Date: 23/01/2024
  Time: 08:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    String[] cookiesValues = MyCookies.getCookiesValues(request, response);
    String nom = cookiesValues[0];
    String prenom = cookiesValues[1];
%>
<h1>Bienvenue <%=prenom + " " + nom%></h1>
<form action="index.jsp" method="post" id="bienvenue-form">
    <input type="submit" value="Retourner à l'accueil" class="link-button">
</form>
</body>
</html>
