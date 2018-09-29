
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>欢迎注册电影后台管理系统</title>
    <style type="text/css">
   td {
	color: yellow;
}
    
    </style>
    </head>
    
    <body background="../images/zhucee.jpg" >
        <table align="center">
        <br><br>  
            <tr>
                <td colspan="3" align="center">
                    <h3><font color="red">请填写以下注册信息</font></h3>
                </td>
            </tr>
            <tr>
                <td >
                     <br><form method="post" action="http://localhost:8084/dianying/zhuceServlet">
        
          <table width="100%" align="center" border="0" >
              <tr height="30px"><td>帐务帐号 *&nbsp;</td>
                  <td ><input type="text" name="account">&nbsp;&nbsp;请输入用户的帐务帐号名称</td>
              </tr>
              <tr height="30px"><td>用户名称 *&nbsp;</td>
                  <td ><input type="text" name="username">&nbsp;&nbsp;请输入用户真实姓名</td>
              </tr>
              <tr height="30px"><td >联系电话&nbsp;</td>
                  <td ><input type="text" name="tel">&nbsp;&nbsp;请连续输入用户电话</td>
              </tr>
              <tr height="30px"><td >电子邮箱 *&nbsp;</td>
                  <td ><input type="text" name="email">&nbsp;&nbsp;请输入正确的电子邮箱信息</td>
              </tr>
              <tr height="30px"><td >注册日期&nbsp;</td>
                  <td ><input type="text" name="date">&nbsp;&nbsp;今天是几号</td>
              </tr>
              <tr height="30px"><td colspan="2" align="center">
                        <input type="submit" value="确  定">
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清  除"></td></tr>
          </table></form>
    </body>
</html>
