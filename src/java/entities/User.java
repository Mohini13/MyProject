
package entities;

import functionality.UserInterface;

/**
 *
 * @author Mohini Chaudhary
 */
public class User extends Account implements UserInterface{
     private static final String homePage="RoomToBookServlet";
    
    public User(int user_id, String user_name, String passwd, String fName, String lName, String phone, String Email) {
        super(user_id, user_name, passwd, fName, lName, phone, Email);
    }

    @Override
    public void book(Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void changeBooking(Room room) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void requestSpecialServices(String specialService) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getHomePage() {
        return homePage;
    }
    
   
    
}
