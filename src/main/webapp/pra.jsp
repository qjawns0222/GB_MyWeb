<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*     request.setCharacterEncoding("utf-8");
    response.setContentType("text/html"); */
 // response.setDateHeader("hi", 10000); //1000 이 1초
  //response.sendError(404);
  //response.sendRedirect("http://localhost:8080/myWeb/pra.jsp?name=hk");
  //application.log("hello",new NullPointerException() ); //윈도우 로그파일에기록
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- request.getRemoteAddr():<%=request.getRemoteAddr()%><br>
request.getContentLength():<%=request.getContentLength()%><br>
request.getCharacterEncoding():<%=request.getCharacterEncoding()%><br>
request.getContentType():<%=request.getContentType()%><br>
request.getProtocol():<%=request.getProtocol()%><br>
request.getMethod():<%=request.getMethod()%><br>
request.getRequestURL():<%=request.getRequestURL()%><br>
request.getRequestURI():<%=request.getRequestURI()%><br>
request.getContextPath():<%=request.getContextPath()%><br>
request.getServerName():<%=request.getServerName()%><br>
request.getServerPort():<%=request.getServerPort()%><br> --%>
	<%-- request.getParameter("name")<%=request.getParameter("name")%><br>
	request.getParameterValues("etc")<%=request.getParameterValues("etc")[0]%>,<%=request.getParameterValues("etc")[1]%><br>
	request.getParameterNames()
	<%
	Enumeration enumd = request.getParameterNames();
	while (enumd.hasMoreElements()) {
	%>
	<%=enumd.nextElement()%>
	<%
	}
	%>
	<br> 
request.getParameterMap()<%=request.getParameterMap().get("name")[0]%>,<%=request.getParameterMap().get("add")[0]%>,<%=request.getParameterMap().get("etc")[0]%>,<%=request.getParameterMap().get("etc")[1]%>
 --%>
	<%-- <%
	Enumeration hd = request.getHeaderNames();
	while (hd.hasMoreElements()) {
		String name = (String) hd.nextElement();
		String val = request.getHeader(name);
		int ints = request.getIntHeader(name);//int로 설정한것만 가능

		long longs = request.getDateHeader(name);//long으로 설정한것만 가능
	%>
	<%=name%>:<%=val%><br>
	
	<%=name%>:<%=ints%><br>
	<%=name%>:<%=longs%><br>

	<%
	}
	%> ??? 질문 질문  --%>
	<%-- hello:<%=request.getHeader("hi") %> 이거는 보내는 순간 응답이 끝나버려서 볼수 없음 다음페이지에서 볼수있음 --%> 
	

<%-- request==pageContext.getRequest():<%= request==pageContext.getRequest() %><br>
response==pageContext.getResponse():<%= response==pageContext.getResponse() %><br>
request.getSession()==pageContext.getSession():<%= request.getSession()==pageContext.getSession() %><br>
response==pageContext.getResponse():<%= config==pageContext.getServletConfig() %><br>
response==pageContext.getResponse():<%= application==pageContext.getServletContext() %><br>
response==pageContext.getResponse():<%= out==pageContext.getOut() %><br>
response==pageContext.getResponse():<%= response==pageContext.getException() %><br> a뭐랑 비교?//exception은 에러페이지에서 가능
response==pageContext.getResponse():<%= page==pageContext.getPage() %><br> --%>
<%-- <%
	Enumeration enumData=application.getInitParameterNames();
	while(enumData.hasMoreElements()){
		String initp=(String)enumData.nextElement();
		%>
		<li><%=initp %>:<%=application.getInitParameter(initp) %></li>
	<%	
	}
%> --%>
<%-- 서버정보:<%=application.getServerInfo() %><br>
메이저버전:<%=application.getMajorVersion() %><br>
마이너정보:<%=application.getMinorVersion() %><br>
 --%>

<%-- getRealPath절대경로를 알려준다.:<%=application.getRealPath("/pra.jsp") %><br/>
getResource접근할수있는 객체 리턴:<%=application.getResource("/pra.jsp") %> //뭔소리지??<br/>
getResourceAsStream접근할수있는 객체 리턴:<%=application.getResourceAsStream("/pra.jsp") %>  --%>
<%-- <%InputStream in=application.getResourceAsStream("/pra.jsp");
	InputStreamReader inr=new InputStreamReader(in,"UTF-8");
	BufferedReader inb=new BufferedReader(inr);
	
	while(inr.ready()){
		char con=(char)inr.read();
		
	%>
	<%=con %>
	<%	
	 }
%>--%>


<%-- getBufferSize:<%=out.getBufferSize() %><br/>
getRemaining<%=out.getRemaining() %><br/> --%>

<%-- clear <%=out.clear() %><br/>--%>
<%-- clearBuffer <%=out.clearBuffer() %><br/> //지우는거 --%>
<%-- flush <%=out.flush() %><br/>//출력하는거 --%>
<%-- isAutoFlush<%=out.isAutoFlush() %><br/> --%>
</body>
</html>