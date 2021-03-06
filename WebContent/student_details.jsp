<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.DatabaseConnection.jdbcConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	Connection conn=jdbcConnection.getJdbcConnection();
	String sql="SELECT * FROM mauli_coaching_class.studinfo ;";
	PreparedStatement psmt=conn.prepareStatement(sql);
	ResultSet r=psmt.executeQuery();
	%>
	
	<center>
		<h1>Student Details</h1>
		<hr>
		<table border="1px solid">
		
			<tr>
				<th>Student Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>MobNo</th>
				<th>City</th>
				<th>Email</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			
			<%
				while(r.next())
				{
			%>
			
			<tr>
				<td><%= r.getInt(1) %></td>
				<td><%= r.getString(2) %></td>
				<td><%= r.getString(3) %></td>
				<td><%= r.getString(4) %></td>
				<td><%= r.getString(5) %></td>
				<td><%= r.getString(6) %></td>
				<td><a href="update_student1.jsp?Id=<%= r.getInt(1) %>">Update</a></td>
				<td><a href="delete_student.jsp?Id=<%= r.getInt(1) %>">Delete</a></td>
			
			</tr>
			
			<%
				} 
			%>
		
		</table>
		<hr>
		<a href="admin_accsess.jsp">Admin Home</a>
		
	</center>

</body>
</html>