<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 
리다이렉트 이용할때(요청 두번할때)
같은 request가 아니라서 request 사용 못함
대신 session 사용 -->
<%
// request attribute
request.setAttribute("name1", "jimin");

// session attribute
// session type : HttpSession
session.setAttribute("name2", "v");

response.sendRedirect("08to-attribute.jsp");
%>