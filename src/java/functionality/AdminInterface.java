
package functionality;

import entities.Room;
import java.util.List;

/**
 *
 * @author Mohini Chaudhary
 */
public interface AdminInterface {
    
   void add(Room room);
   void edit(Room room);
   void delete(Room room);
   List<Room> getBookedRooms();
   List<Room> getAvailableRooms(); 
    
}
