package adminManager;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class deleteAdmin
 */
@WebServlet("/deleteAdmin")
public class deleteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {

			Object adminbean = session.getAttribute("adminbean");
			String username = request.getParameter("username");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection connection = DriverManager.getConnection(url, "root", "root");
			Statement statement = connection.createStatement();
			String sql = "delete from user where username='" + username + "'";
			statement.executeUpdate(sql);
			PubliInfo.getMess("删除成功");
			response.sendRedirect("http://localhost:8084/dianying/adminManager/adminlist.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
