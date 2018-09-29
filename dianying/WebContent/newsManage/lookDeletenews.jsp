<%@page import="newsManage.newsbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css"> 
<!-- 
tr {background-color:expression((this.sectionRowIndex%2==0)?"red":"blue")} 
td {background-color:expression((this.cellIndex%2==0)?"":((this.parentElement.sectionRowIndex%2==0)?"green":"yellow"))} 
th {
	color: white;
}
a{
color: white;
}
td {
	color: white;
}
p,h2 {
	color: yellow;
}
--> 
</style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
	<center>
		<br>
		<table align="center" border="1" height="20px">
			<tr>
				<td width="200px"><a
					href="http://localhost:8084/dianying/newsManage/addnews.jsp">添加新闻</a></td>
				<td width="200px"><a
					href="http://localhost:8084/dianying/looknewsServlet">查找新闻</a>
				</td>
				<td width="200px">删除新闻</td>
				<td width="200px"><a
					href="http://localhost:8084/dianying/newsManage/lookUpdatenews.jsp">修改新闻</a></td>
			</tr>
		</table>
		<h2>删除新闻信息</h2>
		<%
			ArrayList a1 = (ArrayList) session.getAttribute("a1");
			System.out.print(a1);
		%>
		<form action="http://localhost:8084/dianying/DeletenewsServlet" method="post">
			<p>请选择需要删除的新闻标题：</p>
			<select>
				<%
					for (int i = 0; i < a1.size(); i++) {
						newsbean newsbean = (newsbean) a1.get(i);
				%>
				<option value="<%=newsbean.getnewsname()%>">
					<%=newsbean.getnewsname()%>
					<%
				}
			%>
			</select> 
			<p>
				<input type="submit" value="确定">&nbsp; <input type="reset"
					value="返回" onClick="javascript:history.go(-1)">
			</p>
		</form>

	</center>
</body>
</html>