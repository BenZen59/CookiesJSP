<%@ page import="fr.bz.jspexercice.MyCookies" %><%--
  Created by IntelliJ IDEA.
  User: benoi
  Date: 23/01/2024
  Time: 08:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%

    MyCookies.createCookies(request,response);
%>
<h1>Le cookie a bien été créé !</h1>
<form action="index.jsp" method="post" id="cookie-form">
    <input type="submit" value="Retourner à l'accueil" class="link-button">
</form>
</body>
</html>
