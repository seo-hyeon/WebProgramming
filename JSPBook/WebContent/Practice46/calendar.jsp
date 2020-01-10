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
		border:solid 1px;
	}
	
	#calTD {
		width: 100px;
		height: 40px;
		text-align: center;
		font-weight: bold;
		font-size: 20px;
	}
	
	#calTable{
		border: 1px solid;
		border-collapse: collapse;
	}
	
	#calendar {
		border: 1px solid;
		text-align: center;
		font-size: 20px;
		width: 80px;
		height: 40px;
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
		
		cal.setCal(year, month);
	}
%>

<div align='left' style="float:left; width:33%;">
	<%
		out.print("<a href=\"calendar.jsp?YEAR=" + (cal.getYear() - 1));
		out.print("&MONTH=" + cal.getMonth() + "\">" + "◀ </a>");
	%>
	<%=cal.getYear() %>년 
	<%
		out.print("<a href=\"calendar.jsp?YEAR=" + (cal.getYear() + 1));
		out.print("&MONTH=" + cal.getMonth() + "\">" + "▶ </a>");
	%>
</div>
<div align='center' style="float:left; width:33%;">
	<%
	out.print("<a href=\"calendar.jsp?YEAR=" + cal.getYear());
	out.print("&MONTH=" + (cal.getMonth() - 1) + "\">" + "◀ </a>");
	%>
	<%=cal.getMonth() %>월
	<%
		out.print("<a href=\"calendar.jsp?YEAR=" + cal.getYear());
		out.print("&MONTH=" + (cal.getMonth() + 1) + "\">" + "▶ </a>");
	%>
</div>
<div align='right' style="float:left; width:33%">
	<%=cal.toString() %>
</div>
 
 <br><br>
 
 <div align="center">
 <table>
<%
	
	for(int i = 0; i <= 5; i++)
	{
		out.println("<tr>");
		
		for (int j = 0; j < 7; j++)
		{
			if (i == 0)
				if (j == 0)
					out.println("<td id='calendar'><font color = \"red\">" + parseDay(j) +"</font></td>");
				else if (j == 6)
					out.println("<td id='calendar'><font color = \"blue\">" + parseDay(j) +"</font></td>");
				else
					out.println("<td id='calendar'>" + parseDay(j) +"</td>");
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
		
		out.println("</tr>");
	}
%>
</table>
</div>
</body>
</html>