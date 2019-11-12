<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculator</title>
	
	<style>
		#bottom {
			height: 60px;
			background-color: #32ccff;
		}
		
		table {
			margin-left: auto;
			margin-right: auto;		
			text-align: center;
		}
		
		#col1, #col2 {
			width: 200px;
			border:solid 1px #f0f0f1;
		}
		
		#title {
			font-size: 40px;
			height: 60px;
			background-color: #32ccff;
		}
	</style>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String op = request.getParameter("op");
	int result = 0;
	
	if (op.equals("0"))
		result = Integer.parseInt(num1) + Integer.parseInt(num2);
	else if (op.equals("1"))
		result = Integer.parseInt(num1) - Integer.parseInt(num2);
	else if (op.equals("2"))
		result = Integer.parseInt(num1) * Integer.parseInt(num2);
	else if (op.equals("3"))
		result = Integer.parseInt(num1) / Integer.parseInt(num2);
%>
<form>
<table>
	<tr id="title">
		<td colspan ="2">CalcuLaTor</td>
	</tr>
	<tr>
		<td id="col1">
			<img src="image/cal.jpg">
		</td>
		<td id="col2">
			<input type="text" value=<%=num1 %>  style="text-align:center;" readonly>
			<br><br>
			<%
			if (op.equals("0"))
				out.println("+");
			else if (op.equals("1"))
				out.println("-");
			else if (op.equals("2"))
				out.println("*");
			else if (op.equals("3"))
				out.println("/");

			%>
			<br><br>
			<input type="text" value=<%=num2 %> style="text-align:center;" readonly>
			<br><br>
			=
			<br><br>
			<input type="text" value=<%=result %> style="text-align:center;" readonly>
		</td>
	</tr>
	<tr id="bottom">
		<td colspan = "2"></td>
	</tr>
</table>
</form>
</body>
</html>