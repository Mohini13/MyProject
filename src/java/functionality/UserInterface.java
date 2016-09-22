
package functionality;

import entities.Room;

/**
 *
 * @author Mohini Chaudhary
 */
public interface UserInterface {
    
    void book(Room room);
    void changeBooking(Room room);
    void requestSpecialServices (String specialService);
    
}
