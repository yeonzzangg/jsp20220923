<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
   <%
      Cookie chec = new Cookie("ccc","checked");
      response.addCookie(chec);
   %>
   
   <a href="ad.jsp">ad이동</a>
</body>
</html>