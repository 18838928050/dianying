package newsManage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.newsDB;
import adminManager.PubliInfo;

@WebServlet("/DeletenewsServlet")
public class DeletenewsServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String newsname = request.getParameter("newsname");
		System.out.println(newsname + "NEWSNAME");
		newsDB db = new newsDB();

		if (db.Deletenews(newsname)) {
			PubliInfo.getMess("删除成功！");
			response.sendRedirect("http://localhost:8084/dianying/newsManage/lookDeletenews.jsp");
		}
	}

}
