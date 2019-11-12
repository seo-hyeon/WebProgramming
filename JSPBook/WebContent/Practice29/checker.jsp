<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String result = request.getParameter("action");

	if (result.equals("login"))
	{
		String name = request.getParameter("name");
		String pwd = request.getParameter("pw");
		
		if (name == null)
			name = "user";
		
		session.setAttribute("name", name);
	}
	else if (result.equals("logout"))
	{
		
	}
%>
</body>
</html>