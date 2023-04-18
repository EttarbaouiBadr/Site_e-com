<%@ page language="java"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Ajouter un etudiant</h1>
<form method="post" action="ajouter">
<table border="1">

<tr>
<td> CNE</td>
<td><input type="text" name="cne" required></td>
</tr>
<tr>
<td> NOM</td>
<td><input type="text" name="nom" required></td>
</tr>
<tr>
<td>PRENOM</td>
<td><input type="text" name="prenom" required></td>
</tr>


<tr>
<td colspan="2"> 
 <input type="submit" value="ajouter"> 
 <input type="reset" value="retablir"> 
</td>

</tr>

</table>
</form> 
</body>
</html>