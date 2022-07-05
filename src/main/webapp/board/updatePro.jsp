<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%System.out.println("hi"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
 <c:if test="${check==1}">
 <meta http-equiv="Refresh" content="0;url=/myWeb/board/list.do?pageNum=${pageNum}">
 </c:if>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:if test="${check==0}">
 비밀번호가 다릅니다.
 </c:if>
<a href="javascript:history.go(-1)">[글수정 폼으로 돌아가기]</a>
</body>
</html>