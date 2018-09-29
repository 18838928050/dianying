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

import newsManage.newsbean;
import util.newsDB;

/**
 * Servlet implementation class LookDeletenewsServlet
 */
@WebServlet("/LookDeletenewsServlet")
public class LookDeletenewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			newsDB db = new newsDB();
			ResultSet rs = db.lookDeletenews();
			HttpSession session = request.getSession();
			ArrayList a1 = new ArrayList();
			while (rs.next()) {
				while (rs.next()) {
					newsbean newsbean = new newsbean();
					newsbean.setnewsname(rs.getString(1));
					a1.add(newsbean);
					session.setAttribute("a1", a1);

				}
				rs.close();
				response.sendRedirect("lookDeletnews.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
