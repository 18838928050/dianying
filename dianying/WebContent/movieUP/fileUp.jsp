<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
<style type="text/css">
td {
	color: yellow;
}
    我是master增加
</style>   
    <title><text name="影片上传界面"/> </title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
<body background="../images/4.jpg">
<form action="http://localhost:8084/dianying/ActionResult" method="post" enctype="multipart/form-data">
<table align="center" background="../images/4.jpg">
<br><br><br><br>
<tr align="center">
<td>
  <input type="file" name="FileUpload1"/><br />
</td>
</tr>
<tr>
<td>
  <input type="submit" name="Submit" id="Submit" value="Upload" />
</td>
</tr>
</table>
</form>
</body>
</html>