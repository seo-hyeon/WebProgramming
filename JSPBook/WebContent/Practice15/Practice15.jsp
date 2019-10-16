<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 15</title>
</head>
<body>
<%
	char week[] = { '일', '월', '화', '수', '목', '금', '토'};
	Calendar cal=Calendar.getInstance();
	cal.set(2016, Calendar.NOVEMBER, 8);
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1;
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.print("<H2>" + year + "년 " + month + "월 </H2><HR>");
	
	for (int i = 0 ; i <= day; i++)
		out.print("&nbsp&nbsp&nbsp&nbsp");
	
	for (int i = start; i <= end; i++)
	{
		out.print(i + "&nbsp&nbsp&nbsp");
		
		if ((i + day) % 7 == 1)
			out.print("<br>");
	}
%>
</body>
</html>