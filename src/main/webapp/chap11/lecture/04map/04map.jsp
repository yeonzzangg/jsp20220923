<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.util.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--map 이라는 이름의 Map타입 attribute 추가--%>
	<%
	Map<String, String> m = new HashMap<>();
	m.put("abc", "abc");
	m.put("my key", "my key");
	m.put("ddef", "ddd");
	m.put("2", "2");
	request.setAttribute("map", m);
	
	pageContext.setAttribute("def", "ddef");
	%>
	
	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p><!-- map.ddef랑 같은말 -->
	<p>${map["2"] }</p>
</body>
</html>







