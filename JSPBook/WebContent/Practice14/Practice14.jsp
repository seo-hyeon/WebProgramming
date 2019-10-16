<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%
	char week[] = { '일', '월', '화', '수', '목', '금', '토'};
	Calendar cal=Calendar.getInstance();
	cal.set(2018, Calendar.OCTOBER, 8);
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1;
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("오늘은 " + year + "년 " + month + "월 " + date + "일 " + week[day - 1] + "요일입니다.<br><br>");
	out.println("이번 달은 "+start+"일부터 시작하여 " + end + "일에 끝납니다.<br><br>");
	
	Calendar birth = Calendar.getInstance();
	birth.set(1998, Calendar.FEBRUARY, 14);
	int birth_year = birth.get(Calendar.YEAR);
	int birth_month = birth.get(Calendar.MONTH) + 1;
	int birth_date = birth.get(Calendar.DATE);
	int birth_day = birth.get(Calendar.DAY_OF_WEEK);
	
	out.println("내 생일 "+ birth_year + "년 " + birth_month + "월 " + birth_date + "일 " +week[birth_day - 1] +"요일입니다.<br>");
%>

</body>
</html>