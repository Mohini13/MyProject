package entities;

/**
 *
 * @author Mohini Chaudhary
 */
public class Room {

    private int room_number;
    private String picture;
    private String room_availability;
    private String room_type;
    private String floor;
    private String area;
    private double daily_price;
    private int bedsNumber;
    private String room_feature;

    public Room() {
        picture="";
        room_availability = "Y";
        room_type="";
        floor="";
        area="";
        room_feature="";
    }
  
    public Room(int room_number, String room_availability, String picture, String room_type, String floor, String area, double daily_price, int bedsNumber, String room_feature) {
        this.room_number = room_number;
        this.room_availability = room_availability;
        this.picture = picture;
        this.room_type = room_type;
        this.floor = floor;
        this.area = area;
        this.daily_price = daily_price;
        this.bedsNumber = bedsNumber;
        this.room_feature = room_feature;
    }

    public Room(int room_number, String picture, String room_type, String floor, String area, double daily_price, int bedsNumber, String room_feature) {
        this.room_number = room_number;
        this.picture = picture;
        this.room_type = room_type;
        this.floor = floor;
        this.area = area;
        this.daily_price = daily_price;
        this.bedsNumber = bedsNumber;
        this.room_feature = room_feature;
    }

    public int getRoom_number() {
        return room_number;
    }

    public void setRoom_number(int room_number) {
        this.room_number = room_number;
    }

    public String getRoom_availability() {
        return room_availability;
    }

    public void setRoom_availability(String room_availability) {
        this.room_availability = room_availability;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getRoom_type() {
        return room_type;
    }

    public void setRoom_type(String room_type) {
        this.room_type = room_type;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public double getDaily_price() {
        return daily_price;
    }

    public void setDaily_price(double daily_price) {
        this.daily_price = daily_price;
    }

    public int getBedsNumber() {
        return bedsNumber;
    }

    public void setBedsNumber(int bedsNumber) {
        this.bedsNumber = bedsNumber;
    }

    public String getRoom_feature() {
        return room_feature;
    }

    public void setRoom_feature(String room_feature) {
        this.room_feature = room_feature;
    }

    @Override
    public String toString() {
        return room_number + " " + room_availability + " " + picture + " " + room_type + " " + floor + " " + area
                + " " + daily_price + " " + bedsNumber + " " + room_feature;
    }

}
