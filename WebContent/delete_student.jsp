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
		int sId=0;
		
		
		try
		{
			sId=Integer.parseInt(Id);
			String sql="Delete from mauli_coaching_class.studinfo where SId=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1,sId);
			psmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		response.sendRedirect("student_details.jsp");
	
	conn.close();
	%>

</center>
</body>
</html>