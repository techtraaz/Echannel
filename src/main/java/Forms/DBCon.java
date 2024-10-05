package Forms;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
    public static Connection getConnection() throws Exception {
        // Load and register MySQL JDBC driver (Optional for newer versions)
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/echannel";
        String username = "root";  // replace with your MySQL username
        String password = "2002";  // replace with your MySQL password

        return DriverManager.getConnection(url, username, password);
    }
}
