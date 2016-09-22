/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import database.DBRoom;
import entities.Account;
import entities.Room;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mohini Chaudhary
 */
@WebServlet(name = "RoomEditServlet", urlPatterns = {"/RoomEditServlet"})
public class RoomEditServlet extends HttpServlet {

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
        if (account == null) {//session doesn't exist
            System.out.println(" permission denied ");
            request.setAttribute("error", " permission denied  ");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        ///////// end permissions

        //define variable
        int room_number = 0;
        String user_input = "";

        //get input from user
        user_input = request.getParameter("room_number");

        // validate
        if (user_input==null || user_input.equalsIgnoreCase("")) {
            request.setAttribute("error", "room_number is empty");
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);

            return;
        }

        // convert string to integer
        try {
            room_number = Integer.parseInt(user_input);
        } catch (Exception ex) {
            request.setAttribute("error", "room_number has to be interger");
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
            return;
        }

        try {

            Room room = DBRoom.getRoom(room_number); //getting rooms from db class  
            request.setAttribute("room", room);
            request.getRequestDispatcher("/Admin/RoomDetails.jsp").forward(request, response);
            return;

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }

        
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
