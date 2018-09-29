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
h1 {
	color: yellow;
}
/* .td_content{
width: 850px;
} */
--> 
</style> 
</head>
<body background="../images/4.jpg">
	<br>
<table align="center" border="1" height="20px" width="500px" >
<tr align="center">
<td  width="200px">添加新闻</td>
<td  width="200px"><a href="http://localhost:8084/dianying/looknewsServlet">查找新闻</a>
</td>
<td  width="200px"><a href="http://localhost:8084/dianying/newsManage/lookDeletenews.jsp">删除新闻</a></td>
<td  width="200px"><a href="http://localhost:8084/dianying/newsManage/lookUpdatenews.jsp">修改新闻</a></td>
</tr>
</table>
<% String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>

	<form action="http://localhost:8084/dianying/addP" method="post">
	<h1 align="center">请添加新闻信息</h1>
		<table align="center">
			<tr height="10px">
				<td>新闻标题:</td>
				<td width="200px"><input type="text" name="newsname" width="150"></td>
			</tr>
			<tr>
			<td>新闻内容:</td>
			<td>
			<textarea rows="8" cols="35" name="basefee">
			</textarea>
			</td>
			</tr>
			<tr>
				<td>作者:</td>
				<td><input type="text" name="ratefee"></td>
			</tr>
			<tr>
				<td>新闻描述:</td>
				<td><input type="text" name="newsdesc"></td>
			</tr>
		</table>
		<table align="center">
			<tr>
				<td><input type="submit" value="提交"> <input
					type="reset" value="取消"></td>
			</tr>
		</table>
	</form>
</body>
</html>