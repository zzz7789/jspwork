package conn;
import java.sql.*;
public class sqlconn {
	public Connection getCon() throws ClassNotFoundException, SQLException
	{

		
			String driverClass = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://127.0.0.1:3306/db_zifei?characterEncoding=utf-8";
			String username = "root";
			String pwd = "1.2.336";
			Class.forName(driverClass);
			Connection conn = DriverManager.getConnection(url, username, pwd);
			return conn;
	
		
	}
}
