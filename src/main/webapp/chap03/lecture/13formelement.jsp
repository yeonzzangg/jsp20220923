<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여러 파라미터 보내기</h1>
<form action="13element.jsp">
	<input type="text" name = "coffee"/><br>
	<input type="text" name = "q"/><br>
	<input type="text" name = "loc"/><br>
	<input type="submit" />
<hr>
<%
String coffee = request.getParameter("coffee");
String q = request.getParameter("q");
String loc = request.getParameter("loc");
%>
<p><%= coffee%> <%=q %>를 <%= loc %>(으)로 보내기</p>
</form>
</body>
</html>