<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>스트링 파라미터를 다른 타입으로 변경</h1>
<form action="">
영어 : <input type = "text" name = e><br>
수학 : <input type = "text" name = m><br>
국어 : <input type = "text" name = k><br>

<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
<input type = "submit" value="평균구하기">
<%
String e = request.getParameter("e");
String m = request.getParameter("m");
String k = request.getParameter("k");

Integer numE = 0;
Integer numM = 0;
Integer numK = 0;

if(e != null){
	numE = Integer.valueOf(e);	
}

if(m != null ){
	numM = Integer.valueOf(m);
}
if(k != null){
	numK = Integer.valueOf(k);
}

double avg = (numE + numM + numK) / 3.0;
%>
</form>
<hr>
<p>평균은 <%= avg %>입니다</p>

</body>
</html>