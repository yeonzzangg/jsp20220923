<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<div>
	<%
	String k = (String) session.getAttribute("keyword");
	if (k == null) { /* 검색 안했을때 */
		k = "일반적인";
	}
	%>
	<h4><%= k %> 광고</h4>
</div>