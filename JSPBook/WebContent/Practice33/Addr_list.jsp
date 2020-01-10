<head>
<meta charset="UTF-8">
<title>ch07 : 주소록 목록</title>
</head>
<body>
	<div align="center">
		<h2>주소록(전체보기)</h2>
	<hr>
	<a href="addr_form.jsp">주소추가</a><p>
	<a href= "addr_list_group.jsp">그룹 목록 보기</a>
	<table border="1" width="500">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
		</tr>
<%
	for(AddrBean ab : am.getAddrList()) {
		if(ab.getGroup() == null)
			continue;
%>
	<tr>
		<td><%=ab.getUsername() %></td>
		<td><%=ab.getTel() %></td>
		<td><%=ab.getEmail() %></td>
		<td><%=ab.getSex() %></td>
		<td><%=ab.getGroup() %></td>
	</tr>
<%
	}
%>
	</table>
	</div>
</body>
</html>



