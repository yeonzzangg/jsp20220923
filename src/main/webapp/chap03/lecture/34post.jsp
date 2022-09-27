<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   request.setCharacterEncoding("utf-8");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>post방식 전송</h1>
	<form method="post">
		이름 : <input type="text" name="name"><br>
		이메일 : <input type="email" name="email"><br>
		암호 : <input type="password" name="pw"><br>
		주소 : <input type="text" name="address"><br>
		<input type="submit" value="전송">
	</form>
	<hr>
	<%
	request.setCharacterEncoding("utf-8"); // 파라미터 읽기전에 실행해야 됨
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String address = request.getParameter("address");
	
	System.out.println(pw);
	%>
	
	<p> 이름 : <%= name %></p>
	<p> 이메일 : <%= email %></p>
	<p> 암호 : 표시하지 않음</p>
	<p> 주소 : <%= address %></p>
</body>
</html>