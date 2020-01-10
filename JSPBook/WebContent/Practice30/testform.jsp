<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");
String tel = request.getParameter("tel");
String user = username + ", " + tel;

ArrayList list = (ArrayList)session.getAttribute("addrbook");
if(list == null)
{
	list = new ArrayList();
	session.setAttribute("addrbook", user);
}
list.add(user);

%>

<H2>주소록</H2><HR>
<%
	ArrayList l = (ArrayList)session.getAttribute("addrbook");
	
	if (l == null)
	{
		out.println("항목이 없습니다.");
	}
	else {
		for(Object name: l) {
			out.println(name + "<br>");
		}
	}
%>
</body>
</html>