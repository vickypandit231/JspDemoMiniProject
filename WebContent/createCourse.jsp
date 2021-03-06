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

		<form action="createCourse2.jsp" method="get">
			<hr>
			<h1>Create New Course.</h1>
			<hr><hr>
			<table>

				<tr>
					<th>Course Name</th>
					<td><input type="text" name="cName"></td>
				</tr>

				<tr>
					<th>Course Duration</th>
					<td><input type="text" name="cDuration"></td>
				</tr>

				<tr>
					<th>Course Fee</th>
					<td><input type="text" name="cFee"></td>
				</tr>


			</table><br>

			<input type="submit" value="Create">

		</form>


	</center>
</body>
</html>