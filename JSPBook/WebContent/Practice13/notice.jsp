<!--20180968 박서현-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice13</title>
<style>
	table {
		font-weight: bold;
		font-size: 15px;
		margin-left: auto;
		margin-right: auto;		
		text-align: center;
	}
	
	td {
		width: 480px;
	}
	
	#t1{
		background-color: #ffdab9;
		width: 600px;
		height: 40px;
	}
	
	#t2{
		background-color: #ffefd5;
		width: 600px;
		height: 350px;
	}
</style>
</head>
<body>
<form name="frm2">
<table>
	<tr>
		<td><img src="image/eclass_title.jpg"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
			<table id="terms">
				<tr>
					<td id="t1">오류가 발생했습니다</td>
				</tr>
				<tr>
					<td id="t2">
						<img src="image/flower.gif">
						<br>
						오류 발생 시간: <%= new java.util.Date()%>
						<br><br>
						최대한 빨리 조치하겠습니다.
					</td>
				</tr>	
			</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>