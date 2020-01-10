<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<style>
			.grayPart {
				background-color : #EEEEEE;				
			}
			#table_user {
				border : 1px solid #000000;
			}
			#table_user{
				border-collapse : collapse;
			}
			th {
				text-align : center;
				font-style : bold;
			}
			td {
				text-align : left;
			}
			#user_textarea {
				width : 400px;
				height : 80px;
				font-size : 15px;
			}
			#user_id_img { 
				vertical-align:middle; 
			}
			#user_id, #user_password {
				width : 150px;
			}
			.user_phonetext {
				width : 50px;
			}
			#user_email {
				width : 300px;
			}
		</style>
	</head>
	<body>
		<table border = "0" align = "center">
			<tr>
				<td>
					<img src = "../Practice_Images/eclass_title.jpg" alt = "dongduktop" id = "hometop_img"></img>
				</td>
			</tr>
		</table>
		<form name = "frm2" method = "post" action = "register.jsp">
			<table border = "1" align = "center" id = "table_user">
				<tr>
					<th class = "grayPart" colspan = "2">회원 가입</th>
				</tr>
				<tr>
					<th class = "grayPart">아이디</th>
					<td>
						<input type = "text" name = "id" id = "user_id" ></input>
						<input type = "image" src = "../Practice_Images/check.gif" id = "user_id_img"></button>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">패스워드</th>
					<td><input type = "password" name = "pw" id = "user_password"></input></td>
				</tr>
				<tr>
					<th class = "grayPart">성별</th>
					<td>
						<input type = "radio" name = "gender" value = "0" id = "user_genderW">남</input>
						<input type = "radio" name = "gender" value = "1" id = "user_genderM" checked>여</input>

					</td>
				</tr>
				<tr>
					<th class = "grayPart">국적</th>
					<td>
						<input type = "text" id = "user_country"></input>
						<input type = "button" value = "국적변경" id = "change_country"></button>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">휴대폰</th>
					<td>
						<select name = phone1>
							<option value=0 selected>010</option>
							<option value=1>011</option>
							<option value=2>017</option>
							<option value=3>070</option>
							<option value=4>080</option>
						</select>
						-
						<input type = "text" name = "phone2" class = "user_phonetext"></input>
						-
						<input type = "text" name = "phone3" class = "user_phonetext"></input>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">이메일</th>
					<td>
						<input type = "email" name = "email" id = "user_email"></input>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">생일</th>
					<td>
						<input type = "date" name = "birth" id = "user_date"></input>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">관심분야</th>
					<td>
						<input type = "checkbox" name = "hobby" value = "0" id = "user_checkbox1">뉴스</input>
						<input type = "checkbox" name = "hobby" value = "1" id = "user_checkbox2" checked >맛집</input>
						<input type = "checkbox" name = "hobby" value = "2" id = "user_checkbox3">책</input>
						<input type = "checkbox" name = "hobby" value = "3" id = "user_checkbox4">영화</input>
						<input type = "checkbox" name = "hobby" value = "4" id = "user_checkbox5">여행</input>
					</td>
				</tr>
				<tr>
					<th class = "grayPart">가입인사</th>
					<td><textarea name = "memo" id = "user_textarea">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
				</tr>
				<tr>
					<th class = "grayPart">증명사진</th>
					<td><input type = "file" id = "user_file"></input></td>
				</tr>
				<tr>
					<th colspan = "2" class = "grayPart">
						<input type = "submit" value = "가입하기" onclick = "document.location='register.jsp'"></input>
						<input type = "reset" id = "user_reset" value = "다시작성"></input>
						
					</th>
				</tr>
			</table>
		</form>
	</body>
</html>