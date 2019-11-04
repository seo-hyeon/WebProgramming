<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 02</title>
</head>
<body>
<%=request.getParameter("username") %>님 환영합니다.<br><br>

<%
if (request.getParameter("time") != null) 
	session.setMaxInactiveInterval(Integer.parseInt(request.getParameter("time")) * 60);

Integer count = (Integer)application.getAttribute("count");

if (count == null)
	application.setAttribute("count", 1);
else
{
	count++;
	application.setAttribute("count", count);
}
%>

<%
	if (session.isNew()) {
		out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script");
		session.setAttribute("username", "홍길동");
	}
%>

세션 ID: <%=session.getId() %><br>
세션 지속시간(default): <%=session.getMaxInactiveInterval() %>초<br>
<br>
오늘 접속자수: <%out.print(count); %>
</body>
</html>