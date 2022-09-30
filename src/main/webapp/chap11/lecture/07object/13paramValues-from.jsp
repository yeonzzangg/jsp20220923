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
	<form action="13paramValues-to.jsp">
		주문일자 <input type="date" name="date" method="post"><br>
		상품1 <input type="checkbox" name="prod">
		상품2 <input type="checkbox" name="prod">
		상품3 <input type="checkbox" name="prod">
		상품4 <input type="checkbox" name="prod">
		상품5 <input type="checkbox" name="prod"><br>
		<input type="submit" value="주문">
	</form>
</body>
</html>