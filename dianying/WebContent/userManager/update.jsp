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
--> 
</style> 
</head>
<body background="../images/4.jpg">

  <hr>
        <div align="center"><form method="post" action="http://localhost:8084/dianying/beforeUpdate">
            <table border="0" width="100%" align="center"> 
                <tr>
                <td width="15%" align="center"><a href="http://localhost:8084/dianying/userManager/addUser.jsp">用户列表</a></td>
               请输入账号名称：
                    <input type="text" name="accountcha">
                    <input type="submit" value="查询"></td>
                       <td width="15%" align="center"><a href="http://localhost:8084/dianying/userManager/beforeUpdate.jsp">修改用户</a></td>
                </tr>
            </table>
            </form>
        </div>
          <hr>
<div >

 </div>  
   <br><br><form method="post" action="http://localhost:8084/dianying/update">
          <h2 align="center">请根据在原来的基础上修改用户的基本信息 </h2>
          <%
          ArrayList b1=(ArrayList)session.getAttribute("b1");
          
          %>
          <table  align="center" border="0">
          <% 
           for(int i=0;i<b1.size();i++){
       userbean userbean=(userbean)b1.get(i);
          %>
            <tr align="center"><td >用户状态 *</td>
                  <td >开通<input type="radio" name="state" value="开通 %>" checked>
                                    暂停<input type="radio" name="state" value="暂停"></td>
              </tr>
              <tr align="center"><td >帐务帐号 *</td>
                  <td ><input type="text" name="account" value="<%=userbean.getAccount()%>"></td>
              </tr>
              <tr align="center"><td >用户名称 *</td>
                  <td ><input type="text" name="username" value="<%=userbean.getUsername()%>"> </td>
              </tr>
              <tr align="center"><td >联系电话</td>
                  <td ><input type="text" name="tel" value="<%=userbean.getTel()%>"></td>
              </tr>
              <tr align="center"><td >电子邮箱 *</td>
                  <td ><input type="text" name="email"  value="<%=userbean.getEmail()%>"></td>
              </tr>
              <tr align="center"><td >日期</td>
                  <td ><input type="text" name="date" value="<%=userbean.getDate()%>"></td>
              </tr>
              <tr align="center"><td colspan="2" align="center">
                        <input type="submit" value="确  定">
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
          </table>
          <%   } %>
          </form>
    </body>
</html>
