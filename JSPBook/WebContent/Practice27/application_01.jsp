<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 01</title>
</head>
<body>
<form name="frm1" action=application_02.jsp>
아이디: 			  <input type=text id="input" maxlength=8 name="username"><br><br>
원하는 세션 지속시간(분): <input type=text id="input" maxlength=8 name="time"><br><br>
<input type=submit value="로그인">
<input type=reset value="취소">
</form>
</body>
</html>