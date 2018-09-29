
<%@page import="loginRegister.LoginBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>电影管理系统--主页面</title>
    </head>
    <%
        String userName=null;
            //获取在LoginServlet.java中保存在session对象中的数据
            ArrayList login=(ArrayList)session.getAttribute("login");
            if(login==null||login.size()==0){
                   response.sendRedirect("http://localhost:8084/dianying/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUsername();
                }
            }
    %>
    <frameset cols="10%,*" framespacing="0" border="no" frameborder="0">
        <frame src="../main/left.jsp" name="left" scrolling="no">
        <frameset rows="15%,10%,*">
            <frame src="../main/top.jsp" name="top" scrolling="no">
                <frame src="../main/middle.jsp?userName=<%=userName%>" name="toop" scrolling="no">
            <frame src="../main/bottom.jsp" name="main">
        </frameset>
  </frameset>

</html>
