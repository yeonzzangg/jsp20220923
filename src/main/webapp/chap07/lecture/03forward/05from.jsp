<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="05to.jsp">
		<jsp:param value="27" name="age"/>
		<jsp:param value="abc@naver.com" name="email"/>
	</jsp:forward>
</body>
</html>