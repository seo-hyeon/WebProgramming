<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="pr45.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="addr" class = "pr45.addrBean"/>
<jsp:setProperty name = "addr" property="*" />
<jsp:useBean id="am" class = "pr45.addrManager" scope = "application" />
<% am.add(addr); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : addr_Add</title>
</head>
<body>
<div style = "text-align : center;">
<h2>등록내용</h2>
이름 : <c:out value="${addr.username}"/> <p>
전화번호 : <c:out value="${addr.tel}"/><p>
이메일 : <c:out value="${addr.email}"/><p>
성별 : <c:out value="${addr.sex}"/> <p>
그룹 : <c:out value="${addr.group}"/><p>
<hr>
<table style = "margin : auto;">
<tr>
<td><a href = "addr_list.jsp">전체 목록 보기</a></td>
<td><a href = "addr_list_group.jsp">그룹별 목록 보기</a></td>
</table>
</div>
</body>
</html>