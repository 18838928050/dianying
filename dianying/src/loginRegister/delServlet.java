package loginRegister;

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

@WebServlet("/delServlet")
public class delServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String account = null;

		HttpSession session = request.getSession();
		ArrayList mm = (ArrayList) session.getAttribute(account);
		Conn.getConnection();
		String sql = "select * from usermanage where account='" + account + "'";
		ResultSet rSet = Conn.executeQuery(sql);
		System.out.println("用户信息为空，请添加用户信息");
		response.sendRedirect("http://localhost:8084/dianying/userManager/addUser.jsp");

	}

}
