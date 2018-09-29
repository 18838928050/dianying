<%@page import="adminManager.adminbean"%>
<%@page import="util.Conn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="adminManager.adminbean"%>
<%@page import="org.apache.tomcat.jni.Mmap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
h2,h1 {
	color: yellow;
}
tr,td {
color: white;
	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="../images/4.jpg">
 <br><br><form method="post" action="http://localhost:8084/dianying/updatePasswordServlet" >
          <h2 align="center">请根据账号修改用户的密码</h2>
          <%
          ArrayList g=(ArrayList)session.getAttribute("g");
          
          %>
       <h1 align="center">  请更改原来的数据：</h1> 
          
         
          <table width="85%" align="center" border="0">
          <% 
           for(int i=0;i<g.size();i++){
          adminbean adminbean=(adminbean)g.get(i);
          %>
          
             
              <tr align="center"><td >用户名称 
                  <input type="text" name="username" value="<%=adminbean.getUsername()%>"> </td>
              </tr>
              <tr align="center"><td>密码:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="password" value="<%=adminbean.getPassword()%>"></td>
              </tr>
           
              <tr><td colspan="2" align="center">
                        <input type="submit" value="确  定">
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
          </table>
          <%   } %>
          </form>
</body>
</html>