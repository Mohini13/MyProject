/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import entities.Account;
import entities.Booking;
import entities.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Robert Jr
 */
public class DBBooking {

    public static List<Booking> getReport(Date startDate, Date endDate, String floor, String price) throws SQLException {
        List<Booking> report = new ArrayList<>();

        Connection conn = Connector.getConnection();

        /*PreparedStatement pstmt = conn.prepareStatement("SELECT * "
                + "FROM P_BOOKINGROOM b "
                + "JOIN P_ROOM r ON b.ROOM_NUMBER = r.ROOM_NUMBER "
                + "JOIN P_USER u ON b.USER_ID = u.USER_ID "
                + "WHERE( "
                + "(STARTDATE >= ? AND STARTDATE <= ?) "
                + "AND "
                + "(ENDDATE BETWEEN ? AND ?) "
                + ") "
                + "AND "
                + "( "
                + "FLOOR LIKE ? OR DAILY_PRICE LIKE ? "
                + ") ");*/
        //    Statement pstmt = conn.createStatement();
        PreparedStatement pstmt = conn.prepareStatement("SELECT * "
                + "                FROM P_BOOKINGROOM b "
                + "                JOIN P_ROOM r ON b.ROOM_NUMBER=r.ROOM_NUMBER "
                + "                JOIN P_USER u ON b.USER_ID=u.USER_ID "
                + "                WHERE "
                + "                "
                + "                (FLOOR LIKE '%" + floor + "%' OR DAILY_PRICE LIKE '%" + price + "%')");

        //pstmt.setDate(1, startDate);
        //pstmt.setDate(2, endDate);
        //pstmt.setDate(3, startDate);
        //pstmt.setDate(4, endDate);
        //pstmt.setString(1, floor);
        //pstmt.setString(1, price);
        System.out.println("start date: " + startDate + " end date: " + endDate + " floor: " + floor + " price: " + price);

        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int ref_number = rs.getInt("ref_number");
            Account user = DBUser.retrieveUser(rs.getString("user_name"));
            Room room = DBRoom.getRoom(rs.getInt("room_number"));
            Date start_Date = rs.getDate("startDate");
            Date end_Date = rs.getDate("EndDate");
            int stayLength = rs.getInt("stayLength");
            double totalPrice = rs.getDouble("totalPrice");
            String specialRequest = rs.getString("specialRequest");
            Booking b = new Booking(user, room, start_Date, end_Date, stayLength, totalPrice, specialRequest);
            b.setRef_number(ref_number);
            report.add(b);
            System.out.println(":)");
        }

        rs.close();

        return report;
    }

    public static List<Booking> getReportBooking(Date startDate, Date endDate, String floor, double price1, double price2) throws SQLException {
        List<Booking> report = new ArrayList<>();

        Connection conn = Connector.getConnection();
        //     PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where bedsNumber like ? and floor like ?");
        PreparedStatement pstmt = conn.prepareStatement("Select * FROM P_BOOKINGROOM b "
                + "JOIN P_ROOM r ON b.ROOM_NUMBER = r.ROOM_NUMBER "
                + "JOIN P_USER u ON b.USER_ID = u.USER_ID where bedsNumber like ? and floor like ? and ("
                + "daily_price BETWEEN ? AND ?)");
//      String bed=Integer.toString(noOfBeds);
//      if(bed.equals("Any")){
//            pstmt.setInt(1, match);
//      }

        pstmt.setDate(1, startDate);
        pstmt.setDate(2, endDate);
        pstmt.setString(3, floor);
        pstmt.setDouble(4, price1);
        pstmt.setDouble(5, price2);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            int ref_number = rs.getInt("ref_number");
            Account user = DBUser.retrieveUser(rs.getString("user_name"));
            Room room = DBRoom.getRoom(rs.getInt("room_number"));
            Date start_Date = rs.getDate("startDate");
            Date end_Date = rs.getDate("EndDate");
            int stayLength = rs.getInt("stayLength");
            double totalPrice = rs.getDouble("totalPrice");
            String specialRequest = rs.getString("specialRequest");
            Booking b = new Booking(user, room, start_Date, end_Date, stayLength, totalPrice, specialRequest);
            b.setRef_number(ref_number);
            report.add(b);
        }

        rs.close();

        return report;
    }

    public static boolean insertBooking(Booking room) throws SQLException {
        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("insert into p_BookingRoom (user_id, room_number, startDate, EndDate, stayLength, totalPrice, specialRequest) values (?, ?, ?, ?, ?, ?, ?) ");
        pstmt.setInt(1, room.getUser().getUser_id());
        pstmt.setInt(2, room.getRoom().getRoom_number());
        pstmt.setDate(3, room.getStartDate());
        pstmt.setDate(4, room.getEndDate());
        pstmt.setLong(5, room.getNumOfDays());
        pstmt.setDouble(6, room.getPrice());
        pstmt.setString(7, room.getSpecialRequest());
        if (pstmt.executeUpdate() != 0) {
            DBRoom.setAvailability("N", room.getRoom().getRoom_number());
            return true;
        } else {
            return false;
        }
    }

    public static Booking createBooking(Account user, Room room, Date start, Date end, long lengthOfStay, double price, String specialRequest) {
        Booking booking = new Booking(user, room, start, end, lengthOfStay, price, specialRequest);
        return booking;
    }

    public static String printConfirmation(Booking booking) throws SQLException {
        String confirmation = "Thank You, " + booking.getUser().getfName() + " " + booking.getUser().getlName() + " for booking with us!\n"
                + "Your booking reference number is " + DBBooking.getReferenceNumber(booking) + ".\n\n"
                + "Please print this page and bring it with you to the Hotel";
        return confirmation;
    }

    public static int getReferenceNumber(Booking booking) throws SQLException {
        Connection conn = Connector.getConnection();
        int ref_number = 0;
        PreparedStatement pstmt = conn.prepareStatement("SELECT ref_number FROM p_BookingRoom where user_id=? and room_number=? and startDate=? ");
        pstmt.setInt(1, booking.getUser().getUser_id());
        pstmt.setInt(2, booking.getRoom().getRoom_number());
        pstmt.setDate(3, booking.getStartDate());
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            ref_number = rs.getInt("ref_number");
        }
        rs.close();
        return ref_number;
    }

    public static List<Booking> getUserBookings(int userID) throws SQLException {
        Connection conn = Connector.getConnection();

        List<Booking> bookings = new ArrayList<>();
        Account user = DBAccount.getAccountByID(userID);
        Room room = null;

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_BookingRoom where user_id=? ");
        pstmt.setInt(1, userID);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int ref_number = rs.getInt("ref_number");
            int user_id = rs.getInt("user_id");
            int room_number = rs.getInt("room_number");
            room = DBRoom.getRoom(room_number);
            Date startDate = rs.getDate("startDate");
            Date endDate = rs.getDate("endDate");
            long stayLength = rs.getLong("stayLength");
            double totalPrice = rs.getDouble("totalPrice");
            String specialRequest = rs.getString("specialRequest");

            bookings.add(new Booking(user, room, startDate, endDate, stayLength, totalPrice, specialRequest));
        }

        rs.close();

        return bookings;
    }

    public static void deleteBooking(int ref_number, int room_number) throws SQLException {
        Connection conn = Connector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("delete from p_BookingRoom where ref_number=? ");
        pstmt.setInt(1, ref_number);

        pstmt.executeUpdate();
        DBRoom.setAvailability("Y", room_number);
    }
}
