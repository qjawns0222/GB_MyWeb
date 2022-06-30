<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소스보기</title>
</head>
<body>
<%
BufferedReader reader=null;
try{
	String path=request.getParameter("path");
	reader=new BufferedReader(new InputStreamReader(new FileInputStream(getServletContext().getRealPath(path)),"UTF8"));
	System.out.println(reader);
%>
<pre>
소스코드=<%=path %>
<c:out value="<%=reader%>" escapeXml="true"/>

</pre>
<%}catch(IOException ex){ %>
에러:<%=ex.getMessage() %>
<%}finally{
	if(reader!=null)
	try{
	reader.close();}catch(IOException ex){}
	}
%>
</body>
</html>