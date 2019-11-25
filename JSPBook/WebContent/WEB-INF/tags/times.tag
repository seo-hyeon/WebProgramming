<%@ tag body-content="scriptless" pageEncoding="UTF-8" description="구구단 출력 태그"%>

<style>
	table, td {
		border: solid 1px;
	}
	
	td {
		align: center;
		width: 90px;
		height: 180px;
	}
	
</style>

<h1><jsp:doBody/></h1>

<table>
<%

for (int i = 0; i < 8;i++ )
{
	if (i == 0 || i == 4)
		out.println("<tr>");
	
	out.println("<td>");
	
	for (int j = 1; j <= 9; j++)
	{
		out.println((i+2) + " * " + j + " = " + (i + 2) * j + "<br>");
	}
	
	out.println("</td>");
	
	if (i == 3 || i == 7)
		out.println("</tr>");
}	
%>
</table>