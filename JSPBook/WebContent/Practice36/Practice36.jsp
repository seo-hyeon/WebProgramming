<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List, pr36.*"%>
    
<jsp:useBean id="lec" class="pr36.LectureBean"/>
<jsp:setProperty name="lec" property="*"/>
<jsp:useBean id="lm" class="pr36.LectureManager" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form name="frm1" action="Manager.jsp">
과목타입:
<select name="type">
	<option value = 0>전공필수</option>
	<option value = 1>전공선택</option>
	<option value = 2>교양</option>
	<option value = 3>기타</option>
</select>
과목 명: 
<select name="title">
	<option value = 0>웹프로그래밍</option>
	<option value = 1>운영체제</option>
	<option value = 2>자료구조</option>
	<option value = 3>데이터베이스개론</option>
	<option value = 4>네트워크</option>
	<option value = 5>창의와 감성</option>
	<option value = 6>소프트웨어프로그래밍</option>
	<option value = 7>사회봉사</option>
</select>
요일:
<select name="day">
	<option value = 0>월</option>
	<option value = 1>화</option>
	<option value = 2>수</option>
	<option value = 3>목</option>
	<option value = 4>금</option>
</select>
시간: 
<select name="time">
	<option value = 0>1</option>
	<option value = 1>2</option>
	<option value = 2>3</option>
	<option value = 3>4</option>
	<option value = 4>5</option>
	<option value = 4>6</option>
</select>
연강여부: 
<select name="consecutive">
	<option value = 0>1</option>
	<option value = 1>2</option>
	<option value = 2>3</option>
	<option value = 3>4</option>
	<option value = 4>5</option>
	<option value = 4>6</option>
</select>
<input type=submit value="등록" >
<HR>
</form>

<%

	for (LectureBean lc: lm.getLectureList()) {
%>
	<%=lc.toString() %>
<%
	}
	//}
%>

</div>
</body>
</html>