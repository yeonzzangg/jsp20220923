<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
	이름 : <input type="text" name="name"><br>
	통신사 : 
	<select name="telecom">
		<option value="sk">skt</option>
		<option value="kt">kt</option>
		<option value="lg">lg</option>
	</select>
	<input type="submit" value="전송">
	</form>
	<hr>
	<%
	String name = request.getParameter("name");
	String tel = request.getParameter("telecom");
	%>
	
	<p><%= name %>님의 통신사는 <%= tel%>입니다.</p>
</body>
</html>