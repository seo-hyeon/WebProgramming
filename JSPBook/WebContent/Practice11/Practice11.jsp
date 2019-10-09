<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
<style>
	table, td {
		border: solid 1px;
	}
	
	td {
		align: center;
		width: 90px;
		height: 180px;
	}
	
</style>
</head>
<body>
<%
out.println("<div align='center'>");
out.println("<h1>구구단 출력</h1><HR>");

out.println("<table>");

for (int i = 0; i < 8;i++ )
{
	if (i == 0 || i == 4)
		out.println("<tr>");
	
	out.println("<td>");
	
	for (int j = 1; j <= 9; j++)
	{
		out.println((i+2) + " * " + j + " = " + (i + 2) * j + "<br>");
	}
	
	out.println("</td>");
	
	if (i == 3 || i == 7)
		out.println("</tr>");
}
	
out.println("</table>");
out.println("</div>");
	
%>
</body>
</html>