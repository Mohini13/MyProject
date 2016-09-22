package database;

import entities.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohini Chaudhary
 */
public class DBRoom {

    public static void save(Room room) throws SQLException {
        if (room.getRoom_number() == 0) {
            add(room);
        } else {
            edit(room);
        }
    }

    private static void add(Room room) throws SQLException {
        Connection conn = Connector.getConnection();

        /*PreparedStatement pstmt = conn.prepareStatement("insert into p_room (room_number,room_availability,"
                + "picture,room_type,floor,area,daily_price,bedsNumber,room_feature) "
                + "Values (?, ?, ?, ?, ?, ?, ?, ?, ?)");*/
        //Values (6, 'Y', 'room6.jpg', 'regular room', 'Top floor', 'east area', 170.5, 4, 'None');
        PreparedStatement pstmt = conn.prepareStatement("insert into p_room (room_number,room_availability,picture,room_type,floor,area,daily_price,bedsNumber,room_feature) "
                + " Values (?, ?, ?, ?, ?, ?, ?, ?, ?)");

        pstmt.setInt(1, getRoomNumber());
        pstmt.setString(2, room.getRoom_availability());
        pstmt.setString(3, room.getPicture());
        pstmt.setString(4, room.getRoom_type());
        pstmt.setString(5, room.getFloor());
        pstmt.setString(6, room.getArea());
        pstmt.setDouble(7, room.getDaily_price());
        pstmt.setInt(8, room.getBedsNumber());
        pstmt.setString(9, room.getRoom_feature());
        int rows_inserted = pstmt.executeUpdate();

        if (rows_inserted == 0) {
            throw new SQLException("Room is not saved");
        }
        pstmt.close();
    }

    private static void edit(Room room) throws SQLException {
        Connection conn = Connector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(" update p_room set room_availability= ?,"
                + " picture=?,room_type=?,floor=?,"
                + " area=?,daily_price=?,bedsNumber=?,room_feature=? "
                + " where room_number=?");
        pstmt.setString(1, room.getRoom_availability());
        pstmt.setString(2, room.getPicture());
        pstmt.setString(3, room.getRoom_type());
        pstmt.setString(4, room.getFloor());
        pstmt.setString(5, room.getArea());
        pstmt.setDouble(6, room.getDaily_price());
        pstmt.setInt(7, room.getBedsNumber());
        pstmt.setString(8, room.getRoom_feature());
        pstmt.setInt(9, room.getRoom_number());
        int rows_updated = pstmt.executeUpdate();

        if (rows_updated == 0) {
            throw new SQLException("Room is not update");
        }
        pstmt.close();
    }

    public static void delete(int room_number) throws SQLException {
        Connection conn = Connector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("delete from p_Room where room_number=? ");
        pstmt.setInt(1, room_number);
        int rows_deleted = pstmt.executeUpdate();
        if (rows_deleted == 0) {
            throw new SQLException("Room is not deleted");
        }
        pstmt.close();
        //Values (6, 'Y', 'room6.jpg', 'regular room', 'Top floor', 'east area', 170.5, 4, 'None');

    }

    public static List<Room> getAvailableRooms() throws SQLException {
        return getRooms("Y");
    }

    public static List<Room> getBookedRooms() throws SQLException {
        return getRooms("N");
    }

    //private static List<Room> getRooms(String availability) throws SQLException {
    public static List<Room> getRooms(String availability) throws SQLException {
        List<Room> rooms = new ArrayList<>();

        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where room_availability=? ");
        pstmt.setString(1, availability);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int room_number = rs.getInt("room_number");
            String room_availability = rs.getString("room_availability");
            String picture = rs.getString("picture");
            String room_type = rs.getString("room_type");
            String floor = rs.getString("floor");
            String area = rs.getString("area");
            double daily_price = rs.getInt("daily_price");
            int bedsNumber = rs.getInt("bedsNumber");
            String room_feature = rs.getString("room_feature");

            rooms.add(new Room(room_number, room_availability, picture, room_type, floor, area, daily_price, bedsNumber, room_feature));
        }

        rs.close();

