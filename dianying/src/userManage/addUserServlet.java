package userManage;

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

@WebServlet("/addUserServlet")
public class addUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try {
			String accountcha = request.getParameter("accountcha");

			Conn.getConnection();
			String sql = "select *from usermanage";
			ResultSet rs = Conn.executeQuery(sql);
			HttpSession session = request.getSession();
			ArrayList list = new ArrayList();
			while (rs.next()) {
				userbean mm = new userbean();
				mm.setAccount(rs.getString("account"));
				mm.setUsername(rs.getString("username"));
				mm.setTel(rs.getString("tel"));
				mm.setEmail(rs.getString("email"));
				mm.setDate(rs.getString("date"));

				list.add(mm);
				session.setAttribute("list", list);
			}
			// Conn.close();
			response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}
