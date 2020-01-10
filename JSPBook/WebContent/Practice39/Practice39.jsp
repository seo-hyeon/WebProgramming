<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ddwutag:printTable brd="2" color="pink">회원정보</ddwutag:printTable> 
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.Practice_34.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="jspbook.Practice_34.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_34</title>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
		이름 : <jsp:getProperty property="id" name="login"/><p>
	 	패스워드 : <%=login.getPw() %><p>
	 	이메일 : <%=login.getEmail() %><p>
	 	성별 : <%=login.getGender() %><p>
	 	생일 : <%=login.getBirth() %>
	 	<hr>
	 <%=login.getId() %>
	 	씨는 
	 <%
	 	int genderr = login.getGender();
	 	String[] genderList = {"남자", "여자"};
	 	
	 	out.print(genderList[genderr]);
	 %>
	 	이고, 
	 <%
	 String birthStr = login.getBirth();
	 	
	 if(login.isGrownUp() == true)
		 out.print("성인");
	 else
		 out.print("미성년자");
	 %>
	 	입니다.
	</div>	
</body>
</html>