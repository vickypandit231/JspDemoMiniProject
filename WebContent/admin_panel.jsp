<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

	<form action="admin_login.jsp" method="get">
	
	<h1 style="font-size:40px; color: green;">Admin login</h1>
	
	<h2 style="font-size: 30px; color: blue;">Login Page</h2>
	<hr>
	<br>
	<table>
	<tr><td>UserName </td>	<td><input type="text" name="username"></td></tr>
	<tr><td>Password</td>	<td><input type="password" name="password"></td></tr>
	
	</table><br><br>
	
	<input type="submit" value="Login">
	
	</form>
	
</center>
</body>
</html>