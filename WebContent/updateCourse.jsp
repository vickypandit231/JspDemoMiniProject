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
		String cId=request.getParameter("Id");
		int Id=0;
		ResultSet rs=null;
		try
		{
			Id=Integer.parseInt(cId);
			String sql="SELECT * FROM mauli_coaching_class.courseinfo where cId=? ";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1,Id);
			rs=psmt.executeQuery();
			
			
		}catch(Exception e)
		{e.printStackTrace();}
	%>
	
	
	<form action="updateCourse2.jsp" method="get">
			<hr>
			<h1>Update Course Record</h1>
			<hr>
			<% 
				while(rs.next())
				{
			%>
			<table>
				<tr><td>Course Id</td> <td><input type="text" name="cId" value="<%= rs.getInt(1) %>" readonly="readonly"></td></tr>
				<tr><td>Course Name</td> <td><input type="text" name="cName" value="<%= rs.getString(2) %>"> </td></tr>
				<tr><td>Course Duration</td> <td><input type="text" name="cDuration" value="<%= rs.getString(3) %>"> </td></tr>
				<tr><td>Course Fee</td> <td><input type="text" name="cFee" value="<%= rs.getString(4) %>"> </td></tr>
				
				
			</table>
			<br><br>
			
			<input type="submit" value="Update">
			
			<%
				}
			%>
	</form>
	
	
</center>
</body>
</html>