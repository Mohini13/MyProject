
package entities;

import java.util.List;
import functionality.GuestInterface;

/**
 *
 * @author Mohini Chaudhary
 */
public class Guest implements GuestInterface{

    @Override
    public List<Room> getAvailableRooms() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Room getRoomSpecifications(int room_number) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
