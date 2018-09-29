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
import adminManager.PubliInfo;

/**
 * Servlet implementation class beforeSelect accountcha
 */
@WebServlet("/beforeSelect")
public class beforeSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			userDB userDB = new userDB();
			String accountcha = request.getParameter("accountcha");
			ResultSet rs = userDB.selectUpdateUser(accountcha);
			ArrayList cha = new ArrayList();
			HttpSession session = request.getSession();

			while (rs.next()) {
				userbean userbean = new userbean();
				userbean.setAccount(rs.getString("account"));
				userbean.setUsername(rs.getString("username"));
				userbean.setTel(rs.getString("tel"));
				userbean.setEmail(rs.getString("email"));
				userbean.setDate(rs.getString("date"));
				System.out.println(userbean);
				cha.add(userbean);
				session.setAttribute("cha", cha);
				response.sendRedirect("http://localhost:8084/dianying/userManager/cha.jsp");
				PubliInfo.getMess("查询成功，请等待跳转");
			}
			System.out.println(cha);
		} catch (Exception e) {
			PubliInfo.getMess("查询失败，请检查beforeSelect");
		}

	}

}
