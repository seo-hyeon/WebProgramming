<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
</head>
<body>
<%
	out.println("<div align=\"CENTER\">");
	out.println("<H1> include 액션 연습 </H1><HR>");
	
	out.println("<table>");
	out.println("<tr> <td id='12Td'>");
%>
<jsp:include page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University" />
	<jsp:param name="date" value="2011/04/05" />
</jsp:include>
<%
	out.println("</td> </tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>