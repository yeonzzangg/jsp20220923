<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"  %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, String> s = Map.of("song1", "lalalalala", "song2", "nanananana"); 
session.setAttribute("songs", s);

response.sendRedirect("11to.jsp");
%>
</body>
</html>