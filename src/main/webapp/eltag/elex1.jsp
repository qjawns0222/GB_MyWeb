<%@page import="java.util.HashMap"%>
<%@page import="tommy.web.actiontag.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Customer customer=new Customer();
    customer.setName("손오공");
    customer.setEmail("tommy@hanmail.com");
    customer.setPhone("010-2323-3213");
    request.setAttribute("customer", customer);
    
    HashMap<String,String> map=new HashMap<String,String>();
    map.put("name","소나타");
    map.put("maker","현대자동차");
    request.setAttribute("car", map);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Example</title>
</head>
<body>
<ul>
<li>이름:${customer.name }</li>
<li>메일:${customer.email }</li>
<li>전화:${customer.phone }</li>
</ul>
<br></br>
<ul>
<li>자동차:${car.name }</li>
<li>제조사:${car.maker}</li>
</ul>
</body>
</html>