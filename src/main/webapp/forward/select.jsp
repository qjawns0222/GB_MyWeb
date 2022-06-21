<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/forward/view.jsp">
		<select name="code">
			<option value="A">A</option>
			<option value="B">B</option>
			<option value="C">C</option>
		</select>
		<input type="submit">
	</form>
<%=request.getContextPath()%>/forward/view.jsp
</body>
</html>