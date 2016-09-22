
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import oracle.jdbc.pool.OracleDataSource;
/**
 *
 * @author Mohini Chaudhary
 */
public class Connector {

    private static Connection conn;
    private static Connector connector;
   

    private Connector() {
        try {
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            //Get a Connection to the database          		
            conn = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok",
                    "N00663947", "password");
            System.out.println("Connection successfull");
        } catch (Exception e) {
            System.out.println("Connection problem " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        if (connector == null) {
            connector = new Connector();
        }
        return conn;
    }

   
}// end of connector
