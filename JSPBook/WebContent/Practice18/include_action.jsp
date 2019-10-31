<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Action Practice</title>
<style>
</style>
</head>
<body>
<div align="center">
<h1>Include Action Practice</h1>
<hr>

<table>
<tr>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td>
		<jsp:include page="calender.jsp">
			<jsp:param name="YEAR" value="2017"/>
			<jsp:param name="MONTH" value="10"/>
		</jsp:include>
	</td>
	<td width="20"></td>
	<td>
		<jsp:include page="news.jsp">
		 		<jsp:param name="TASK2" value="Homework"/>
		 </jsp:include>
	</td>
</tr>
</table>
</div>
</body>
</html>