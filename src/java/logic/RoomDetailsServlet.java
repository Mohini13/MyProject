package logic;

import database.DBRoom;
import entities.Account;
import entities.Room;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mohini Chaudhary
 */
@WebServlet(name = "RoomDetailsServlet", urlPatterns = {"/RoomDetailsServlet"})
public class RoomDetailsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Validate permissions
        Account account = (Account) request.getSession().getAttribute("ACCOUNT");
        if (account == null) {
            //session doesn't exist
            System.out.println(" permission denied ");
            request.setAttribute("error", " permission denied  ");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        ////// end permission

// (room_number,room_availability,picture,room_type,floor,area,daily_price,bedsNumber,room_feature) 
        //define parameters 
        int room_number = 0;
        String room_availability = "";
        String picture = "";
        String room_type = "";
        String floor = "";
        String area = "";
        double daily_price = 0;
        int bedsNumber = 0;
        String room_feature = "";

        //get parameters from users
        room_number = Integer.parseInt(request.getParameter("room_number"));
        room_availability = request.getParameter("room_availability");
        picture = request.getParameter("picture");
        int index=picture.lastIndexOf("\\");
        String filename=picture.substring(index+1);
        String file= "img/"+filename;
        room_type = request.getParameter("room_type");
        floor = request.getParameter("floor");
        area = request.getParameter("area");
        daily_price = Double.parseDouble(request.getParameter("daily_price"));
        bedsNumber = Integer.parseInt(request.getParameter("bedsNumber"));
        room_feature = request.getParameter("room_feature");

        //validate parameters
        //implement later ourself
        // save room
        Room room = new Room(room_number, room_availability, file, room_type, floor, area, daily_price, bedsNumber, room_feature);
        try {
            DBRoom.save(room);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
        //redirect user
        request.getRequestDispatcher("AllRoomsServlet").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
