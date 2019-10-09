<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 10</title>
<style>
	table {
		border:solid 1px;
	}
	
	td {
		width: 100px;
		height: 40px;
		text-align: center;
		font-weight: bold;
		font-size: 20px;
	}
	
</style>
</head>
<body>
<%
String week[] = {"일","월", "화", "수", "목", "금", "토"};

out.println("<table border 1px>");

for (int i = 0; i < 5; i++ )
{
	out.println("<tr>");
	
	for (int j = 0; j < 7; j++)
	{
		
		if (i == 0)
		{
			if (j == 0)
			{
				out.println("<td><font color=blue>");
				out.println(week[j]);
				out.println("</font></td>");
			}
			else if (j == 6)
			{
				out.println("<td><font color=red>");
				out.println(week[j]);
				out.println("</font></td>");
			}
			else
			{
				out.println("<td>");
				out.println(week[j]);
				out.println("</td>");
			}
		}
		else
		{
			out.println("<td>&nbsp</td>");
		}
	}
	
	out.println("</tr>");
}
out.println("</table>");
%>
</body>
</html>