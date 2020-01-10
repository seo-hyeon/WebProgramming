<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List, pr36.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="lec" class="pr36.LectureBean"/>
<jsp:setProperty name="lec" property="*"/>
<jsp:useBean id="lm" class="pr36.LectureManager" scope="application"/>
<%
	lm.add(lec);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="Practice36.jsp"/>
</body>
</html>