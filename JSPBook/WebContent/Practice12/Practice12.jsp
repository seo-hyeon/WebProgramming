<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice12</title>
</head>
<body>
<%
	out.println("<div align=\"CENTER\">");
	out.println("<H2> include 연습 </H2>");
	
	out.println("<table style=\"border-top: 2px solid; height: 50px;\">");
	out.println("<tr> <td id='12Td'>");
%>
	<%@ include file="calendar.jsp" %>
<%
	out.println("</td> <td id='12Td'>");
%>
	<%@ include file="news.jsp" %>
<%
	out.println("</td> </tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>