package newsManage;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.newsDB;

@WebServlet("/looknewsServlet")
public class looknewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public looknewsServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		newsDB db = new newsDB();
		ResultSet rs = db.selectnews();
		HttpSession session = request.getSession();
		ArrayList<newsbean> a1 = new ArrayList<newsbean>();
		try {
			while (rs.next()) {
				newsbean newsbean = new newsbean();

				newsbean.setnewsname(rs.getString("newsname"));
				newsbean.setBasefee(rs.getString("basefee"));
				newsbean.setRatefee(rs.getString("ratefee"));
				newsbean.setnewsdesc(rs.getString("newsdesc"));
				a1.add(newsbean);
				session.setAttribute("a1", a1);
				System.out.println(a1.size() + "................");
			}
			rs.close();
			response.sendRedirect("http://localhost:8084/dianying/newsManage/looknews.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
