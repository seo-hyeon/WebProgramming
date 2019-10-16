<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>

<style>
	#news {
		text-align: center;
		font-size: 30px;
		border-bottom: 1px solid;
		height: 50px;
	}
</style>
</head>
<body>
<%
out.println("<table>");
	out.println("<tr>");
		out.println("<td id='news'> 오늘의 공지사항</td>");
	out.println("</tr>");
	out.println("<tr>");
		out.println("<td>");
		out.println("<ul>");
			out.println("<li>차년도 약학대학 입학전형 기본계획 공지</li>");
			out.println("<li>차년도 정시모집 원서접수 현황</li>");
		out.println("</ul>");
out.println("</table>");
%>
</body>
</html>