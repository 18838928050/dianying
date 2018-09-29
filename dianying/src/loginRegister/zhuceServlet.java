package loginRegister;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.userDB;
import adminManager.PubliInfo;

@WebServlet("/zhuceServlet")
public class zhuceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String account = new String(request.getParameter("account").getBytes("iso-8859-1"), "utf-8");
		String username = new String(request.getParameter("username").getBytes("iso-8859-1"),
				"utf-8");

		String tel = new String(request.getParameter("tel").getBytes("iso-8859-1"), "utf-8");
		String email = new String(request.getParameter("email").getBytes("iso-8859-1"), "utf-8");
		String date = new String(request.getParameter("date").getBytes("iso-8859-1"), "utf-8");
		try {
			if (account.length() == 0 || username.length() == 0 || tel.length() == 0
					|| email.length() == 0 || date.length() == 0) {
				response.sendRedirect("http://localhost:8084/dianying/register/register.jsp");
				System.out.println("1");
			} else if (username.equals(username)) {
				userDB userDB = new userDB();
				if (userDB.addUser(account, username, tel, email, date)) {
					PubliInfo.getMess("恭喜您注册成功");
					response.sendRedirect("http://localhost:8084/dianying/login.jsp");
				}
			} else {
				response.sendRedirect("http://localhost:8084/dianying/register/register.jsp");
				PubliInfo.getMess("请重新注册");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
