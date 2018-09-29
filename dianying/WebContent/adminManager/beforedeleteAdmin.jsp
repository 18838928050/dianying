<%@page import="adminManager.adminbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a{
color: white;
}
h2 {
	color: yellow;
}
</style>
</head>
<body>
<div border="1">
	<body background="../images/4.jpg">
	<br><br><br><br><br>
<h2 align="center">请输入想要删除的管理员姓名</h2>
<form action="http://localhost:8084/dianying/deleteAdmin" method="post">
<table align="center" width="700px">

<tr  align="center">
<td><input type="text"  width="300px" height="100px" name="username"><input type="submit" value="确定"></td>
<td align="center" >

</td>

</tr>

</table>
</form>
	
	</div>
</body>
</html>