<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>

<%
	Object l = request.getAttribute("list1");
	Object m = request.getAttribute("map1");
	
	List<String> list = (List<String>) l;
	Map<String, String> map = (Map<String, String>) m;

	if (list != null) {
		for (String item : list) {
			out.println("<p>" + item + "</p>");
		}
	}
	
	if(map != null) {
%>
	<p><%= map.get("jisu") %></p>
	<p><%= map.get("jimin") %></p>
<% } %>
