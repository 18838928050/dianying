package adminManager;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class beforeDeleteAdmin
 */
@WebServlet("/beforeDeleteAdmin")
public class beforeDeleteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");

		try {

			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection connection = DriverManager.getConnection(url, "root", "root");
			Statement statement = connection.createStatement();
			String sql = "select * from user where username='" + username + "'";
			ResultSet rs = statement.executeQuery(sql);
			HttpSession session = request.getSession();
			while (rs.next()) {
				adminbean adminbean = new adminbean();
				adminbean.setUsername(rs.getString(1));
				/*
				 * adminbean.setPassword(rs.getString(2));
				 * adminbean.setName(rs.getString(3));
				 * adminbean.setSex(rs.getString(4));
				 * adminbean.setEmail(rs.getString(5));
				 * adminbean.setTel(rs.getString(6));
				 * adminbean.setDate(rs.getString(7));
				 * adminbean.setNation(rs.getString(8));
				 * adminbean.setUserquestion(rs.getString(9));
				 * adminbean.setPermission(rs.getString(10));
				 * adminbean.setPlace(rs.getString(11));
				 */
				session.setAttribute("adminbean", adminbean);

			}
			response.sendRedirect("http://localhost:8084/dianying/deleteAdmin");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
