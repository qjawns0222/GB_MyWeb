<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 표현언어 예제</title>
</head>
<body>
<table border="1">
<tr>
<td><b>표현식</b></td>
<td><b>값</b></td>
</tr>

<tr>
<td><b>\${2+5}</b></td>
<td><b>${2+5}</b></td>
</tr>

<tr>
<td><b>\${4/5}</b></td>
<td><b>${4/5}</b></td>
</tr>

<tr>
<td><b>\${5div6}</b></td>
<%-- <td><b>${5 div 6}</b></td> --%>
</tr>

<tr>
<td><b>\${5mod7}</b></td>
<td><b>${5 mod 7}</b></td>
</tr>

<tr>
<td><b>\${2<3}</b></td>
<td><b>${2 < 3}</b></td>
</tr>

<tr>
<td><b>\${2gt3}</b></td>
<td><b>${2 gt 3}</b></td>
</tr>

<tr>
<td><b>\${3.1le3.2}</b></td>
<td><b>${3.1 le 3.2}</b></td>
</tr>

<tr>
<td><b>\${(5>3)?5:3}</b></td>
<td><b>${(5>3)?5:3}</b></td>
</tr>

<tr>
<td><b>\${header["host"]}</b></td>
<td><b>${header["host"]}</b></td>
</tr>

<tr>
<td><b>\${header["user-agent"]}</b></td>
<td><b>${header["user-agent"]}</b></td>
</tr>


</table>
</body>
</html>