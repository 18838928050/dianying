package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import adminManager.PubliInfo;

public class adminDB {
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	private static String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk&useSSL=true";

	public static Connection getCon() {
		return con;
	}

	public static void setCon(Connection con) {
		adminDB.con = con;
	}

	public static Statement getSt() {
		return st;
	}

	public static void setSt(Statement st) {
		adminDB.st = st;
	}

	public static ResultSet getRs() {
		return rs;
	}

	public static void setRs(ResultSet rs) {
		adminDB.rs = rs;
	}

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		adminDB.url = url;
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

	public boolean addAdmin(String username, String password, String name, String email,
			String tel, String permission, String place) {
		String sql1 = "insert into user values('" + username + "','" + password + "','" + name
				+ "','" + email + "','" + tel + "','" + permission + "')";
		st = getStatement();

		try {
			int row = st.executeUpdate(sql1);
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
			PubliInfo.getMess("无法添加管理员信息，请检查addUser方法");
			return false;
		}
	}

	public ResultSet selectAdmin() {
		String sql = "select * from user";
		st = getStatement();
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {

			e.printStackTrace();
			PubliInfo.getMess("无法查询管理员的所有信息，请检查selectUser方法！");
			return null;
		}

	}

	public ResultSet selectUpdateAdmin(String NO) {
		String sql = "select * from user where username='" + NO + "'";
		st = getStatement();
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法查询要修改的管理员信息，请检查输入管理员账号");
			return null;
		}
	}

	public boolean updateAdmin(String username, String password, String name, String email,
			String tel, String permission) {
		try {
			String sql = "update usermanage set username='" + username + "',password='" + password
					+ "',name='" + name + "',email='" + email + "',tel='" + tel + "',permission='"
					+ permission + "' where usermanage='" + username + "'";
			st = getStatement();
			st.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法进行修改用户的信息，请检查updateUser()方法");
			return false;
		}
	}

	public ResultSet lookDeleteAdmin() {
		try {
			String sql = "select * from user";
			st = getStatement();
			return st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			PubliInfo.getMess("无法查询到要删除的价格信息，请检查updateStudent方法");
			return null;
		}
	}

	public boolean DeleteAdmin(String NO) {
		try {
			String sql = "delete from user where username='" + NO + "'";
			st = getStatement();
			st.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			PubliInfo.getMess("无法删除要删除的管理员信息，请检查DeleteStudent方法");
			return false;
		}

	}

}
