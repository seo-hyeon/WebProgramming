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
<h2>주소록 (전체보기)</h2>
<hr>
<a href = "addr_form.jsp">주소추가</a>
<a href="../Practice48.jsp">
		<img src="../images/home.png" style="width: 20px; height:20px; align:right;">
</a>
<br>
<table>
	<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
	<%
		int rpp = 4; //row per page
		int i, startIndex, lastIndex, currentPage;
		int allpage, len;
		//전체 페이지 수 구하기
		if((len = am.getAddrList().size()) % rpp == 0){
			allpage = len / rpp;
		}
		else{
			allpage = ( len / rpp )  + 1;
		}
		//현재 페이지 인덱스와 출력할 목록 인덱스 정하기
		String current = request.getParameter("sindex");
		if(current == null)
			currentPage = 1;
		else
			currentPage = Integer.parseInt(current);
		
		startIndex = (currentPage - 1) * rpp;
		lastIndex = startIndex + rpp - 1;
		if(currentPage == allpage){ //마지막 페이지의 경우 
			lastIndex = len - 1;	
		}
			
	%>
	
	<c:forEach var = "i" begin = "<%=startIndex %>" end = "<%=lastIndex %>">
	<tr>
		<td>${am.getAddrList().get(i).username}</td>
		<td>${am.getAddrList().get(i).tel}</td>
		<td>${am.getAddrList().get(i).email}</td>
		<td>${am.getAddrList().get(i).sex}</td>
		<td>${am.getAddrList().get(i).group}</td>
	</tr>
	</c:forEach>
	</table>
	<%
		//하이퍼 링크 만들기
		for(i = 1; i <= allpage; i++){
	%>
			<a href="addr_list.jsp?sindex=<%=i%>"><%=i%>| </a>
	<%
		}	
	%>
</div>
</body>
</html>