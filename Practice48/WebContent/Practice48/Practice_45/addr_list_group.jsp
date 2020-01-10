<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pr45.*"%>
<jsp:useBean id = "am" class = "pr45.addrManager" scope = "application"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07: 주소록 목록</title>
<style>
	table, td{
		border : 1px solid black;
		margin : 0, auto;
		margin : auto;
	}
</style>
</head>
<body>
<div style="text-align:center;">
<h2>주소록 (그룹별 보기)</h2>
<hr>
<a href = "addr_form.jsp">주소추가</a>
<br>
<table>
	<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
	<%
		request.setAttribute("len", am.getAddrList().size());
		String[] gName = {"가족", "친구", "직장"};
	%>
	<c:set var = "glist" value = "<%=gName%>"/>
	<c:forEach var = "i" begin = "0" end = "${len - 1}">
	<c:if test="${am.getAddrList().get(i).group == glist[0]}">
	<tr>
		<td>${am.getAddrList().get(i).username}</td>
		<td>${am.getAddrList().get(i).tel}</td>
		<td>${am.getAddrList().get(i).email}</td>
		<td>${am.getAddrList().get(i).sex}</td>
		<td>${am.getAddrList().get(i).group}</td>
	</tr>
	</c:if>
	</c:forEach>
	<c:forEach var = "i" begin = "0" end = "${len - 1}">
	<c:if test="${am.getAddrList().get(i).group == glist[1]}">
	<tr>
		<td>${am.getAddrList().get(i).username}</td>
		<td>${am.getAddrList().get(i).tel}</td>
		<td>${am.getAddrList().get(i).email}</td>
		<td>${am.getAddrList().get(i).sex}</td>
		<td>${am.getAddrList().get(i).group}</td>
	</tr>
	</c:if>
	</c:forEach>
	<c:forEach var = "i" begin = "0" end = "${len - 1}">
	<c:if test="${am.getAddrList().get(i).group == glist[2]}">
	<tr>
		<td>${am.getAddrList().get(i).username}</td>
		<td>${am.getAddrList().get(i).tel}</td>
		<td>${am.getAddrList().get(i).email}</td>
		<td>${am.getAddrList().get(i).sex}</td>
		<td>${am.getAddrList().get(i).group}</td>
	</tr>
	</c:if>
	</c:forEach>
</table>
</div>
</body>
</html>