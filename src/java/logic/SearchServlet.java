/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import database.DBBooking;
import entities.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
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
@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

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
        // define parameters and get parameters

        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String floor = request.getParameter("floor");
        String daily_price = request.getParameter("daily_price");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchServlet</title>");
            out.println("</head>");
            out.println("<body>");

            // validate the stuff
          if (startDate == null || startDate.equals("")) {
                out.println("Start date cannot be empty");
                return;
            }
            if (endDate == null || endDate.equals("")) {
                out.println("End date cannot be empty");
                return;
            }
            if (floor == null || floor.equals("")) {
                out.println("Floor cannot be empty");
                return;
            }
            if (daily_price == null || daily_price.equals("")) {
                out.println("daily_price cannot be empty");
                return;
            }
            java.util.Date utilStartDate = null;
            java.util.Date utilEndDate = null;

            try {
                //2016-04-16
                utilStartDate = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
                utilEndDate = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
            } catch (ParseException ex) {
                System.out.println(ex.getMessage());
                return;

            }
            java.sql.Date sqlStartDate = new java.sql.Date(utilStartDate.getTime());
            java.sql.Date sqlEndDate = new java.sql.Date(utilEndDate.getTime());
            out.println(sqlStartDate + "  " + sqlEndDate + "  " + floor + "  " + daily_price);
            
            
            
            try{
                List<Booking> report = DBBooking.getReport(sqlStartDate, sqlEndDate, floor, daily_price);
                out.println(report.size());
              request.setAttribute("Booked_Room", report);
            request.getRequestDispatcher("/Admin/Search.jsp").forward(request, response);
                
            
            }catch(Exception ex){
                out.println(ex.getMessage());
            }
            
            
            
            
            out.println("</body>");
            out.println("</html>");
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
