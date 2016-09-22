package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDate;
import entities.Room;

public final class BookingRoom1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 Room selectedRoom = (Room)request.getAttribute("room");
   request.getSession().setAttribute("room", selectedRoom);
   LocalDate today = LocalDate.now(); 
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"css/full-slider.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Optional theme -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Latest compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("               \n");
      out.write("        <style>\n");
      out.write("            #divfrm\n");
      out.write("            {\n");
      out.write("                margin-left: 500px;\n");
      out.write("                margin-right: 500px;\n");
      out.write("            }\n");
      out.write("            #log\n");
      out.write("            {\n");
      out.write("                margin-left: 500px;\n");
      out.write("                margin-right: 500px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("            }\n");
      out.write("            #Details\n");
      out.write("            {\n");
      out.write("                margin-top: 150px;\n");
      out.write("                margin-left: 500px;\n");
      out.write("                margin-right: 500px;\n");
      out.write("            }\n");
      out.write("            #head            \n");
      out.write("            {\n");
      out.write("                margin-top: 80px;\n");
      out.write("                font-family: 'Open Sans', sans-serif;\n");
      out.write("                font-size: 2.5em;\n");
      out.write("/*                border: 1px solid #555;\n");
      out.write("                background-color: rgba(0,0,0,0.6);*/\n");
      out.write("                padding-top: 20px;\n");
      out.write("                height: 75px;\n");
      out.write("                font-weight: 500;\n");
      out.write("                line-height: 40px;\n");
      out.write("                padding-left: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            #details\n");
      out.write("            {\n");
      out.write("                margin-top: 40px;\n");
      out.write("            }\n");
      out.write("            #full\n");
      out.write("            {\n");
      out.write("                margin-bottom: 50px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"HotelHome.jsp\"><b>Taj Hotels</b></a>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                \n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                <li class=\"navHover\"><a href=\"RoomToBookServlet\"> Available Rooms</a></li>\n");
      out.write("                <li class=\"navHover\"><a href=\"LogoutServlet\"> Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");
      out.write("        \n");
      out.write("        <a href=\"LogoutServlet\"> Logout</a>\n");
      out.write("    <center id=\"full\">\n");
      out.write("        <form action=\"User/BookingRoom2.jsp\" method=\"POST\">\n");
      out.write("            <h1 id=\"Details\">Registration Form</h1>\n");
      out.write("            <h3>Selected Room Details</h3>\n");
      out.write("            <div id=\"divfrm\">\n");
      out.write("                Room Number:\n");
      out.write("                <input type=\"number\" name=\"roomNumber\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getRoom_number()));
      out.write("\" readonly=\"true\"><p>\n");
      out.write("                Picture: \n");
      out.write("                <input type=\"text\" name=\"picture\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getPicture()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Room Type: \n");
      out.write("                <input type=\"text\" name=\"roomType\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getRoom_type()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Floor: \n");
      out.write("                <input type=\"text\" name=\"floor\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getFloor()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Hotel Area: \n");
      out.write("                <input type=\"text\" name=\"area\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getArea()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Daily Price ($): \n");
      out.write("                <input type=\"number\" name=\"dailyPrice\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getDaily_price()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Room Occupancy: \n");
      out.write("                <input type=\"number\" name=\"bedsNumber\"class=\"form-control\" value=\"");
      out.print((selectedRoom.getBedsNumber()));
      out.write("\" readonly=\"true\"><br><br>\n");
      out.write("                Additional Features:\n");
      out.write("            <input type=\"text\" name=\"roomFeatures\" class=\"form-control\" value=\"");
      out.print((selectedRoom.getRoom_feature()));
      out.write("\" readonly=\"true\"><p>\n");
      out.write("            <h3>Additional Stay Details</h3>\n");
      out.write("                Check In Date:\n");
      out.write("                <input type=\"date\" name=\"startDate\" required=\"true\"><br><br>\n");
      out.write("                Check out date:\n");
      out.write("                <input type=\"date\" name=\"endDate\" required=\"true\"><br><br>\n");
      out.write("                Special Request:<br>\n");
      out.write("                <textarea class=\"form-control\" rows=\"3\"></textarea>                    \n");
      out.write("            <p>\n");
      out.write("            </div> \n");
      out.write("                \n");
      out.write("            <input type=\"submit\" class=\"btn btn-success\" name=\"book\" value=\"Step 2>>\"/><br><br>\n");
      out.write("            <input type=\"reset\" class=\"btn btn-success\" value=\"Reset Form\"/>\n");
      out.write("            </p>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"RoomToBookServlet\">\n");
      out.write("            <input type=\"submit\" class=\"btn btn-success\" value=\"Abort Booking\">\n");
      out.write("        </form> \n");
      out.write("            <div class=\"progress\">\n");
      out.write("              <div class=\"progress-bar progress-bar-striped active\" role=\"progressbar\" aria-valuenow=\"45\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 45%\">\n");
      out.write("                <span class=\"sr-only\">25% Complete</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("    </Center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
