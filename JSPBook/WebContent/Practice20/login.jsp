<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
<style>
	table {
		font-weight: bold;
		font-size: 15px;
		margin-left: auto;
		margin-right: auto;		
	}
	
	td {
		width: 480px;
	}
	
	#col1 {
		text-align: center;
		font-weight: bold;
		font-size: 23px;
		border-bottom: 1.5px solid;
		padding: 20px;
	}
	
	#col2, #col4 {
		height: 200px;
		padding-top: 1px;
	}
	
	#input {
		background-color: #ffff99;	
	}
	
	#col3 {
		height: 40px;
	}
	
</style>
</head>
<body>
<form name="frm1" method=post action=result.jsp>
<table>
	<tr>
		<td colspan=2><img src="image/eclass_title.jpg"></td>
	</tr>
	
	<tr>
		<td colspan=2 id="col1">로그인</td>
	</tr>
	<tr>
		<td id="col2"><img src="image/eclass_logo.png" align="right"></td>
		<td id="col4">
			<table>
				<tr id="col3">
					<td colspan=2>회원님의 아이디와 비밀번호를 정확히 입력하세요.</td>
				</tr>
				
				<tr id="col3">
					<td></td>
					<td>
						<select name=type>
							<option value="학부생" selected>학부생</option>
							<option value="대학원생">대학원생</option>
							<option value="교직원">교직원</option>
						</select>
					</td>
				</tr>
				
				<tr id="col3">
					<td>아이디</td>
					<td><input type=text id="input" maxlength=8 name="strID"></td>
				</tr>
				
				<tr id="col3">
					<td>비밀번호</td>
					<td><input type=text id="input" maxlength=8 name="strPWd"></td>
				</tr>
				
				<tr id="col3">
					<td colspan="2">
						<input type=submit value="로그인">
						<input type=button value="가입하기" onclick="document.location='member2.html'">
					</td>
			</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>