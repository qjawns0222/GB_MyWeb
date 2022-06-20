<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP FILE</title>
</head>
<body>
	<h2>JSP SCRIPT 예제</h2>
	<%
	//Scriptlet-연산처리
	String scriptlet = "스크립트릿 입니다.";//이부부은 선언 부분이 아니기 때문에 지역변수로 지정이 된다 그러므로 선언이 먼저되고 사용이 되어야한다.
	String comment = "주석문입니다.";
	out.println("내장객체를 이용한 출력:" + declation + "<br></br>");
	%>
	선언문 출력하기(변수):<%=declation%><br></br> 선언문 출력하기(메소드):<%=declationMethod()%><br></br>
	스크립트릿 출력하기(변수):<%=scriptlet%><br></br>
	<!-- jsp에서 사용하는 HTML주석문 -->
	<!-- HTML 주석:<%=comment%> -->
	<br></br>
	<%-- jsp 주석:<%=comment%> --%>
	<%
	//자바주석
	/*
	여러줄 주석 */
	%>
	<%!//declation=변수선언
	String declation = "선언문 입니다.";%>
	<%!//declation=변수선언
	public String declationMethod() {
		return declation;
	}%>
</body>
</html>