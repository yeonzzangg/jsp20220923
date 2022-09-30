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
<%--
attribute에 추가 하는 코드 작성

String[] arr = {"lala", "nana", "haha"};
request.setAttribute("song", arr);
--%>

<%
request.setAttribute("song", new String[] {"lala","nana","haha"});
%>
<hr>
<p>${song[0] }</p>
<p>${song[1] }</p>
<p>${song[2] }</p>
</body>
</html>