<%@page import="newsManage.newsbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
h3 {
	color: yellow;
}
--> 
</style> 
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
	<center>
		<br>
		<table align="center" border="1" height="20px">
			<tr align="center">
				<td width="200px"><a href="http://localhost:8084/dianying/newsManage/addnews.jsp">添加新闻</a></td>
				<td width="200px"><a href="http://localhost:8084/dianying/looknewsServlet">查看新闻</a>
				<td width="200px"><a href="http://localhost:8084/dianying/newsManage/lookDeletenews.jsp">删除新闻</a></td>
				<td width="200px"><a href="http://localhost:8084/dianying/newsManage/selectUpdatenews.jsp">修改新闻</a></td>
			</tr>
		</table>

		<br>
		<br>
		<br>
		<br>
		<br>
		<hr>
		<h3><font color="yellow">请修改新闻信息</font></h3>
		<form action="http://localhost:8084/dianying/UpdatenewsServlet" method="post">
			<table>
				<%
					ArrayList a1 = (ArrayList) session.getAttribute("a1");
					for (int i = 0; i < a1.size(); i++) {
						newsbean newsbean = (newsbean) a1.get(i);
				%>
				<tr>
					<td>新闻名称</td>
					<td><input type="text" value="<%=newsbean.getnewsname()%>"></td>
				</tr>
				<tr>
					<td>新闻内容</td>
					<td><textarea rows="4" cols="25" name="basefee"><%=newsbean.getBasefee()%>
				</textarea></td>
				</tr>

				<tr>
					<td>作者</td>
					<td><input type="text" value="<%=newsbean.getRatefee()%>"></td>
				</tr>
				<tr>
					<td>新闻描述</td>
					<td><input type="text" value="<%=newsbean.getnewsdesc()%>"></td>
				</tr>
				<tr align="center"> 
					<td colspan="2"><input type="submit" name="true" value="修改">&nbsp;<input type="reset" name="false" value="取消">
				</tr>
				<%
					}
				%>
			</table>
		</form>



	</center>
</body>
</html>