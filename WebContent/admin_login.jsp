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
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	
	/*out.println("=="+username);
	out.println("=="+password);*/
	
	if((username.equals("vicky") && password.equals("pandit")))
	{
		response.sendRedirect("admin_login_done.jsp");
		
	}
	
	else
	{
		response.sendRedirect("admin_login_error_page.jsp");	
	}

%>
</body>
</html>