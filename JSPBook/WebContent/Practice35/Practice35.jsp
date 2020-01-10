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
<form action=calc_result.jsp>
<table>
	<tr id="title">
		<td colspan ="2">CalcuLaTor</td>
	</tr>
	<tr>
		<td id="col1">
			<img src="image/cal.jpg">
		</td>
		<td id="col2">
			<input type="text" value="0" name="num1" style="text-align:center;">
			<br><br>
			<select name=op>
							<option value=0 selected>+</option>
							<option value=1>-</option>
							<option value=2>*</option>
							<option value=3>/</option>
			</select>
			<br><br>
			<input type="text" value="0" name = "num2" style="text-align:center;">
			<br><br>
			<input type="submit" value="=">
			<br><br>
			<input type="text" disabled>
		</td>
	</tr>
	<tr id="bottom">
		<td colspan = "2"></td>
	</tr>
</table>
</form>
</body>
</html>