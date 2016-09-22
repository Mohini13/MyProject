/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import entities.Account;
import entities.Admin;
import entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Mohini Chaudhary
 */
public class DBAccount {

    public static Account getAccount(String user_name, String passwd) throws SQLException {
        Account account = null;

        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_User where user_name=? AND passwd=?");
        pstmt.setString(1, user_name);
        pstmt.setString(2, passwd);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            int user_id = rs.getInt("user_id");
            String FName = rs.getString("FName");
            String LName = rs.getString("LName");
            String phone = rs.getString("phone");
            String user_type = rs.getString("user_type");
            String Email = rs.getString("Email");

            if (user_type.equalsIgnoreCase("admin")) {
                account = new Admin(user_id, user_name, passwd, FName, LName, phone,Email);
            } else if (user_type.equalsIgnoreCase("user")) {
                account = new User(user_id, user_name, passwd, FName, LName, phone, Email);
            }

        }
        rs.close();
        pstmt.close();
        return account;
    }

    
    public static Account getAccountByID(int userid) throws SQLException {
        Account account = null;

        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_User where user_id=? ");
        pstmt.setInt(1, userid);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            int user_id = rs.getInt("user_id");
            String userName = rs.getString("user_name");
            String passwd = rs.getString("passwd");
            String FName = rs.getString("FName");
            String LName = rs.getString("LName");
            String phone = rs.getString("phone");
            String user_type = rs.getString("user_type");
            String Email = rs.getString("Email");

            if (user_type.equalsIgnoreCase("admin")) {
                account = new Admin(user_id, userName, passwd, FName, LName, phone,Email);
            } else if (user_type.equalsIgnoreCase("user")) {
                account = new User(user_id, userName, passwd, FName, LName, phone, Email);
            }

        }
        rs.close();
        pstmt.close();
        return account;
    }

}
