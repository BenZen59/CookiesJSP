<%@ page import="fr.bz.jspexercice.MyCookies" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    MyCookies myCookies = new MyCookies();
    myCookies.verifCookies(request, response);
%>;

</body>
</html>