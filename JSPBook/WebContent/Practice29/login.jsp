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
 Object name = session.getAttribute("name");

if (name == null)
{
	out.println("<form name=\"frm1\" action=\"checker.jsp\">");
	out.println("아이디: <input type=\"text\" name=\"name\"> <br><br>");
	out.println("패스워드: <input type=\"text\" name=\"pw\"> <br><br>");
	out.println("<input type=\"button\" value=\"로그인\">");
	out.println("<input type=\"hidden\" name=\"action\" value=\"login\">");
	out.println("</form>");
}
else
{
	out.println("<form name=\"frm2\" action=\"checker.jsp\">");
	out.println(name);
	out.println("님 환영합니다.");
	out.println("<input type=\"button\" value=\"로그아웃\">");
	out.println("<input type=\"hidden\" name=\"action\" value=\"logout\">");
	out.println("</form>");
}
%>

</body>
</html>