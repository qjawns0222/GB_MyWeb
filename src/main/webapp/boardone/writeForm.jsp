<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="view/color.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Board</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="script.js"></script>
</head>
<%
int num = 0, ref = 1, step = 0, depth = 0;
try {
	if (request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
		ref = Integer.parseInt(request.getParameter("ref"));
		step = Integer.parseInt(request.getParameter("step"));
		depth = Integer.parseInt(request.getParameter("depth"));
	}
%>
<body bgcolor="<%=bodyback_c%>">
	<center>
		<b>글쓰기</b>
	</center>
	<br />
	<form method="post" name="writeForm" action="writeProc.jsp"
		onsubmit="return writeSave()">
		<input type="hidden" name="num" value="<%=num%>"> <input
			type="hidden" name="ref" value="<%=ref%>"> <input
			type="hidden" name="step" value="<%=step%>"> <input
			type="hidden" name="depth" value="<%=depth%>">
		<table width="400" border="1" cellpadding="0" cellspacing="0"
			align="center" bgcolor="<%=value_c%>">
			<tr>
				<td align="right" colspan="2" bgcolor="<%=value_c%>"><a
					href="list.jsp">글목록</a></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">이름</td>
				<td width="330"><input type="text" size="12" maxLength="12"
					name="writer" /></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">이메일</td>
				<td width="330"><input type="text" size="30" maxLength="30"
					name="email" /></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">제목</td>
				<td width="330">
					<%
					if (request.getParameter("num") == null) {
					%> <input type="text" size="50" maxLength="50" name="subject" /> <%
 } else {
 %> <input type="text" size="50" maxLength="50" name="subject"
					value="[답변]" /> <%
 }
 %>
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">내용</td>
				<td width="330"><textarea name="content" rows="13" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">비밀번호</td>
				<td width="330"><input type="password" size="10" maxLength="10"
					name="pass" /></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="<%=value_c%>" align="center"><input
					type="submit" value="글쓰기" /> <input type="reset" value="다시작성" />
					<input type="button" value="목록"
					onClick="window.location='list.jsp'" /></td>
			</tr>
		</table>

	</form>
	<%
	} catch (Exception e) {}
	%>
</body>
</html>