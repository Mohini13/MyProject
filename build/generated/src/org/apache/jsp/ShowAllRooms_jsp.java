package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import entities.Room;

public final class ShowAllRooms_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
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
      out.write("        <style>\n");
      out.write("            #body\n");
      out.write("            {\n");
      out.write("                background-color: #FBF8EF;\n");
      out.write("            }\n");
      out.write("            #table\n");
      out.write("            {\n");
      out.write("                margin-top:50px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("            }\n");
      out.write("            #foot\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            #Details\n");
      out.write("            {\n");
      out.write("                margin-top: 80px;\n");
      out.write("                margin-left: 500px;\n");
      out.write("                margin-right: 500px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"body\">\n");
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
      out.write("                <a class=\"navbar-brand\" href=\"Availability.jsp\">Back</a></li>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                \n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"navHover\"><a href=\"Login.jsp\">Login</a></li>\n");
      out.write("            <li class=\"navHover\"><a href=\"Contact.jsp\">Contact us</a></li>\n");
      out.write("            <li class=\"navHover\"><a href=\"PhotoGallary.jsp\">Photo Gallery</a></li> \n");
      out.write("        </ul>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");
      out.write("         <h1 id=\"Details\">Available Rooms</h1>\n");
      out.write("         <table class=\"table table-striped\" id=\"table\" cellspacing=\"4\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Floor</th>\n");
      out.write("                <th>Daily Price</th>\n");
      out.write("                <th>Number of Beds</th> \n");
      out.write("                <th>Action</th>\n");
      out.write("            </tr>\n");
      out.write("           \n");
      out.write("                ");
                    
                    try {

                        List<Room> roomsList = (List<Room>)request.getAttribute("showrooms");
                        
                        if(roomsList != null){
                        for (Room room : roomsList) {
                
      out.write("          <tr>\n");
      out.write("                            <td> ");
      out.print(room.getFloor());
      out.write(" </td> \n");
      out.write("                            <td> ");
      out.print(room.getDaily_price());
      out.write(" </td> \n");
      out.write("                            <td> ");
      out.print(room.getBedsNumber());
      out.write(" </td> \n");
      out.write("                            <td><a href=\"ShowMore.jsp?rid=");
      out.print(room.getRoom_number());
      out.write("\" class=\"btn btn-warning \" role=\"button\">Show More <span class=\"glyphicon glyphicon-search\" aria-hidden=\"true\"></span></a></td>\n");
      out.write("                            </tr>\n");
      out.write("                ");

                        }
                       }
                        else if(roomsList == null)
                        {
                            System.out.println("Sorry, This Room is not Available!!!!!");
                        }
                    
                    } catch (Exception ex) {
                        ex.getMessage();                           
                        ex.printStackTrace();
                    }

                
      out.write("\n");
      out.write("        </table>  \n");
      out.write("        <footer id=\"foot\"><a href=\"Availability.jsp\" class=\"btn btn-primary\" role=\"button\"> Back to Search </a></footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
