<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
	table {
		border-collapse: collapse;
		border:solid 1px;
		margin-left: auto;
		margin-right: auto;		
	}
	
	td {
		width: 380px;
		height: 25px;
		border:solid 1px;
	}
	
	#col1, #col2 {
		text-align: center;
		font-weight: bold;
		font-size: 15px;
		background-color: #ececec
	}
	
	#col1 {
		width: 70px;
	}
	
	input.imageAlign {vertical-align:middle;}
</style>
</head>
<body>
<form name="frm1" action=result.jsp>
<table>
	<tr>
		<td colspan="2" id="col2">회원 가입</td>
	</tr>
	
	<tr>
		<td id="col1">아이디</td>
		<td>
			<input type=text size=12 name = id>
			<input type=image src="image/check.gif" class="imageAlign">
		</td>
	</tr>
	
	<tr>
		<td id="col1">패스워드</td>
		<td>
			<input type=password size=10 name = pw>
		</td>
	</tr>
	
	<tr>
		<td id="col1">성별</td>
		<td>
			<input type=radio name=gender value=0>남
			<input type=radio name=gender value=1 checked>여
		</td>
	</tr>
	
	<tr>
		<td id="col1">국적</td>
		<td>
			<input type=text value="대한민국">
			<input type=button value="국적변경">
		</td>
	</tr>
	
	<tr>
		<td id="col1">휴대폰</td>
		<td>
			<select name=phone1>
				<option value=0 selected>010</option>
				<option value=1>011</option>
				<option value=2>017</option>
				<option value=3>070</option>
			</select>
			-
			<input type=text maxlength=4 size=4 name=phone2>
			-
			<input type=text maxlength=4 size=4 name=phone3>
		</td>
	</tr>
	
	<tr>
		<td id="col1">이메일</td>
		<td><input type=text size=45 name=email></td>
	</tr>
	
	<tr>
		<td id="col1">생일</td>
		<td><input type=date name=birth></td>
	</tr>
	
	<tr>
		<td id="col1">관심분야</td>
		<td>
			<input type=checkbox name="hoddy" value=0>뉴스
			<input type=checkbox name="hoddy" value=1 checked>맛집
			<input type=checkbox name="hoddy" value=2>책
			<input type=checkbox name="hoddy" value=3>영화
			<input type=checkbox name="hoddy" value=4>여행
		</td>
	</tr>
	
	<tr>
		<td id="col1">가입인사</td>
		<td><textarea cols=50 rows=5 name=memo>회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
	</tr>
	
	<tr>
		<td id="col1">증명사진</td>
		<td><input type=file value="파일 선택"></td>
	</tr>
	
	<tr>
		<td colspan="2" id="col2">
			<input type=submit value="가입하기">
			<input type=reset value="다시작성">
		</td>
	</tr>
</table>
</form>
</body>
</html>