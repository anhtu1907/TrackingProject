package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    static Connection cnn;

    public static Connection makeConnection(){
<<<<<<< HEAD
        String dbUrl = "jdbc:sqlserver://localhost:1433;encrypt=true;trustServerCertificate=true;" +
                "integratedSecurity=true; databaseName=TrackingAnimeDB";
=======
        String dbUrl = "jdbc:sqlserver://localhost:1433;encrypt=true;trustServerCertificate=true;integratedSecurity=true; databaseName=TrackingAnimeDB";
>>>>>>> b550c251204b4cd80132e39612f5820a3034bdaa
        try {
            cnn = DriverManager.getConnection(dbUrl);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return cnn;
    }
}
