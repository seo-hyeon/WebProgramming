<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List, Practice_40.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="lec" class="Practice_40.LectureBean"/>
<jsp:setProperty name="lec" property="*"/>
<jsp:useBean id="lm" class="Practice_40.LectureManager" scope="application"/>
<%
	lm.add(lec);
	lm.buildMatrix();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="Practice_40.jsp"/>
</body>
</html>