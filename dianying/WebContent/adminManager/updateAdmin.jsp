<%@page import="adminManager.adminbean"%>
<%@page import="util.Conn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="userManage.userbean"%>
<%@page import="org.apache.tomcat.jni.Mmap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
th {
	color: white;
}
tr {
	color: white;
}
a{
color: white;
}
h2 {
	color: yellow;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">

  <hr>
      <div align="center">

		<table width="91%" border="1" align="center" >
			<tr align="center" >
				<td width="17%" height=""><a href="http://localhost:8084/dianying/adminManager/addAdmin.jsp">增加管理员</td>
					<td width="17%"  height="40px"><a href="http://localhost:8084/dianying/adminManager/adminlist.jsp">管理员列表</a></td>
				<td>修改管理员信息</td>
					<td width="17%"  height="40px"><span class="yellow"><a
						href="http://localhost:8084/dianying/adminManager/beforedeleteAdmin.jsp"> 删除管理员</a></span></td>
			</tr>
			</table>
			</div>
          <hr>
<div >

 </div>  
   <br><br><form method="post" action="http://localhost:8084/dianying/updateAdmin">
          <h2 align="center">请根据管理员姓名修改管理员的基本信息</h2>
          <%
          ArrayList f1=(ArrayList)session.getAttribute("f1");
          
          %>
   <font color="yellow">  请更改原来的数据：</font>     
          
         
       <table width="91%" border=1 bgcolor="" align="center">
        <% 
           for(int i=0;i<f1.size();i++){
       adminbean adminbean=(adminbean)f1.get(i);
          %>
				<tr align="center">
					<td>登陆帐号 *</td>
					<td width="32%"><input type="text" name="username" value="<%=adminbean.getUsername() %>"></td>
					<td width="48%">登录账号不可修改</td>
				</tr>
				<tr align="center">
					<td width="20%">登陆密码 *</td>
					<td><input type="password" name="password" value="<%=adminbean.getPassword()%>"></td>
					<td>请输入管理员的登陆密码（只限字母，数字，特殊符号）</td>
				</tr>
				<tr align="center">
					<td>重复密码<span class="pp">*</span>
					</td>
					<td><input name="password1" type="password" value="<%=adminbean.getPassword()%>"></td>
					<td>请重复输入以上管理员密码</td>
				</tr>
				<tr align="center">
					<td>真实姓名<span class="pp">*</span></td>
					<td><input type="text" name="name" value="<%=adminbean.getName()%>"></td>
					<td>请输入管理员的真实姓名</td>
				</tr>
				
				<tr align="center">
					<td>管理员邮箱<span class="pp">*</span>
					</td>
					<td><input type="text" name="email" value="<%=adminbean.getEmail()%>"></td>
					<td>请输入管理员邮箱</td>
				</tr>
				<tr align="center">
					<td>联系电话</td>
					<td><input type="text" name="tel" value="<%=adminbean.getTel()%>"></td>
					<td>请输入管理员联系电话</td>
				</tr>
	
				
				<tr align="center">
					<td>登陆权限<span class="permission">*</span>
					</td>
					<td></td>
					<td>请选择管理员的操作权限</td>
				</tr>
				<tr align="center">
					<td>&nbsp;</td>
					<td>&nbsp;<input type="checkbox" name="checkbox"
						value=" 管理员管理" checked>&nbsp; 管理员管理
					</td>
					<td>&nbsp;</td>
				</tr>
				
				<tr align="center">
					<td>&nbsp;</td>
					<td>&nbsp;<input type="checkbox" name="checkbox" value="用户管理">&nbsp;
						用户管理
					</td>
					<td>&nbsp;</td>
				</tr>
				
			
				<tr align="center">
					<td colspan="3"><div align="center">
							<input type="submit" name="Submit" value="提交">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset"
								value="清除">
						</div></td>
				</tr>
				<%} %>
			</table>
			<p>&nbsp;</p>
		</form>
		<p>&nbsp;</p>
	</div>
	
</body>
</html>
