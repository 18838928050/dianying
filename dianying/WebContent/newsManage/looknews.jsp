<%@page import="newsManage.newsbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.newsDB" %>
<%@page import="util.Conn" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</head>
<body background="../images/4.jpg">
	<center>
	<br>
	<table   align="center" border="1" height="20px">
<tr align="center">
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/addnews.jsp">添加新闻</td>
<td width="200px">查找新闻
</td>
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/lookDeletenews.jsp">删除新闻</a></td>
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/lookUpdatenews.jsp">修改新闻</a></td>
</tr>
</table>
<br><br><hr>



		<%
			ArrayList a1 = (ArrayList) session.getAttribute("a1");
		System.out.print(a1.size());
		%>
	<font  size="5" color="yellow">你要查询的新闻总数共有</font>	<font size="5" color="red"> <%=a1.size()%>
		</font><font size="5" color="yellow">项</font>
		<table>
			<tr>
				<th>新闻标题</th>
			<th>新闻内容</th>
			<th>作者</th>
			<th>新闻描述</th>
			</tr>
			
				
		<%
		
		int pagesize;//每页显示的记录条数
		int rowcount;//总记录数
		int pagecount;//总页数
		int intpage;//待显示页码
		int i;
		pagesize = 8;
		String strpage = request.getParameter("page");//取得待显示页码
		
		if(strpage==null){
			intpage=1;
		}else{
			intpage=java.lang.Integer.parseInt(strpage);
			if(intpage<1)
				intpage=1;
		}
		
		Conn.getConnection();
		String sql="select * from news";
		ResultSet rSet=Conn.executeQuery(sql);
		rSet.last();
		rowcount=rSet.getRow();
		pagecount=(rowcount+pagesize-1)/pagesize;
		if(intpage>pagecount)
	    intpage=pagecount;
	   if(pagecount>0){
				rSet.absolute((intpage-1)*pagesize+1);
				i=0;
				while(i<pagesize&&!rSet.isAfterLast()){
					%>
						<tr>
						<td><%=rSet.getString(1) %></td>
						<td><%=rSet.getString(2) %></td>
						<td><%=rSet.getString(3) %></td>
						<td><%=rSet.getString(4) %></td>
		</tr>
			<%
			rSet.next();
			i++;
				}}
			%>
			</table>
<div align="center">
		<font color="yellow" >	第<%=intpage %>页 共<%=pagecount %>页</font>
			<%
			if(intpage<pagecount){%>
				<a href="http://localhost:8084/dianying/newsManage/looknews.jsp?page=<%=intpage+1%>">下一页</a>
				
		<%}
			if(intpage>1){
			%>
			<a href="http://localhost:8084/dianying//newsManage/looknews.jsp?page=<%=intpage-1%>">上一页</a>
			<%
			}Conn.close();
			%> 
			</div>

	</center>
</body>
</html>