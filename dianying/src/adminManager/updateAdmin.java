package adminManager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateAdmin")
public class updateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),
				"utf-8");

		String password = new String(request.getParameter("password").getBytes("iso-8859-1"),
				"utf-8");
		String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");

		String email = new String(request.getParameter("email").getBytes("iso-8859-1"), "utf-8");
		String tel = new String(request.getParameter("tel").getBytes("iso-8859-1"), "utf-8");
		String[] checkbox = request.getParameterValues("checkbox");
		String auth1 = "";
		String permission = "";
		for (int i = 0; i < checkbox.length; i++) {
			auth1 += checkbox[i];
			permission = new String(auth1.getBytes("ISO-8859-1"), "UTF-8");
		}
		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection connection = DriverManager.getConnection(url, "root", "root");
			String sql = "update user set username='" + username + "',password='" + password
					+ "',name='" + name + "',email='" + email + "',tel='" + tel + "',permission='"
					+ permission + "' where username='" + username + "'";
			Statement st = connection.createStatement();
			st.executeUpdate(sql);
			PubliInfo.getMess("您已经修改成功！");
			response.sendRedirect("http://localhost:8084/dianying/adminManager/adminlist.jsp");

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
