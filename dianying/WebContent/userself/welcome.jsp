<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>


.a { color:rgb(255, 255, 255);
font-size:23px;padding-top:19px;padding-bottom:19px;padding-left:25px;padding-right:25px;
border-width:5px;border-color:rgb(197, 229, 145);border-style:solid;border-radius:11px;
background-color:rgb(120, 195, 0);}
.a:hover{color:#ffffff;background-color:#78c300;border-color:#c5e591;}
h1 {
	color: yellow;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
<h1 align="center">欢迎来到电影分类，请选择您想查看的电影信息</h1>

<form action="http://localhost:8084/dianying/shangwang" method="post">
<p align="center">
<input type="submit" value="动作片" class="a"></p>
</form>
<form action="http://localhost:8084/dianying/gouwu" method="post" >
<p align="center">
<input type="submit" value="喜剧片" class="a"></p>
</form>
<form action="http://localhost:8084/dianying/jiaotong" method="post">
<p align="center">
<input type="submit" value="爱情片" class="a"></p>
</form>
<form action="http://localhost:8084/dianying/zufang" method="post">
<p align="center">
<input type="submit" value="文艺片" class="a"></p>
</form>

</body>
</html>