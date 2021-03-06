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
<center>

	<% 
	
	Connection conn=jdbcConnection.getJdbcConnection();
	String sql="SELECT * FROM mauli_coaching_class.courseinfo ;";
	PreparedStatement psmt=conn.prepareStatement(sql);
	ResultSet rs=psmt.executeQuery();
		
	
	%>
	
	<hr>
	<h1>Course Details.</h1>
	<hr>
	<table border="1px solid">
	
			<tr>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Course Duration</th>
				<th>Course Fee</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			
			<%while(rs.next()){ %>
			
			<tr>
				<td><%=rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><a href="updateCourse.jsp?Id=<%= rs.getInt(1) %>">Update</a></td>
				<td><a href="deleteCourse.jsp?Id=<%= rs.getInt(1) %>">Delete</a></td>
			</tr>
			
			<% }%>
		
			
	</table>
	<hr>
		<a href="course_page.jsp">Back</a>


</center>
</body>
</html>