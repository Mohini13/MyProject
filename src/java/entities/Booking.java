
package entities;

import java.sql.Date;

/**
 *
 * @author Mohini Chaudhary
 */
public class Booking {
    private  int ref_number;
    private Account user; //it can be user, admin
    private Room room;
    private Date startDate ;
    private Date endDate ;
    private long numOfDays;
    private double price;
    private String specialRequest;

    public Booking(Account user, Room room, Date startDate, Date endDate, long numOfDays, double price, String specialRequest) {
        this.user = user;
        this.room = room;
        this.startDate = startDate;
        this.endDate = endDate;
        this.numOfDays = numOfDays;
        this.price = price;
        this.specialRequest = specialRequest;
    }

    public Account getUser() {
        return user;
    }

    public void setUser(Account user) {
        this.user = user;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSpecialRequest() {
        return specialRequest;
    }

    public void setSpecialRequest(String specialRequest) {
        this.specialRequest = specialRequest;
    }

    /**
     * @return the numOfDays
     */
    public long getNumOfDays() {
        return numOfDays;
    }

    /**
     * @param numOfDays the numOfDays to set
     */
    public void setNumOfDays(long numOfDays) {
        this.numOfDays = numOfDays;
    }

    public int getRef_number() {
        return ref_number;
    }

    public void setRef_number(int ref_number) {
        this.ref_number = ref_number;
    }

    
    
}
