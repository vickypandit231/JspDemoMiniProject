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
	
		
	String cName = request.getParameter("cName");
	String cDuration = request.getParameter("cDuration");
	String cFee = request.getParameter("cFee");
	
	
	String cId=request.getParameter("cId");
	int Id=Integer.parseInt(cId);
	
	Connection conn=jdbcConnection.getJdbcConnection();
		try
		{
			String sql="update mauli_coaching_class.courseinfo set cName=?, cDuration=?, cFee=? where cId=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			
			psmt.setString(1,cName);
			psmt.setString(2,cDuration);
			psmt.setString(3,cFee);
			psmt.setInt(4,Id);
			
			
			psmt.executeUpdate();
			
			out.print("Record Update....");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("viewCourse.jsp");
	%>

</body>
</html>