<%@page import="userself.self"%>
<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.adminDB"%>
<%@page import="util.userDB"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
<%
ArrayList ww3=(ArrayList)session.getAttribute("ww3");
%>
<br><br><br><br><br><br>
<h1 align="center"><font color="yellow">这里是爱情片~~</font></h1>
<h2><font color="yellow">电影下载</font></h2>
<hr>
<a href="http://localhost:8084/dianying/fileDownAction">单击此处下载动作片</a>
<a href="DownServlet?fileName=文件.pdf " mce_href="DownServlet?fileName=文件.pdf">文件.pdf</a>  
</body>
</html>