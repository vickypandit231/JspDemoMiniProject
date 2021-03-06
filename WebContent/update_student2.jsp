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
	
		
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String mnumber = request.getParameter("mNo");
	String city = request.getParameter("city");
	String email = request.getParameter("email");
	
	String sid=request.getParameter("sId");
	int Id=Integer.parseInt(sid);
	
	Connection conn=jdbcConnection.getJdbcConnection();
		try
		{
			String sql="update mauli_coaching_class.studinfo set Fname=?, Lname=?, MobNo=?, City=?, Email=? where SId=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			
			psmt.setString(1,fname);
			psmt.setString(2,lname);
			psmt.setString(3,mnumber);
			psmt.setString(4,city);
			psmt.setString(5,email);
			psmt.setInt(6,Id);
			
			psmt.executeUpdate();
			
			out.print("Record Update....");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>
</html>