<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import= "jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	두개의 Person 객체를 attribute로 추가하고
	property(name, age, alive)을 el로 출력하는 코드 작성
	--%>
	
	<%
	Person p1 = new Person();
	Person p2 = new Person();
	
	p1.setName("ari");
	p1.setAge(27);
	p1.setAlive(true);
	
	p2.setName("bibi");
	p2.setAge(300);
	p2.setAlive(false);
	
	request.setAttribute("persono1", p1);
	request.setAttribute("persono2", p2);
	
	%>
	<p>${persono1.name}</p>
	<p>${persono1.age}</p>
	<p>${persono1.alive}</p>
	<p>${persono2.name}</p>
	<p>${persono2.age}</p>
	<p>${persono2.alive}</p>
	
</body>
</html>