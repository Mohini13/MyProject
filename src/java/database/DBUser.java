/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Mohini Chaudhary
 */
public class DBUser {

    public static boolean userExists(String user_name) throws SQLException {
        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_User where user_name=? ");
        pstmt.setString(1, user_name);
        ResultSet rs = pstmt.executeQuery();

        return rs.next();
    }

    public static boolean registerUser(String user_name, String passwd, String FName,
            String LName, String phone, String user_type, String email) throws SQLException {
        if (userExists(user_name)) {
            return false;
        } else {
            Connection conn = Connector.getConnection();

            PreparedStatement pstmt = conn.prepareStatement("insert into p_User (user_name, passwd, FName, LName, phone, user_type, Email) values (?, ?, ?, ?, ?, ?, ?) ");
            pstmt.setString(1, user_name);
            pstmt.setString(2, passwd);
            pstmt.setString(3, FName);
            pstmt.setString(4, LName);
            pstmt.setString(5, phone);
            pstmt.setString(6, user_type);
            pstmt.setString(7, email);
            pstmt.executeUpdate();
            return true;
        }
    }

    public static User retrieveUser(String userName) throws SQLException {
        Connection conn = Connector.getConnection();
        int userID = 0;
        String user_name = "";
        String passwd = "";
        String FName = "";
        String LName = "";
        String phone = "";
        String email = "";

        PreparedStatement pstmt = conn.prepareStatement("SELECT user_id, user_name, passwd, FName, LName, phone, Email FROM p_User where user_name=? ");
        pstmt.setString(1, userName);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            userID = rs.getInt("user_id");
            user_name = rs.getString("user_name");
            passwd = rs.getString("passwd");
            FName = rs.getString("FName");
            LName = rs.getString("LName");
            phone = rs.getString("phone");
            email = rs.getString("Email");
        }
        User account = new User(userID, user_name, passwd, FName, LName, phone, email);
        return account;
    }
}
