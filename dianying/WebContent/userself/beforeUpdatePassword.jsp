<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2{
	color: yellow;
}

</style>
</head>
<body background="../images/4.jpg">
<h2 align="center">请输入要修改密码的用户姓名</h2>
<form action="http://localhost:8084/dianying/beforeUpdatePassword" method="post">
<table align="center" width="700px">

<tr  align="center">
<td><input type="text"  width="300px" height="100px" name="username"></td>
</tr>
<tr>
<td align="center" >
<input type="submit" value="确定">
</td>
</tr>
</table>
</form>
