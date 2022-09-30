<%@page import="org.apache.catalina.connector.Response"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   Cookie[] cookies = request.getCookies();
   String checkedBae = null;
   
   for(int i = 0 ; i < cookies.length ; i++){
      if(cookies[i].getName().toString().equals("ccc")){
         checkedBae = cookies[i].getValue();
      }
   }
%>
  아이디 저장1 <input type="checkbox" <%=checkedBae %> value="1" />
  아이디 저장2 <input type="checkbox"  value="2" />
  아이디 저장3 <input type="checkbox"  value="3" />
</body>
</html>