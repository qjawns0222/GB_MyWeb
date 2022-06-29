<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    Cookie cookie=new Cookie("CookieName","CookieValue");
    response.addCookie(cookie);
    Cookie cookie1=new Cookie("name",URLEncoder.encode("이승재","utf-8"));
    response.addCookie(cookie1);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>
<%=cookie.getName() %>쿠키의 값="<%=cookie.getValue() %>"<br/>
<%=cookie1.getName() %>쿠키의 값="<%=cookie1.getValue() %>"<br/>

</body>
</html>