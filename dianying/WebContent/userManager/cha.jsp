<%@page import="userManage.userbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>  
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
<center>
<%
ArrayList cha=(ArrayList)session.getAttribute("cha");
%>
<br><br><br><br><br><br>
<h1>这是您想要查询的个人数据</h1>
<table border="1" align="center" width="600px">
<%
for(int i=0;i<cha.size();i++){
userbean userbean=(userbean)cha.get(i);
%>
			<tr align="center" width="500px">
			</tr>
			<tr align="center">
			<td>帐务帐号</td>
			<td><%=userbean.getAccount() %></td>
			</tr>
			<tr align="center">
			<td>姓名</td>
			<td><%=userbean.getUsername() %></td>
			</tr>
			<tr align="center">
			<td>电话</td>
			<td><%=userbean.getTel() %></td>
			</tr>
			<tr align="center">
			<td>邮箱</td>
			<td><%=userbean.getEmail() %></td>
			</tr>
			<tr align="center">
			<td>日期</td>
			<td><%=userbean.getDate() %></td>
			</tr>
			<%
}
			
			%>
</table>
</center>
</body>
</html>