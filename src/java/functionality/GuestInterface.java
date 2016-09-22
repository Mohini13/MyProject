
package functionality;

import entities.Room;
import java.util.List;

/**
 *
 * @author Mohini Chaudhary
 */
public interface GuestInterface {
    List<Room> getAvailableRooms();
    Room getRoomSpecifications(int room_number);
}
