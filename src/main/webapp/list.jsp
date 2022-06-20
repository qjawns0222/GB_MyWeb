<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	private int numOne=0;
    	public void jspInit(){
    		System.out.println("jspInit() 호출됨");
    	}
    	public void jspDestroy(){
    		System.out.println("jspDestroy()호출됨");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP cycle</title>
</head>
<body>
	<%
		int numTwo=0;
		numOne++;  
		numTwo++; 
	%>
	<ul>
		<li>numOne:<%= numOne %></li>
		<li>numTwo:<%= numTwo %></li>
	</ul>
</body>
</html>