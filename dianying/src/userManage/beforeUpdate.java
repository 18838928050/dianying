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

import util.userDB;

@WebServlet("/beforeUpdate")
public class beforeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			userDB userDB = new userDB();
			String username = request.getParameter("username");
			ResultSet rs = userDB.selectUpdateUser(username);
			HttpSession session = request.getSession();
			ArrayList b1 = new ArrayList();

			while (rs.next()) {
				userbean mm = new userbean();
				mm.setAccount(rs.getString(2));
				mm.setUsername(rs.getString(3));
				mm.setTel(rs.getString(4));
				mm.setEmail(rs.getString(5));
				mm.setDate(rs.getString(6));
				b1.add(mm);
				session.setAttribute("b1", b1);
				System.out.println(b1);
			}
			/*
			 * System.out.println(b1 + "............");
			 * PubliInfo.getMess("查询成功，请等待跳转");
			 */
			response.sendRedirect("http://localhost:8084/dianying/userManager/update.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
