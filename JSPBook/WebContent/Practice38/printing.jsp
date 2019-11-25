<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if (request.getParameter("username") != null) 
	session.setAttribute("username", request.getParameter("username"));

if (request.getParameter("pw") != null)
	session.setAttribute("pw", request.getParameter("pw"));
%>

<ddwutag:greeting color="pink"/>
<ddwutag:greeting color="green"/>
</body>
</html>