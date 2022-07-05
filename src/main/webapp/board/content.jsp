<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="view/color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body bgcolor="${bodyback_c}">

	<center>
		<b>글 내용 보기</b><br />
		<form >
			
			<table width="500" border="1" cellspacing="0" cellpadding="0"
				align="center">
				<tr height="30">
				<td align="center" width="125" bgcolor="${value_c}">글번호</td>
				<td align="center" width="125" align="center">${article.num}</td>
				<td align="center" width="125" bgcolor="${value_c}">조회수</td>
				<td align="center" width="125" align="center">${article.readcount}</td>
				</tr>
				<tr height="30">
				<td align="center" width="125" bgcolor="${value_c}">작성자</td>
				<td align="center" width="125" align="center">${article.writer}</td>
				<td align="center" width="125" bgcolor="${value_c}">작성일</td>
				<td align="center" width="125" align="center">${article.regdate}</td>
				</tr>
				</tr>
				<tr height="30">
				<td align="center" width="125" bgcolor="${value_c}">글제목</td>
				<td align="center" width="375" align="center">${article.subject}</td>
				</tr>
				<tr height="30">
				<td align="center" width="125" bgcolor="${value_c}">글내용</td>
				<td align="center" width="375" align="center" colspan="3"><pre>${article.content}</pre></td>
				</tr>
				<tr>
					<td colspan="4" bgcolor="${value_c}" align="right">
					
					<input type="button" value="글수정" OnClick="window.location='/myWeb/board/updateForm.do?num=${article.num}&pageNum=${pageNum}'" />
					<input type="button" value="글삭제" OnClick="window.location='/myWeb/board/deleteForm.do?num=${article.num}&pageNum=${pageNum}'" />
					<input type="button" value="답글쓰기" OnClick="window.location='/myWeb/board/writeForm.do?num=${article.num}&ref=${article.ref}&step=${article.step}&depth=${article.depth}'" />
					<input type="button" value="글목록" OnClick="window.location='/myWeb/board/writeForm.do?pageNum=${pageNum}'" />
					
					</td>

				</tr>
			</table>
		</form>

	</center>

</body>
</html>