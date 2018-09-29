package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conn {
	private static Connection connection;
	private static Statement stmt;
	private static ResultSet rSet;
	private static String url = "jdbc:mysql://localhost:3306/dianying?useUnicode=true&characterEncoding=gbk";
	static String name = "com.mysql.jdbc.Driver";

	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(name);
			connection = DriverManager.getConnection(url, "root", "root");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public static ResultSet executeQuery(String sql) {

		connection = getConnection();
		try {
			stmt = connection.createStatement();
			rSet = stmt.executeQuery(sql);
		} catch (Exception e) {
		}
		return rSet;
	}

	public static int update(String sql) {
		int result = 0;

		connection = getConnection();
		try {
			stmt = connection.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public static void close() {

	}
}
