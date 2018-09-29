package userself;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminManager.PubliInfo;

/**
 * Servlet implementation class updatePasswordServlet
 */
@WebServlet("/updatePasswordServlet")
public class updatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection connection = DriverManager.getConnection(url, "root", "root");
			Statement statement = connection.createStatement();
			String sql = "update user set username='" + username + "',password='" + password
					+ "' where username='" + username + "'";
			statement.executeUpdate(sql);
			/*
			 * String sql2="select * from user where username='" + username +
			 * "'"; ResultSet rs=statement.executeQuery(sql2);
			 */

			PubliInfo.getMess("您已经修改密码成功！");
			response.sendRedirect("http://localhost:8084/dianying/userself/index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
