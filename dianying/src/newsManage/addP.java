package newsManage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.newsDB;
import adminManager.PubliInfo;

@WebServlet("/addP")
public class addP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dd");
		String newsname = request.getParameter("newsname");
		String basefee = request.getParameter("basefee");
		String ratefee = request.getParameter("ratefee");
		String newsdesc = request.getParameter("newsdesc");
		newsDB db = new newsDB();

		if (db.addnews(newsname, basefee, ratefee, newsdesc)) {
			PubliInfo.getMess("添加成功");

			response.sendRedirect("http://localhost:8084/dianying/newsManage/looknews.jsp");
		} else {
			System.out.println("添加错误，addP方法");
		}

	}
}
