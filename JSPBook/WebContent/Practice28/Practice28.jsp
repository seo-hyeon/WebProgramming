<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table {
		border-collapse: collapse;
		border:solid 1px;
		text-align: center;
		font-size: 13px;
	}
	
	td, th {
		width: 85px;
		height: 50px;
		border:solid 1px;
	}
	
	#col1 {
		border:solid 1px;
		text-align: center;
		font-weight: bold;
		font-size: 20px;
	}
	
	#y {
		background-color: #ffe08c	
	}
	
	#b {
		background-color: #b2ccff
	}
	
	#g {
		background-color: #bdbdbd
	}
</style>
<title>컴퓨터학과 2학년 시간표</title>
</head>
<body>
<%!
int[][] lectureType = {
 {0, 1, 1, 0, 1},
 {1, 0, 0, 0, 2},
 {0, 0, 2, 0, 4},
 {2, 3, 0, 3, 0},
 {0, 0, 0, 2, 0},
 {0, 0, 0, 0, 0}
};

int[][] consecutive = {
 {1, 2, 1, 1, 1},
 {2, 0, 1, 1, 1},
 {0, 1, 1, 1, 4},
 {2, 1, 1, 1, 0},
 {0, 1, 1, 2, 0},
 {1, 1, 1, 0, 0}
};

int[][] lectureTitle = {
 {-1, 4, 5, -1, 5},
 {3, -1, -1, -1, 1},
 {-1, -1, 1, -1, 7},
 {0, 6, -1, 6, -1},
 {-1, -1, -1, 2, -1},
 {-1, -1, -1, -1, -1}
};

String[] titleNames = {
		"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", 
		"자료구조", "네트워크", "창의와감성", "사회봉사" 
};
%>
<div align=center> 
<h3>강의 시간표</h3>
<table>
<tr id = 'col1'>
<th> 2학년 </th>
<th> 월 </th>
<th> 화 </th>
<th> 수 </th>
<th> 목 </th>
<th> 금 </th>
</tr>
<%
int i;
int j = 0;
int index;
int flag[] = {0, 0, 0, 0, 0};

for (i = 0; i < 6; i++)
{
	out.println("<tr>");
	
	for(j = 0; j < 6; j++)
	{
		if (j == 0)
		{
			out.print("<td id='col1'>");
			out.print(i + 1);
			out.println("</td>");
			continue;
		}
		
		if (flag[j - 1] > 1)
		{
			flag[j - 1]--;
			continue;
		}
		
		out.print("<td ");
		
		if (lectureType[i][j - 1] == 1)
			out.print("id='y' ");
		else if (lectureType[i][j - 1] == 2)
			out.print("id='b' ");
		else if (lectureType[i][j - 1] == 3)
			out.print("id='g' ");
		
		if (consecutive[i][j - 1] > 1)
		{
			out.print("rowspan='");
			out.print(consecutive[i][j - 1]);
			out.print("'");
			flag[j - 1] = consecutive[i][j - 1];
		}
			
		out.print(">");
		
		if (lectureTitle[i][j - 1] != -1)
		{
			index = lectureTitle[i][j - 1];
			out.print(titleNames[index]);
		}
		
		out.println("</td>");
	}
	out.println("</tr>");
}
%>
</table>
</div>
</body>
</html>