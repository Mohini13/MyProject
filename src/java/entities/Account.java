
package entities;
/**
 *
 * @author Mohini Chaudhary
 */
public abstract class Account {
    protected int user_id;
    protected String user_name; 
    protected String passwd; 
    protected String fName; 
    protected String lName; 
    protected String phone; 
    protected String Email;
    

    public Account(int user_id, String user_name, String passwd, String fName, String lName, String phone, String Email) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.passwd = passwd;
        this.fName = fName;
        this.lName = lName;
        this.phone = phone;
        this.Email=Email;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public abstract String getHomePage();// this method will b called in child class 
    
    
    
}
