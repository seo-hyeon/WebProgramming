<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
 <% 
 	Calendar cal=Calendar.getInstance();
	
	int year = 0, month = 0;
 	String s_year = request.getParameter("YEAR");
	String s_month = request.getParameter("MONTH");
	
	if (s_year != null)
		year = Integer.parseInt(s_year);
	
	if (s_month != null)
		month = Integer.parseInt(s_month);
	
	if (s_year == null || s_month == null)
	{
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH) + 1;
	}
	
	out.println("<h3>" + year + "년 "+ month + "월 </h3><hr>");
	
	for(int i = 1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++)
	{
		out.print(i + "&nbsp &nbsp&nbsp");
		
		if (i % 7 == 0)
			out.println("<br>");
	}
 %>
</body>
</html>