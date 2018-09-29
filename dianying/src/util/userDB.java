package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import adminManager.PubliInfo;

public class userDB {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	private static String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk&useSSL=true";

	public static Connection getCon() {
		return con;
	}

	public static void setCon(Connection con) {
		userDB.con = con;
	}

	public static Statement getSt() {
		return st;
	}

	public static void setSt(Statement st) {
		userDB.st = st;
	}

	public static ResultSet getRs() {
		return rs;
	}

	public static void setRs(ResultSet rs) {
		userDB.rs = rs;
	}

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		userDB.url = url;
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

	public boolean addUser(String account, String username, String tel, String email, String date) {
		String sql2 = "insert into usermanage values('" + account + "','" + username + "','" + tel
				+ "','" + email + "','" + date + "')";
		st = getStatement();

		try {
			int row = st.executeUpdate(sql2);
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
			PubliInfo.getMess("无法添加用户信息，请检查addUser方法");
			return false;
		}
	}

	public ResultSet selectUser() {
		String sql = "select * from usermanage";
		st = getStatement();
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {

			e.printStackTrace();
			PubliInfo.getMess("无法查询用户的所有信息，请检查selectUser方法！");
			return null;
		}

	}

	public ResultSet selectUpdateUser(String NO) {
		String sql = "select * from usermanage where account='" + NO + "'";
		st = getStatement();
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法查询要修改的用户信息，请检查输入用户账号");
			return null;
		}
	}

	public boolean updateUser(String state, String account, String username, String tel,
			String email, String date) {
		try {
			/*
			 * String sql = "update usermanage set state='" + 1 + "','" + 2 +
			 * "','" + 3 + "','" + 4 + "','" + 5 + "','" + 6 + "'";
			 */

			String sql = "update usermanage set state='" + state + "',account='" + account
					+ "',username='" + username + "',tel='" + tel + "',email='" + email
					+ "',date='" + date + "' where account='" + account + "'";

			st = getStatement();
			st.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法进行修改用户的信息，请检查updateUser()方法");
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
