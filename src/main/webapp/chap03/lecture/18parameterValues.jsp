<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="text" name="scores" vlaue="100">
		<br>
		<input type="text" name="scores" vlaue="90">
		<br>
		<input type="text" name="scores" vlaue="80">
		<br>
		<input type="submit" value="평균구하기">
	</form>
	
	<hr>
	<%
	String[] scores = request.getParameterValues("scores");
	
	if(scores != null){
		Integer sum = 0;
		for(String score : scores){
			sum += Integer.valueOf(score);
		}
		
		double avg = sum / 3.0;
		%>
		<p>평균 : <%= avg %>입니다.</p>
		<%
	}		
		%>
	
</body>
</html>