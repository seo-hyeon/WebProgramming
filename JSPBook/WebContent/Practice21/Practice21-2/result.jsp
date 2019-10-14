<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 20</title>
</head>
<body>
<H2>전달된 피라미터 이름들</H2>
<br>
<%
	Enumeration<String> e = request.getParameterNames();

	while (e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + "<br>");
	}
%>

<HR>
타입: <%=request.getParameter("type") %><br>
아이디: <%=request.getParameter("strID") %><br>
패스워드: <%=request.getParameter("strPWd") %><br>

</body>
</html>