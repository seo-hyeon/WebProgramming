<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Practice 09</title>
</head>
<body>
<%
String text = "Hello, Welcome to JSP World! Let's go!";
out.println("입력되어 있는 문자열: ");
out.println(text);

out.println("<br>문자열의 길이: ");
out.println(text.length());

out.println("<br>'JSP'라는 문자의 위치: ");
out.println(text.indexOf("JSP"));

out.println("<br>모두 소문자로 변경: ");
out.println(text.toLowerCase());

out.println("<br>모두 대문자로 변경: ");
out.println(text.toUpperCase());
%>
</body>
</html>