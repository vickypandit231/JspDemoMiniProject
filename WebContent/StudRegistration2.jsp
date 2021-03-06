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
		String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String mnumber = request.getParameter("mnumber");
	String city = request.getParameter("city");
	String email = request.getParameter("email");
	Connection conn = jdbcConnection.getJdbcConnection();

	try {

		String sql = "insert into studinfo (Fname,Lname,MobNo,City,Email)values(?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, fname);
		pstm.setString(2, lname);
		pstm.setString(3, mnumber);
		pstm.setString(4, city);
		pstm.setString(5, email);

		pstm.executeUpdate();

		out.println("Record Inserted");
	
		} 
	catch (Exception e) 
	{
		e.printStackTrace();
	}
	%>
	
	<hr>
	<a href="index.html">Home</a>
	
	
</center>
</body>
</html>