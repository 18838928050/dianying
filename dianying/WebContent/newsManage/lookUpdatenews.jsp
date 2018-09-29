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
p {
	color: yellow;
}
--> 
</style> 
</head>
<body background="../images/4.jpg">
<center>
<br>
<table   align="center" border="1" height="40px">
<tr>
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/addnews.jsp">添加新闻</a></td>
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/looknews.jsp">查找新闻</a>
</td>
<td width="200px"><a href="http://localhost:8084/dianying/newsManage/lookDeletenews.jsp">删除新闻</a></td>
<td width="200px">修改新闻</td>
</tr>
</table>

<hr>
<form action="http://localhost:8084/dianying/selectUpdatenewsServlet" method="post">
<p>请输入要修改的新闻名称
<input type="text" name="newsname">
</p>
<p>
<input type="submit" value="确定">&nbsp;<input type="reset" value="返回"
onClick="javascript:history.go(-1)">
</p>
</form>
</center>
</body>
</html>