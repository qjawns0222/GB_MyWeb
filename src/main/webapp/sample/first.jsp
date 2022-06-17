<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My First JSP</title>
</head>
<body>
	<h2>My First JSP File</h2>
	<hr color="red" />
	<br>
	<center>
		<font size="5"> 지금은 <%=new java.util.Date()%> 입 니 다.
		</font>
	</center>

</body>
</html>