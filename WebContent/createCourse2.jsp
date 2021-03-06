<%@page import="java.sql.SQLException"%>
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
		
			String cName=request.getParameter("cName");
			String cDuration=request.getParameter("cDuration");
			String cFee=request.getParameter("cFee");
			
			/*out.print(""+cName);*/
			
			Connection conn=jdbcConnection.getJdbcConnection();
			
			
			try
			{
				String sql="insert into courseinfo(cName,cDuration,cFee)values(?,?,?)";
				PreparedStatement psmt=conn.prepareStatement(sql);
				
				psmt.setString(1,cName);
				psmt.setString(2,cDuration);
				psmt.setString(3,cFee);
				
				psmt.executeUpdate();
				
				out.println("Course Add Successfully......");
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		%>
		<a href="course_page.jsp">Ok</a>
	</center>
</body>
</html>