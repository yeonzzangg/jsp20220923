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
	<%
		String x = request.getParameter("num1");
		String y = request.getParameter("num2");
	
		String r1 = x + y;
		Integer r2 = Integer.valueOf(x) + Integer.valueOf(y);
	%>
	
	<p> r1 (연결연산) : <%= r1 %>
	<p> r2 (산술연산) : <%= r2 %>
</body>
</html>