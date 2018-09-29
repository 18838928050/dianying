package newsManage;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.newsDB;

/**
 * Servlet implementation class lookUpdatenewsServlet
 */
@WebServlet("/lookUpdatenewsServlet")
public class lookUpdatenewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			newsDB db = new newsDB();
			String newsname = request.getParameter("newsname");
			ResultSet rs = db.selectUpdatenews(newsname);
			HttpSession session = request.getSession();
			ArrayList a1 = new ArrayList();
			while (rs.next()) {
				newsbean newsbean = new newsbean();
				newsbean.setnewsname(rs.getString(1));
				newsbean.setBasefee(rs.getString(2));
				newsbean.setRatefee(rs.getString(3));
				newsbean.setnewsdesc(rs.getString(4));
				a1.add(newsbean);
				session.setAttribute("a1", a1);
			}
			rs.close();
			response.sendRedirect("selectUpdateStudent.jsp");

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}
