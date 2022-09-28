<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, String> map = Map.of("trump", "new york", "donald", "chicago");
request.setAttribute("address", map);
%>
<jsp:forward page="09to.jsp"></jsp:forward>
</body>
</html>