
package entities;

import java.util.List;
import functionality.AdminInterface;

/**
 *
 * @author Mohini Chaudhary
 */
public class Admin extends Account implements AdminInterface{
    private static final String homePage="AllRoomsServlet";
    
    public Admin(int user_id, String user_name, String passwd, String fName, String lName, String phone,String Email) {
        super(user_id, user_name, passwd, fName, lName, phone, Email);
         
    }

    @Override
    public void add(Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void edit(Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Room> getBookedRooms() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Room> getAvailableRooms() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getHomePage() {
       return homePage;
    }
    
    
    
   
}
