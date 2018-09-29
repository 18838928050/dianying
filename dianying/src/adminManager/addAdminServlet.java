package adminManager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addAdminServlet")
public class addAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addAdminServlet() {
		super();
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = new String(request.getParameter("username").getBytes("iso-8859-1"),
				"utf-8");
		String password = new String(request.getParameter("password").getBytes("iso-8859-1"),
				"utf-8");
		String password1 = new String(request.getParameter("password1").getBytes("iso-8859-1"),
				"utf-8");
		String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
		String sex = new String(request.getParameter("sex").getBytes("iso-8859-1"), "utf-8");
		String email = new String(request.getParameter("email").getBytes("iso-8859-1"), "utf-8");
		String tel = new String(request.getParameter("tel").getBytes("iso-8859-1"), "utf-8");
		String date = request.getParameter("year") + "-" + request.getParameter("month") + "-"
				+ request.getParameter("date");
		String nation = new String(request.getParameter("nation").getBytes("iso-8859-1"), "utf-8");
		String userquestion = new String(request.getParameter("userquestion")
				.getBytes("iso-8859-1"), "utf-8");
		String[] checkbox = request.getParameterValues("checkbox");
		String auth1 = "";
		String permission = "";
		for (int i = 0; i < checkbox.length; i++) {
			auth1 += checkbox[i];
			permission = new String(auth1.getBytes("ISO-8859-1"), "UTF-8");
		}
		String sheng = new String(request.getParameter("sheng").getBytes("iso-8859-1"), "utf-8");
		String shi = new String(request.getParameter("shi").getBytes("iso-8859-1"), "utf-8");
		String xian = new String(request.getParameter("xian").getBytes("iso-8859-1"), "utf-8");

		String place = sheng + "-" + shi + "-" + xian;
		if (username == null) {
			PubliInfo.getMess("用户账号不得为空");
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
			Connection connection = DriverManager.getConnection(url, "root", "root");
			Statement st = connection.createStatement();

			String sql = "insert into user (username,password,name,sex,email,tel,date,nation,userquestion,permission,place)"
					+ "values(" + "'"
					+ username
					+ "','"
					+ password
					+ "','"
					+ name
					+ "','"
					+ sex
					+ "','"
					+ email
					+ "','"
					+ tel
					+ "','"
					+ date
					+ "','"
					+ nation
					+ "','"
					+ userquestion
					+ "','"
					+ permission + "','" + place + "'" + ")";

			st.executeUpdate(sql);
			PubliInfo.getMess("添加管理员成功");
			String sql1 = "select *  from user";
			ResultSet rs = st.executeQuery(sql1);
			HttpSession session = request.getSession();
			ArrayList a1 = new ArrayList();
			while (rs.next()) {
				adminbean adminbean = new adminbean();
				adminbean.setUsername(rs.getString(1));
				adminbean.setPassword(rs.getString(2));
				adminbean.setName(rs.getString(3));
				adminbean.setEmail(rs.getString(5));
				adminbean.setTel(rs.getString(4));
				a1.add(adminbean);
				session.setAttribute("a1", a1);
			}

			response.sendRedirect("http://localhost:8084/dianying/adminManager/adminlist.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
