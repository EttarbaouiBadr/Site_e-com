<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%
    String Driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost/etudiant";
    Connection con;
    Class.forName(Driver);
    con=DriverManager.getConnection(url,"root","badr");
    Statement st=con.createStatement(); 
    ResultSet rs=st.executeQuery("select * from etudiant");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Liste Des Ettudiants Inscrits :</h1>
<table border="1">
<thead>
<tr>
<td>CNE</td>
<td>NOM</td>
<td>PRENOM</td>
<td colspan="2">operation</td>

</tr>
</thead>
<tbody>
<% while(rs.next()){ %>
<tr>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><a href="supprimer?id=<%=rs.getInt(1)%>">Supprimer</a></td>
</tr>

<%}

rs.close(); 
st.close(); 
con.close(); 
%>
</table>
<a href="ajouter.jsp">Ajouter un etudiant</a>
</body>
</html>