        return rooms;
    }

    ///////////////////////////////////////////////////////////////////////////////////
    //creating a method to get a list of all the rooms
    public static List<Room> getAllRooms() throws SQLException {
        List<Room> rooms = new ArrayList<>();

        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room ");
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            int room_number = rs.getInt("room_number");
            String room_availability = rs.getString("room_availability");
            String picture = rs.getString("picture");
            String room_type = rs.getString("room_type");
            String floor = rs.getString("floor");
            String area = rs.getString("area");
            double daily_price = rs.getInt("daily_price");
            int bedsNumber = rs.getInt("bedsNumber");
            String room_feature = rs.getString("room_feature");

            rooms.add(new Room(room_number, room_availability, picture, room_type, floor, area, daily_price, bedsNumber, room_feature));
        }

        rs.close();

        return rooms;
    }

    ///////////////////////////////////////////////////////////////////////////////////
    // for Getting next room number. 
    private static int getRoomNumber() throws SQLException {
        int room_number = 1;
        Connection conn = Connector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("select max(room_number)+1 as NextNum from p_room");
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            room_number = rs.getInt("NextNum");
        }
        rs.close();
        return room_number;
    }

    // here we can get room through id.
    public static Room getRoom(int room_number) throws SQLException {
        Room room = null;

        Connection conn = Connector.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where room_number=? ");
        pstmt.setInt(1, room_number);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String room_availability = rs.getString("room_availability");
            String picture = rs.getString("picture");
            String room_type = rs.getString("room_type");
            String floor = rs.getString("floor");
            String area = rs.getString("area");
            double daily_price = rs.getInt("daily_price");
            int bedsNumber = rs.getInt("bedsNumber");
            String room_feature = rs.getString("room_feature");

            room = new Room(room_number, room_availability, picture, room_type, floor, area, daily_price, bedsNumber, room_feature);
        }
        rs.close();
        pstmt.close();
        return room;
    }
            public static List<Room> getAvailableRooms(int noOfBeds,String rfloor, double price1, double price2) throws SQLException
    {
//         match="%";
        List<Room> rooms = new ArrayList<>();

        Connection conn = Connector.getConnection();
   //     PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where bedsNumber like ? and floor like ?");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where bedsNumber like ? and floor like ? and ( "
                + "daily_price BETWEEN ? AND ?)");
//      String bed=Integer.toString(noOfBeds);
//      if(bed.equals("Any")){
//            pstmt.setInt(1, match);
//      }
      
        pstmt.setInt(1, noOfBeds);
        pstmt.setString(2,rfloor);
        pstmt.setDouble(3, price1);
        pstmt.setDouble(4, price2);
        ResultSet rs = pstmt.executeQuery();   
        while (rs.next()) {
            int room_number = rs.getInt("room_number");
            String picture = rs.getString("picture");
            String room_type = rs.getString("room_type");
            String floor = rs.getString("floor");
            String area = rs.getString("area");
            double daily_price = rs.getInt("daily_price");
            int bedsNumber = rs.getInt("bedsNumber");
            String room_feature = rs.getString("room_feature");

            rooms.add(new Room(room_number, picture, room_type, floor, area, daily_price, bedsNumber, room_feature));
        }

        rs.close();

        return rooms;
    }
            
            public static List<Room> getRoomDetails(int NoOfRooms) throws SQLException
    {
        List<Room> rooms = new ArrayList<>();

        Connection conn = Connector.getConnection();
   
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM p_Room where room_number=?");

        pstmt.setInt(1, NoOfRooms);       
        ResultSet rs = pstmt.executeQuery();   
        while (rs.next()) {
            int room_number = rs.getInt("room_number");
            String picture = rs.getString("picture");
            String room_type = rs.getString("room_type");
            String floor = rs.getString("floor");
            String area = rs.getString("area");
            double daily_price = rs.getInt("daily_price");
            int bedsNumber = rs.getInt("bedsNumber");
            String room_feature = rs.getString("room_feature");

            rooms.add(new Room(room_number, picture, room_type, floor, area, daily_price, bedsNumber, room_feature));
        }

        rs.close();

        return rooms;
    }

    public static boolean setAvailability(String avail, int id) throws SQLException{
        Connection conn = Connector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("update p_Room set room_availability=? where room_number=? ");
        pstmt.setString(1, avail);
        pstmt.setInt(2, id);
        
        if(pstmt.executeUpdate() != 0){
            return true;
        }
        return false;
    }
//    public static Item getItemByID(int id) throws SQLException {
//
//        Item item = null;
//        Connection conn = Connector.getConnection();
//
//        PreparedStatement ps = conn.prepareStatement("SELECT * from MENUINFO where MENU_ID = ?");
//        ps.setInt(1, id);
//        ResultSet rs = ps.executeQuery();
//        if (rs.next()) {
//            String item_des = rs.getString("MENU_DESCRIPTION");
//            float item_price = rs.getFloat("MENU_PRICE");
//            item = new Item(id, item_des, item_price);
//
//        }
//        rs.close();
//        return item;
//    }
}

//Select * FROM P_BOOKINGROOM b JOIN P_ROOM r ON b.ROOM_NUMBER = r.ROOM_NUMBER  JOIN P_USER u ON b.USER_ID = u.USER_ID Where b.STARTDATE >= '%' AND b.ENDDATE <= '%'AND bedsNumber like '%' a nd floor like '%';