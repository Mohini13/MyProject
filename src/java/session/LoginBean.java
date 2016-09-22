package session;

import database.DBAccount;
import entities.Account;
import javax.ejb.Stateless;

/**
 *
 * @author Mohini Chaudhary
 */
@Stateless
public class LoginBean {

    public Account login(String user_name, String passwd) {
        Account account = null;
        try {
            account = DBAccount.getAccount(user_name, passwd);

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
        }

        return account;
    }

}
