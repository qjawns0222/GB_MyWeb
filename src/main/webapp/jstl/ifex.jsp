<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Example</title>
</head>
<body>
<c:if test="${3>4}">
이내용은 화면에 안나온다
</c:if>
<c:if test="${param.type eq 'guest' }">
홈페이지 방문 환영한다 <br></br>
회원가입 하거라
</c:if>
<c:if test="${param.type eq 'member' }">
회원님 방문 환영한다 <br></br>
더나은 서비스 보답한다
</c:if>
</body>
</html>