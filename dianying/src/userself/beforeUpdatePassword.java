package userself;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import adminManager.PubliInfo;
import adminManager.adminbean;

/**
 * Servlet implementation class beforeUpdatePassword
 */
@WebServlet("/beforeUpdatePassword")
public class beforeUpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection connection = DriverManager.getConnection(url, "root", "root");
			String username = request.getParameter("username");
			String sql = "select * from user where username='" + username + "'";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(sql);
			HttpSession session = request.getSession();
			ArrayList g = new ArrayList();
			while (rs.next()) {

				adminbean adminbean = new adminbean();
				adminbean.setUsername(rs.getString(1));
				adminbean.setPassword(rs.getString(2));

				g.add(adminbean);
				session.setAttribute("g", g);
			}
			response.sendRedirect("http://localhost:8084/dianying/userself/updatePassword.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			PubliInfo.getMess("beforeUpdate没有通过");
		}

	}

}
