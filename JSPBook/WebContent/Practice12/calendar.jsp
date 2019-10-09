<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
	#calTable{
		border: 1px solid;
	}
	#calendar {
		border: 1px solid;
		text-align: center;
		font-size: 20px;
		width: 40px;
		height: 40px;
	}
</style>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<table id ='calTable'>");
	
	char week[] = {'일', '월', '화', '수', '목', '금', '토'};
	
	for(int i = 0; i < 5; i++)
	{
		out.println("<tr>");
		
		for (int j = 0; j < 7; j++)
		{
			if (i == 0)
				if (j == 0)
					out.println("<td id='calendar'><font color = \"red\">" + week[j] +"</font></td>");
				else if (j == 6)
					out.println("<td id='calendar'><font color = \"blue\">" + week[j] +"</font></td>");
				else
					out.println("<td id='calendar'>" + week[j] +"</td>");
			else
				out.println("<td id='calendar'>&nbsp</td>");	
		}
	}
	out.println("</table>");
%>
</body>