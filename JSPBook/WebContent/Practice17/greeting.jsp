<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	out.println("<div align=\"CENTER\">");
	out.println("<H3> greeting.jsp에서 출력한 메시지입니다.</H3>");
	
	out.println(name + "님 환영합니다.<br>");
	out.println("오늘은 " + date + "입니다.<br>");
%>
</body>
</html>