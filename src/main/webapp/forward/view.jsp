<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String code = request.getParameter("code");
String viewPageURI = null;
if (code.equals("A")) {
	viewPageURI = "viewModule/a.jsp";
} else if (code.equals("B")) {
	viewPageURI = "viewModule/b.jsp";
} else if (code.equals("C")) {
	viewPageURI = "viewModule/c.jsp";
}
%>



<body>
	<jsp:forward page="<%=viewPageURI %>">
		<jsp:param value="hi" name="age" />

	</jsp:forward>
	<%-- <%=request.getContextPath() %> --%>

</body>
</html>