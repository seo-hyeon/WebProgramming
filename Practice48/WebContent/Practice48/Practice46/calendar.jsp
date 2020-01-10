<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<jsp:useBean id="cal" class="pr46.calendar"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>

	table {
		border:solid 1px #CAC8B9;
		border-collapse: collapse;
		border-color: #ada99b;
	}
	
	#calTD {
		border: 1px solid;
		text-align: center;
		font-size: 20px;
		width: 120px;
		height: 20px;
		border-color: #ada99b;
	}
	
	#calendar {
		border: 1px solid;
		text-align: center;
		font-size: 20px;
		width: 120px;
		height: 40px;
		border-color: #ada99b;
	}
	
	#d {
		border: none;
		font-weight: bold;
		width: 300px;
	}
</style>
</head>
<body>
<%!
	public String parseDay(int day)
	{
		String week[] = {"일", "월", "화", "수", "목", "금", "토", "일"};
		return week[day];
	}

%>
<%
	String sYear = request.getParameter("YEAR");
	String sMonth = request.getParameter("MONTH");
	
	if (sYear != null && sMonth != null)
	{
		int year = Integer.parseInt(sYear);
		int month = Integer.parseInt(sMonth);
		
		if (month > 12)
			month = 12;
		if (month < 1)
			month = 1;
		
		cal.setCal(year, month);
	}
%>

<div align="center">
<table style="border: none;">
<tr>
	<td id = 'd' style="text-align: left;">
	<%
		out.print("<a href=\"calendar.jsp?YEAR=" + (cal.getYear() - 1));
		out.print("&MONTH=" + cal.getMonth() + "\">" + "◀ </a>");
	%>
	<%=cal.getYear() %>년 
	<%
		out.print("<a href=\"calendar.jsp?YEAR=" + (cal.getYear() + 1));
		out.print("&MONTH=" + cal.getMonth() + "\">" + "▶ </a>");
	%>
	</td>
	<td id='d' style="text-align: center">
	<%
	if (cal.getMonth() != 1) {
	out.print("<a href=\"calendar.jsp?YEAR=" + cal.getYear());
	out.print("&MONTH=" + (cal.getMonth() - 1) + "\">" + "◀ </a>");
	}
	%>
	<%=cal.getMonth() %>월
	<%
		if (cal.getMonth() != 12) {
		out.print("<a href=\"calendar.jsp?YEAR=" + cal.getYear());
		out.print("&MONTH=" + (cal.getMonth() + 1) + "\">" + "▶ </a>");
		}
	%>
	</td>
	<td id='d' style="text-align: right">
	<%=cal.toString() %>
	&nbsp
	<a href="../Practice48.jsp">
		<img src="../images/home.png" style="width: 20px; height:20px">
	</a>
	</td>
</tr>
</table>
</div>
 
 <br><br>
 
 <div align="center">
 <table>
<%
	
	for(int i = 0; i <= 10; i++)
	{
		out.println("<tr>");
		
		for (int j = 0; j < 7; j++)
		{
			if (i == 0)
				if (j == 0)
					out.println("<td id='calTD'><font color = \"red\">" + parseDay(j) +"</font></td>");
				else if (j == 6)
					out.println("<td id='calTD'><font color = \"blue\">" + parseDay(j) +"</font></td>");
				else
					out.println("<td id='calTD'>" + parseDay(j) +"</td>");
			else if (cal.getN() > (i - 1) * 7 + j + 1)
			{
				out.println("<td id='calendar'>&nbsp</td>");
			}
			else if (cal.getD() <= cal.getEnd())
			{
				if (j == 0)
					out.println("<td id='calendar'><font color = \"red\">" + cal.getD() +"</font></td>");
				else if (j == 6)
					out.println("<td id='calendar'><font color = \"blue\">" + cal.getD() +"</font></td>");
				else
					out.println("<td id='calendar'>" + cal.getD() +"</td>");
				
				cal.setD(cal.getD()+1);
			}
			else
				out.println("<td id='calendar'>&nbsp</td>");
		}
		
		if (cal.getD() >= cal.getEnd())
			break;
		out.println("</tr>");
	}
%>
</table>
</div>
</body>
</html>