package hsoban;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dao {
	protected Connection con;
	protected Statement stmt;
	protected ResultSet rs;
	
	protected String defaultUrl = "jdbc:oracle:thin:@39.117.21.102:1521:xe";
	protected String defaultUser = "hsoban";
	protected String defaultPassword = "temp";
	
	protected void connect() throws SQLException {
		connect(defaultUrl, defaultUser, defaultPassword);
	}
	
	protected void connect(String url, String user, String password) throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		con = DriverManager.getConnection(url, user, password);
	}
}
