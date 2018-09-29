<%-- 
    Document   : add
    Created on : 2016-6-29, 14:48:54
    Author     : Administrator
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
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
h3 {
	color: yellow;
}

--> 
</style> 
</head>
<body background="../images/4.jpg""
	link="" vlink="" alink="">
	<hr size="1" noshade>
	<div align="center">

		<table width="91%" border="1" align="center"  >
		 <hr>
			<tr align="center" bordercolor="red" >
				<td width="17%" height=""><a href="http://localhost:8084/dianying/adminManager/addAdmin.jsp">增加管理员</td>
				<td width="17%" height="40px">管理员列表</td>
					<td width="17%"  height="40px"><span class="yellow"><a
						href="http://localhost:8084/dianying/adminManager/beforedeleteAdmin.jsp"> 删除管理员</a></span></td>
			</tr>
			</table>
			</div>
			<div align="center">
			<table>
			<form action="http://localhost:8084/dianying/beforeUpdatead" method="post">
			<p>
<h3>修改管理员信息：请输入姓名</h3>
<input type="text" name="username">
<input type="submit" value="查找">
<input type="reset" value="重置">&nbsp;
</p>

</form>
			<tr>
			<th height="30">帐务帐号</th>
			<th height="30">真实姓名</th>
			<th height="30">电子邮箱</th>
			<th height="30">日期</th>
			<th height="30">地区</th>
			</tr>
			<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection con = DriverManager.getConnection(url, "root", "root");
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
				Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		String sql="select * from user";
		ResultSet rs=stmt.executeQuery(sql);
		rs.last();
		rowcount=rs.getRow();
		pagecount=(rowcount+pagesize-1)/pagesize;
		if(intpage>pagecount)
	    intpage=pagecount;
	   if(pagecount>0){
				rs.absolute((intpage-1)*pagesize+1);
				i=0;
				while(i<pagesize&&!rs.isAfterLast()){
					%>
					
			<tr>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("name") %></td>
						<td><%=rs.getString("email") %></td>
						<td><%=rs.getString("date") %></td>
						<td><%=rs.getString("place") %></td>
						</td>
			</tr>
			<%
			rs.next();
			i++;
				}}
			%>
			</table>
			</div>
			
				<hr>
			<div align="center">
		<font color="yellow">第<%=intpage %>页 共<%=pagecount %>页</font>	
			<%
			if(intpage<pagecount){%>
				<a href="http://localhost:8084/dianying/adminManager/adminlist.jsp?page=<%=intpage+1%>">下一页</a>
				
		<%}
			if(intpage>1){
			%>
			<a href="http://localhost:8084/dianying/adminManager/adminlist.jsp?page=<%=intpage-1%>">上一页</a>
			<%
			
			}rs.close();
			stmt.close();
        con.close();
			%>
</div>
</body>
</html>

