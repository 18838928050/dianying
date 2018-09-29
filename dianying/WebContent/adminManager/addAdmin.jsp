<%-- 
    Document   : add
    Created on : 2016-6-29, 14:48:54
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style type="text/css">
td {
	color: white;
}
th {
	color: white;
}
a{
color: white;
}
p {
	color: white;
}
</style>
</head>
<body background="../images/4.jpg">
	<hr size="1" noshade>
	<div align="center">
		<table width="91%" border="1" align="center">
			<tr align="center">
				<td width="17%" height="40px"><span class="yellow">增加管理员</span></td>
				<td width="17%" height="40px"><a
					href="http://localhost:8084/dianying/adminManager/adminlist.jsp">管理员列表</a></td>
				<td width="17%" height="40px"><span class="yellow"><a
						href="http://localhost:8084/dianying/adminManager/beforedeleteAdmin.jsp">
							删除管理员</a></span></td>
			</tr>
		</table>

		<form method="post"
			action="http://localhost:8084/dianying/addAdminServlet">
			<p class="pp" align='center' >请添加管理员信息</p>

			<table width="91%" border=1 bgcolor="">
				<tr>
					<td>登陆帐号 *</td>
					<td width="32%"><input type="text" name="username" value=""></td>
					<td width="48%">请输入管理员账号（username）（只限字母，数字，下划线）</td>
				</tr>
				<tr>
					<td width="20%">登陆密码 *</td>
					<td><input type="password" name="password" value=""></td>
					<td>请输入管理员的登陆密码（只限字母，数字，特殊符号）</td>
				</tr>
				<tr>
					<td>重复密码<span class="pp">*</span>
					</td>
					<td><input name="password1" type="password1"></td>
					<td>请重复输入以上管理员密码</td>
				</tr>
				<tr>
					<td>真实姓名<span class="pp">*</span></td>
					<td><input type="text" name="name" value=""></td>
					<td>请输入管理员的真实姓名</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>男<input type="radio" name="sex" value="男" checked>
						女<input type="radio" name="sex" value="女">
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>管理员邮箱<span class="pp">*</span>
					</td>
					<td><input type="text" name="email" value=""></td>
					<td>请输入管理员邮箱</td>
				</tr>
				<tr>
					<td>联系电话</td>
					<td><input type="text" name="tel" value=""></td>
					<td>请输入管理员联系电话</td>
				</tr>
				<tr>
					<td>日期</td>
					<td><select name="year" size="1">
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
					</select>年 <select name="month" size="1">
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select>月 <select name="date" size="1">
							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select>日</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>用户民族</td>
					<td><input type="radio" name="nation" value="汉族" checked>汉族
						<input type="radio" name="nation" value="回族" checked>回族 <input
						type="radio" name="nation" value="壮族" checked>壮族 <input
						type="radio" name="nation" value="其他" checked>其他</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>用户问题</td>
					<td><select name="userquestion" size="1">
							<option value="你的父亲是">你的父亲是</option>
							<option value="你的爱好是">你的爱好是</option>
							<option value="你的好朋友是">你的好朋友是</option>
							<option value="你的母亲是">你的母亲是</option>
							<option value="你的班级是">你的班级是</option>
							<option value="你的工作是">你的工作是</option>

					</select></td>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td>登陆权限<span class="permission">*</span>
					</td>
					<td></td>
					<td>请选择管理员的操作权限</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;<input type="checkbox" name="checkbox"
						value=" 管理员管理" checked>&nbsp; 管理员管理
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;<input type="checkbox" name="checkbox" value="用户管理">&nbsp;
						用户管理
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>家庭住址</td>
					<td><select name="sheng" size="1">
							<option value="河南">河南</option>
							<option value="河北">河北</option>
							<option value="广东">广东</option>
							<option value="江苏">江苏</option>
							<option value="浙江">浙江</option>
							<option value="广西">广西</option>
							<option value="黑龙江">黑龙江</option>
							<option value='广东省'>广东省</option>

							<option value='辽宁省'>辽宁省</option>

							<option value='江苏省'>江苏省</option>

							<option value='湖北省'>湖北省</option>

							<option value='四川省'>四川省</option>

							<option value='陕西省'>陕西省</option>

							<option value='河北省'>河北省</option>

							<option value='山西省'>山西省</option>

							<option value='河南省'>河南省</option>

							<option value='吉林省'>吉林省</option>

							<option value='山东省'>山东省</option>

							<option value='安徽省'>安徽省</option>

							<option value='浙江省'>浙江省</option>

							<option value='福建省'>福建省</option>

							<option value='云南省'>云南省</option>

							<option value='江西省'>江西省</option>

							<option value='湖南省'>湖南省</option>

							<option value='贵州省'>贵州省</option>

							<option value='海南省'>海南省</option>

							<option value='甘肃省'>甘肃省</option>

							<option value='青海省'>青海省</option>

							<option value='黑龙江省'>黑龙江省</option>

							<option value='内蒙古自治区'>内蒙古自治区</option>

							<option value='广西自治区'>广西自治区</option>

							<option value='西藏自治区'>西藏自治区</option>

							<option value='新疆自治区'>新疆自治区</option>

							<option value='宁夏自治区'>宁夏自治区</option>
					</select>省 <select name="shi" size="1">
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							<option value="商丘">商丘</option>
							<option value="郑州">郑州</option>
							<option value="周口">周口</option>
							
							<option>
					</select>市 <select name="xian" size="1">
							<option value="虞城">虞城</option>
							<option value="虞城">怀仁</option>
							<option value="虞城">阳城</option>
							<option value="虞城">平顺</option>
							<option value="虞城">长子</option>
							<option value="虞城">大同</option>
							<option value="虞城">虞城</option>
							<option value="虞城">怀仁</option>
							<option value="虞城">阳城</option>
							<option value="虞城">平顺</option>
							<option value="虞城">长子</option>
							<option value="虞城">大同</option>
							<option value="虞城">阳城</option>
							<option value="虞城">平顺</option>
							<option value="虞城">长子</option>
							<option value="虞城">大同</option>
								<option value="虞城">大同</option>
							<option value="虞城">阳城</option>
							<option value="虞城">平顺</option>
							<option value="虞城">长子</option>
							<option value="虞城">大同</option>
							
							
					</select>县</td>

					<td>请输入您的家庭住址</td>
				</tr>
				<tr>
					<td colspan="3"><div align="center">
							<input type="submit" name="Submit" value="提交">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset"
								value="清除">
						</div></td>
				</tr>
			</table>
			<p>&nbsp;</p>
		</form>
		<p>&nbsp;</p>
	</div>

</body>
</html>

