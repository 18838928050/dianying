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

@WebServlet("/lookUserServlet")
public class lookUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		try {
			String id = new String(request.getParameter("id").getBytes("iso-8859-1"), "utf-8");
			if (id.length() == 0 || id == null) {
				response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");
			}
			Conn.close();
			String sql1 = "select * from usermanage where id='" + id + "'";
			ResultSet rs = Conn.executeQuery(sql1);
			rs.last();
			int i = 0;
			i = rs.getRow();
			if (i > 0) {
				String sql2 = "selsect * from usermanage where id='" + id + "'";
				rs = Conn.executeQuery(sql2);
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
				Conn.close();
				response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");
			} else {
				HttpSession session = request.getSession();
				ArrayList list = new ArrayList();
				Conn.close();
				response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");
			}

		} catch (Exception e) {
			// TODO: handle exception
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
