
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@page import="userManage.userbean"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Conn" %>
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
--> 
</style> 
</head>
<body background="../images/4.jpg">
	  <hr>
               <form action="http://localhost:8084/dianying/beforeSelect" method="post">
        <div align="center">
            <table border="0" width="100%" align="center"> 
                <tr align="center">
          <!--          <td  align="center">添加用户</a></td> -->
                <td  align="center">用户列表</a></td>
                <td  align="center">请输入账号名称：
                    <input type="text" name="accountcha">
                    <input type="submit" value="查找"></td>
                     <td width="15%" align="center"><a href="http://localhost:8084/dianying/userManager/beforeUpdate.jsp">修改用户</a></td>
                </tr>
            </table>
            </form>
        </div>
          <hr>
	<table border="2" width="60%" align="center">
		<tr height="10%">
			<th height="30">帐务帐号</th>
			<th height="30">姓名</th>
			<th height="30">电话</th>
			<th height="30">邮箱</th>
			<th height="30">日期</th>
			
		</tr>
		
		<%
		
		int pagesize;//每页显示的记录条数
		int rowcount;//总记录数
		int pagecount;//总页数
		int intpage;//待显示页码
		int i;
		pagesize = 8;
		String strpage = request.getParameter("page");//取得待显示页码
		
		if(strpage==null){
			intpage=1;
		}else{
			intpage=java.lang.Integer.parseInt(strpage);
			if(intpage<1)
				intpage=1;
		}
		
		Conn.getConnection();
		String sql="select * from usermanage";
		ResultSet rSet=Conn.executeQuery(sql);
		rSet.last();
		rowcount=rSet.getRow();
		pagecount=(rowcount+pagesize-1)/pagesize;
		if(intpage>pagecount)
	    intpage=pagecount;
	   if(pagecount>0){
				rSet.absolute((intpage-1)*pagesize+1);
				i=0;
				while(i<pagesize&&!rSet.isAfterLast()){
					%>
						<tr align="center">
						<td><%=rSet.getString("account") %></td>
						<td><%=rSet.getString("username") %></td>
						<td><%=rSet.getString("tel") %></td>
						<td><%=rSet.getString("email") %></td>
						<td><%=rSet.getString("date") %></td>
		</tr>
			<%
			rSet.next();
			i++;
				}}
			%>
			</table>
			<hr>
			<div align="center">
			<font color="yellow">第<%=intpage %>页 共<%=pagecount %>页</font>
			<%
			if(intpage<pagecount){%>
				<a href="http://localhost:8084/dianying/userManager/addUser.jsp?page=<%=intpage+1%>">下一页</a>
				
		<%}
			if(intpage>1){
			%>
			<a href="http://localhost:8084/dianying/userManager/addUser.jsp?page=<%=intpage-1%>">上一页</a>
			<%
			
			}Conn.close();
		
			%>
			
		
			</div>
			</body>
			</html>
					
