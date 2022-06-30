<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 예제 - formatNumber,formatDate</title>
</head>
<body>
number:<fmt:formatNumber value="123456.789" type="number"/><br/>
currency:<fmt:formatNumber value="123456.789" type="currency" currencySymbol="|"/><br/>
percent:<fmt:formatNumber value="123456.789" type="percent" /><br/>
pattern=".00":<fmt:formatNumber value="123456.789" pattern=".00" /><br/>
<c:set var="now" value="<%=new Date() %>"/>
<c:out value="${now}"/><br/>
date:<fmt:formatDate value="${now}" type="date"/><br/>
time:<fmt:formatDate value="${now}" type="time"/><br/>
both:<fmt:formatDate value="${now}" type="both"/><br/>

</body>
</html>