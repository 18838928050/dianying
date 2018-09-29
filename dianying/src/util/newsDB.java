package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import adminManager.PubliInfo;

public class newsDB {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	private static String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk&useSSL=true";

	public static Connection getCon() {
		return con;
	}

	public static void setCon(Connection con) {
		newsDB.con = con;
	}

	public static Statement getSt() {
		return st;
	}

	public static void setSt(Statement st) {
		newsDB.st = st;
	}

	public static ResultSet getRs() {
		return rs;
	}

	public static void setRs(ResultSet rs) {
		newsDB.rs = rs;
	}

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		newsDB.url = url;
	}

	public Statement getStatement() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(getUrl(), "root", "root");
			return con.createStatement();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public boolean addnews(String newsname, String basefee, String ratefee, String newsdesc) {
		String sql = "insert into news(newsname,basefee,ratefee,newsdesc)" + "values(" + "'"
				+ newsname + "','" + basefee + "','" + ratefee + "','" + newsdesc + "'" + ")";
		st = getStatement();

		try {

			int row = st.executeUpdate(sql);
			if (row == 1) {
				st.close();
				con.close();
				return true;

			} else {
				st.close();
				con.close();
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
			PubliInfo.getMess("无法添加价格信息，请检查addstudent方法");
			return false;
		}
	}

	public ResultSet selectnews() {
		String sql = "select * from news";
		st = getStatement();
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {

			e.printStackTrace();
			PubliInfo.getMess("无法查询价格的所有信息，请检查selectStudent方法！");
			return null;
		}

	}

	public ResultSet selectUpdatenews(String NO) {
		String sql = "select * from news where newsname='" + NO + "'";
		st = getStatement();
		System.out.println("已查询");
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法查询要修改的价格信息，请检查输入学生学号");
			return null;
		}
	}

	public boolean updatenews(String newsname, String basefee, String ratefee, String newsdesc) {
		try {
			String sql = "update news set newsname='" + newsname + "',basefee='" + basefee
					+ "',ratefee='" + ratefee + "',newsdesc='" + newsdesc + "' where newsname='"
					+ newsname + "'";
			st = getStatement();
			st.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法进行修改价格的信息，请检查updatenews()方法");
			return false;
		}
	}

	public ResultSet lookDeletenews() {
		try {
			String sql = "select * from news";
			st = getStatement();
			return st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法查询到要删除的价格信息，请检查updateStudent方法");
			return null;
		}

	}

	public boolean Deletenews(String NO) {
		try {
			String sql = "delete from news where newsname='" + NO + "'";
			st = getStatement();
			st.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			PubliInfo.getMess("无法删除要删除的价格信息，请检查DeleteStudent方法");
			return false;
		}

	}

}
