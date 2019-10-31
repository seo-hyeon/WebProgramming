<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
</head>
<body>
<H2>오늘의 일정<br></H2>
<HR>
<%
	String task1 = request.getParameter("TASK1");
	String task2 = request.getParameter("TASK2");
	
	if (task1 == null)
		task1 = "일정 없음";
	
	if (task2 == null)
		task2 = "일정 없음";
	
	out.print("1. "); 
	out.println(task1);
	out.print("<br>2. ");
	out.println(task2);	
	
	//String s_num1 = request.getParameter("num1");
	//if (s_num1 != null) {
		//num1 = integer.parseint(s_num1);
%>
</body>
</html>