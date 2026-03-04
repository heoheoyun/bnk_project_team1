package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBaccess {
	
	public static Connection getConn() {
		Connection conn = null;
		Properties props = new Properties();
		
		try {
			props.load(DBaccess.class.getClassLoader()
			        .getResourceAsStream("db.properties"));
			Class.forName(props.getProperty("db.driver"));
			conn = DriverManager.getConnection(props.getProperty("db.url"), props.getProperty("db.user"), props.getProperty("db.pw"));
		
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("DB 접속하는데 에러났어요");
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.out.println("Close 하는데 에러났어요");
		}
	}
}
