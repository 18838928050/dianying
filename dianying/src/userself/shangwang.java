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

/**
 * Servlet implementation class zhangdan
 */
@WebServlet("/shangwang")
public class shangwang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String newsname1 = "上网费用";
		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection connection = DriverManager.getConnection(url, "root", "root");
			Statement statement1 = connection.createStatement();

			String sql1 = "select * from news where newsname='" + newsname1 + "'";
			ResultSet rs1 = statement1.executeQuery(sql1);
			self self = new self();
			ArrayList ww = new ArrayList();
			HttpSession session = request.getSession();
			while (rs1.next()) {
				self.setUsername(newsname1);
				self.setNewsname(rs1.getString(1));
				self.setNewsdesc(rs1.getString(4));
				self.setRatefee(rs1.getString(3));
			}
			ww.add(self);
			session.setAttribute("ww", ww);
			System.out.println(ww);
			response.sendRedirect("http://localhost:8084/dianying/userself/shangwang.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
