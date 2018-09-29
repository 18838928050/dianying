package loginRegister;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Conn;
import adminManager.PubliInfo;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),
				"UTF-8");
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),
				"UTF-8");
		if (username.equals("")) {
			PubliInfo.getMess("用户名不能为空！");
			response.sendRedirect("http://localhost:8084/dianying/login.jsp");
		} else if (password.equals("")) {
			PubliInfo.getMess("用户密码不能为空，登录66失败");
			response.sendRedirect("http://localhost:8084/dianying/login.jsp");
		} else {
			try {
				Conn.getConnection();
				String sql = "select * from user where userName='" + username + "'";
				ResultSet rs = Conn.executeQuery(sql);
				int N = 0;
				int P = 0;
				System.out.println("222");
				while (rs.next()) {
					if (username.equals(rs.getString("userName"))) {
						N = 111111;
						if (password.equals(rs.getString("password"))) {
							System.out.println("222552");
							P = 111111;
							LoginBean nn = new LoginBean();// 实例化保存个人信息的JavaBean
							nn.setUsername(username);// 保存用户名
							nn.setPassword(password);// 保存密码
							HttpSession session = request.getSession();// 获取session对象
							ArrayList login = new ArrayList();// 实例化列表对象
							login.add(nn);// 把个人信息保存到列表中
							session.setAttribute("login", login);// 把列表保存到session对象中，以便在别的页面中获取个人信息
							response.sendRedirect("http://localhost:8084/dianying/main/main.jsp");
							response.sendRedirect("http://localhost:8084/dianying/main/top.jsp");
						} else {

						}
					} else {
						N++;
					}
				}
				System.out.println("333");
				if (N < 111111) {
					PubliInfo.getMess("该用户尚未注册，登录失败！");
					response.sendRedirect("http://localhost:8084/dianying/login.jsp");
				} else if (P < 111111) {
					PubliInfo.getMess("用户密码不正确，登录失败！");
					response.sendRedirect("http://localhost:8084/dianying/login.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
