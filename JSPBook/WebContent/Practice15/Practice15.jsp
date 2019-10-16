<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	char week[] = { '월', '화', '수', '목', '금', '토', '일'};
	Calendar cal=Calendar.getInstance();
	cal.set(2018, Calendar.OCTOBER, 8);
	int year = 1919;
	int month = 3;
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
</body>
</html>