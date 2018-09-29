<%@page import="java.util.ArrayList"%>
<%@page import="newsManage.newsbean"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="util.Conn"%>
<%@page import="java.security.interfaces.RSAKey"%>
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
--> 
</style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
	<br>
	<table>
		<tr>
			<td><a href="addnews.jsp">添加新闻</a></td>
			<td>新闻列表</td>
		</tr>
	</table>
	<form action="looknewsServlet" method="post">
		<table border="2">
			<th>新闻标题</th>
			<th>新闻内容</th>
			<th>作者</th>
			<th>新闻描述</th>
			<tr>
				<%
					Conn.getConnection();
					String sql = "select * from news";
					ResultSet rs = Conn.executeQuery(sql);
					String newsname = new String(rs.getString(1));
					String basefee = new String(rs.getString(2));
					String ratefee = new String(rs.getString(3));
					String newsdesc = new String(rs.getString(4));
					ArrayList a1 = new ArrayList();
					while (rs.next()) {
						newsbean mm = new newsbean();
						mm.setnewsname(newsname);
						mm.setBasefee(basefee);
						mm.setRatefee(ratefee);
						mm.setnewsdesc(newsdesc);
						a1.add(mm);
						session.setAttribute("list", a1);
					}

					for (int i = a1.size() - 1; i >= 0; i--) {
				%>
			</tr>
			<%
				}
			%>
		</table>


	</form>






</body>
</html>