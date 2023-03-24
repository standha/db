package db;

import java.sql.Connection;
import java.sql.DriverManager;



public class MariaDBConnectionTest {

    private static final String DRIVER = "org.mariadb.jdbc.Driver";

    private static final String URL = "jdbc:mariadb://127.0.0.1:3306/test";

    private static final String USER = "root"; //db 접속 id

    private static final String PW = "root"; //db 접속 password
}


/*public class DBConnUtils {
    public static Connection getConnection(){
        try{
            String dbURL = "jdbc:mysql://localhost:3306/JSP";
            String dbID = "root";
            String dbPW = "root";
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(dbURL,dbID,dbPW);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}*/