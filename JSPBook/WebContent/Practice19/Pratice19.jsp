<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
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

	Calendar cal=Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1;
	int date = cal.get(Calendar.DATE);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int d = 1;
	
	out.println("<div align='right'>" + year + "-" + month + "-" + date + "</div>");
	out.println("<div align=\"center\">");
	out.println("<table id ='calTable'>");
	
	Calendar st=Calendar.getInstance();
	st.set(year, month - 1, start);
	int start_day = st.get(Calendar.DAY_OF_WEEK);
	int n = start_day;
	
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
			else if (n > 1)
			{
				out.println("<td id='calendar'>&nbsp</td>");
				n--;
			}
			else if (d <= end)
			{
				if (j == 0)
					out.println("<td id='calendar'><font color = \"red\">" + d +"</font></td>");
				else if (j == 6)
					out.println("<td id='calendar'><font color = \"blue\">" + d +"</font></td>");
				else
					out.println("<td id='calendar'>" + d +"</td>");
				
				d++;
			}
			else
				out.println("<td id='calendar'>&nbsp</td>");
		}
		
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>