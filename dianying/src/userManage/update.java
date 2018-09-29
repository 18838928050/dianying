package userManage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.userDB;
import adminManager.PubliInfo;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String state = new String(request.getParameter("state").getBytes("ISO-8859-1"), "utf-8");

		String account = new String(request.getParameter("account").getBytes("iso-8859-1"), "utf-8");
		String username = new String(request.getParameter("username").getBytes("iso-8859-1"),
				"utf-8");

		String tel = new String(request.getParameter("tel").getBytes("iso-8859-1"), "utf-8");
		String email = new String(request.getParameter("email").getBytes("iso-8859-1"), "utf-8");
		String date = request.getParameter("year") + "-" + request.getParameter("month") + "-"
				+ request.getParameter("date");
		userDB userDB = new userDB();

		if (userDB.updateUser(state, account, username, tel, email, date)) {
			PubliInfo.getMess("您已经修改成功！");
			response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");

		}

	}

}
