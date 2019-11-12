<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm1" action="checker.jsp">
아이디: <input type="text" name="name"> <br><br>
패스워드: <input type="text" name="pw"> <br><br>

<input type="button" value="로그인">
<input type="hidden" name="action" value="login">
</form>

<form name="frm2" action="check.jsp">
<%= session.getAttribute("name") %>님 환영합니다.
<br><br>
<input type="button" value="로그아웃">
<input type="hidden" name="action" value="logout">
</form>
</body>
</html>