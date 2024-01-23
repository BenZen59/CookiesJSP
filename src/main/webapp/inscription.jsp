<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Identification</h2>

<form action="cookie.jsp" method="post" id="identification-form">
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required>

    <br>

    <label for="prenom">Prenom :</label>
    <input type="text" id="prenom" name="prenom" required>

    <br>
    <input type="submit" value="Valider" class="link-button">

</form>
</body>
</html>