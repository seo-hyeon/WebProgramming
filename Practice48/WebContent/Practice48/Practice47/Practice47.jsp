<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList, p47.*"%>
<jsp:useBean id = "lm" class ="p47.LectureManager" scope = "application"/>
<jsp:useBean id = "lb" class ="p47.LectureBean"/>
<jsp:setProperty name = "lb" property = "*"/>
<%
	if (lb.getType() != -1)
		lm.add(lb);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
	p {
		font-size : 20px;
		font-weight : bold;
		text-align : center;
	}
	table {
		border-collapse : collapse;
		margin : 0, auto;
		width : 500px;
		height : 400px;
	}
	table, td, th {
		border : solid 1px #000000;
		text-align : center;
		font-size : 13px;
	}
	th.bold {
		font-size : 20px;
		font-weight : bold;
		width : 80px;
	}
</style>
</head>
<body>
<div align="center">
<table style="border: none; width: 900px; height: 20px;">
	<tr>
	<td style="border: none;">
	<form method = "post" action = "Practice47.jsp" align="left">
		과목타입 : <select name = "type">
			<%
				for (int i = 0; i < lb.getTypeLength(); i++) {
					out.println("<option value = " + i + ">" + lb.getTypenames(i) + "</option>");
				}
			%>
		</select>
		과목명 : <select name = "title">
			<%
				for (int i = 0; i < lb.getTitleLength(); i++) {
					out.println("<option value = " + i + ">" + lb.getTitlenames(i) + "</option>");
				}
			%>
		</select>
		요일 : <select name = "day">
			<%
				for (int i = 0; i < lb.getDayLength(); i++) {
					out.println("<option value = " + i + ">" + lb.getDaynames(i) + "</option>");
				}
			%>
		</select>
		시간 : <select name = "time">
			<%
				for (int i = 1; i <= 6; i++) {
					out.println("<option value = " + i + ">" + i + "</option>");
				}
			%>
		</select>
		연강여부 : <select name = "consecutive">
			<%
				for (int i = 1; i <= 6; i++) {
					out.println("<option value = " + i + ">" + i + "</option>");
				}
			%>
		</select>
		<input type = "submit" value = "등록">
	</form>
	</td>
	<td align="right" style="border: none;">
	<a href="../Practice48.jsp">
		<img src="../images/home.png" style="width: 20px; height:20px; align:right;">
	</a>
	</td>
	</tr>
</table>
</div>

<div style = "text-align : center;">
	<hr>
		<% lm.buildMatrix(); %>
		<p>강의 시간표</p>
		<table align = center>
			<tr>
				<th class="bold">2학년</th>
				<th class="bold">월</th>
				<th class="bold">화</th>
				<th class="bold">수</th>
				<th class="bold">목</th>
				<th class="bold">금</th>
			</tr>
			<%
				for (int i = 0; i < 6; i++) {
					%>
					<tr>
					<th class="bold"><% out.print(i + 1); %></th>
					<%
					for (int j = 0; j < 5; j++) {
						if (lm.spanMatrix[i][j] != 0) {
							%> <td <% 
							switch (lm.spanMatrix[i][j]) {
							case 1:
								break;
							case 2:
								%> rowspan = 2<%
								break;
							case 3:
								%> rowspan = 3<%
								break;
							case 4:
								%> rowspan = 4<%
								break;
							case 5:
								%> rowspan = 5<%
								break;
							case 6:
								%> rowspan = 6<%
								break;
							}
							switch (lm.typeMatrix[i][j]) {
							case 1:
								%> style = "background-color : #b2ccff;"><%
								break;
							case 2:
								%> style = "background-color : #ffe08b;"><%
								break;
							case 3:
								%> style = "background-color : #bdbdbd;"><%
								break;
							default:
								%> > <%
							}
							if (lm.titleMatrix[i][j] == -1)
								%> &nbsp; <%
							else
								out.print(lb.getTitlenames(lm.titleMatrix[i][j]));
							%> </td> <%
						}
						
					}%>
					</tr><%
				}
			%>
		</table>
	</div>
	<hr>
	<div style = "text-align : center;">
		<%
			for (LectureBean l : lm.getLectureList())
				out.println(l.toString() + "<br>");
		%>
	</div>
</body>
</html>