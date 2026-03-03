package utill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtill {
	
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String user = "green";
	String password = "1234";
	
	
	
	private Connection con() throws SQLException, ClassNotFoundException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return  DriverManager.getConnection(url,user,password);
	}

}
