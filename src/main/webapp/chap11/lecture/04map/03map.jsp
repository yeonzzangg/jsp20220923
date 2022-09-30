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
	Map<String, String> map = new HashMap<>();
	map.put("key1", "marvel");
	map.put("my name", "hulk");
	map.put("1key", "thor");
	map.put("!@#", "panther");
	
	request.setAttribute("map1", map);
	pageContext.setAttribute("k", "key1");
	%>
	<!-- 띄어쓰기, 숫자, 특수문자때문에 [""] <- 사용 -->
	
	<p>${map1.key1 }</p> <%-- marvel --%>
	<p>${map1["key1"] }</p> <%-- marvel --%>
	<%-- <p>${map1.my name }</p> --%>
	<p>${map1["my name"] }</p> <%-- hulk --%>
	<%-- <p>${map1.1key }</p> --%>
	<p>${map1["1key"] }</p> <%-- thor --%>
	<p>${map1["!@#"] }</p> <%-- panther --%>
	
	<p>${map1[key1] }</p> <%-- 출력안됨! key1라는 attribute를 찾는거기 땜에 --%>
	<p>k속성 있어서 나옴 : ${map1[k] }</p> <%-- marvel --%>
	
</body>
</html>













