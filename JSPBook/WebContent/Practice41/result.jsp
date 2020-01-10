<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice22</title>
</head>
<body>

<%!

	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"}; 
	
	ArrayList<String> getParameterNames(HttpServletRequest request)
	{
		ArrayList<String> parameterNames = new ArrayList<>();
		Enumeration<String> e = request.getParameterNames();
		int i = 0;
		
		while (e.hasMoreElements()) {
			String s = e.nextElement();
			parameterNames.add(s);
			i++;
			}
		
		return parameterNames;
	}
	
	boolean isMultipleChoice(String paramName)
	{
		for (int i = 0; i < mChoices.length;i++)
			if(paramName.equals(mChoices[i]))
	 			return true;
		
		return false;
	}
%>
<c:forEach[ver="varName"] items="collection" [varStatus= "status"] [begin="begine"] [end="end"] [step="step"]>
	<c:if test="${isMultipleChoice(value) == 1}" var="result">
		<c:out value="$[varName]"/>
		<c:out value=" : "/>
	</c:if>
</c:forEach[ver>

<%

	ArrayList<String> param = new ArrayList<>();
	param = getParameterNames(request);
	
	for (String value : param) {		
		if (isMultipleChoice(value))
		{
			String[] hobbyValue = request.getParameterValues(value);
			out.print(value + " : ");
			for (int i = 0; i < hobbyValue.length; i++)
				out.print(hobbyValue[i] + "/");
			out.print("<br>");
		}
		else
			out.print(value + " : " + request.getParameter(value) + "<br>");
	}
		
	out.println("<HR><H2>Processing Parameters</H2>");

	for (String value : param) {
		if (isMultipleChoice(value))
		{
			String[] hobbyValue = request.getParameterValues(value);
			out.print(value + " : ");
			for (int i = 0; i < hobbyValue.length; i++)
				out.print(hobbyNames[Integer.parseInt(hobbyValue[i])] + "/");
			out.print("<br>");
		}
		else
		{
			if (value.equals("phone1"))
			{
				int index = Integer.parseInt(request.getParameter(value));
				out.print(value + " : " + telCompany[index] + "<br>");
			}
			else if (value.equals("gender"))
			{
				int index = Integer.parseInt(request.getParameter(value));
				out.print(value + " : " + gNames[index] + "<br>");
			}
			else
				out.print(value + " : " + request.getParameter(value) + "<br>");
		}
	}
%>
</body>
</html>