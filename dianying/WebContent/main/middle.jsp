

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style type="text/css">
       #id{
	style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; 
}
td {
	color: white;
	
}
a {
	color: white;
}
       
       
       </style>
    </head>
    <body background="../images/4.jpg" >
        <%
            String userName=request.getParameter("userName");
    
        %>
        <table width="100%"  >
              <tr height="10" bgcolor="" align="center" bordercolor="red" >
                   <td><a href="http://localhost:8084/dianying/addUserServlet?userName=<%=userName%> " target="main" id ="a" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">用户管理</a></td>
                  <td><a href="http://localhost:8084/dianying/adminManager/addAdmin.jsp" target="main" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; "> 管理员管理</a></td>
                  <td><a href="http://localhost:8084/dianying/movieUP/fileUp.jsp" target="main" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  width:300px;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">电影上传</a></td>
                  <td><a href="http://localhost:8084/dianying/newsManage/addnews.jsp" target="main" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  width:300px;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">新闻管理</a></td>
                  <td><a href="http://localhost:8084/dianying/userself/index.jsp" target="main" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">系统管理 </a></td>
                  <td><a href="http://localhost:8084/dianying/login.jsp" target="_top" style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">退出主页面</a></td>
       <td style="border-width:2px; border-top-width:3px; border-color:#FFC0D6;  text-decoration:none;     border-top-color:#FFC8F7; border-style:solid; text-decoration:no:solid; width:pc; padding:6px; margin:1px; padding-left:4px; font-family:fantasy; font-size:16pt; text-indent:1em; background-image:url(qrx/resize-box.gif); background-repeat:repeat; ">欢迎，<%=userName%>登录系统</td> 
              </tr>
          </table>
  </body>
</html>
