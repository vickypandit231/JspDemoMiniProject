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
		String Id=request.getParameter("Id");
		int sId=Integer.parseInt(Id);
		ResultSet rs = null;
		
		try
		{
			String sql="select * from mauli_coaching_class.studinfo where SId=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1, sId);
			rs=psmt.executeQuery();
			
			
			
		}
		catch(Exception e)
		{e.printStackTrace();}
	%>
	
	
	<form action="update_student2.jsp" method="get">
			<hr>
			<h1>Update Student Record</h1>
			<hr>
			<% 
				while(rs.next())
				{
			%>
			<table>
				<tr><td>Student Id</td> <td><input type="text" name="sId" value="<%= rs.getInt(1) %>" readonly="readonly"></td></tr>
				<tr><td>First Name</td> <td><input type="text" name="fname" value="<%= rs.getString(2) %>"> </td></tr>
				<tr>	<td>Last Name</td> <td><input type="text" name="lname" value="<%= rs.getString(3) %>"> </td></tr>
				<tr>	<td>Mob.No</td> <td><input type="text" name="mNo" value="<%= rs.getString(4) %>"> </td></tr>
				<tr>	<td>City</td> <td><input type="text" name="city" value="<%= rs.getString(5) %>"> </td></tr>
				<tr>	<td>Email</td> <td><input type="text" name="email" value="<%= rs.getString(6) %>"> </td></tr>
				
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