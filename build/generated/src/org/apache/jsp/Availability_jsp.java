package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Availability_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                     \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #cen\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            #body {\n");
      out.write("                    padding: 15px 0 350px 0;\n");
      out.write("                    background: url(Photos/HomePage/Home.jpg)no-repeat center center fixed;\n");
      out.write("                    -webkit-background-size: cover;\n");
      out.write("                    -moz-background-size: cover;\n");
      out.write("                    -o-background-size: cover;\n");
      out.write("                    background-size: cover;\n");
      out.write("            }\n");
      out.write("            #head\n");
      out.write("            {\n");
      out.write("                margin-top: 50px;\n");
      out.write("                font-family: 'Open Sans', sans-serif;\n");
      out.write("                font-size: 2.5em;\n");
      out.write("                border: 1px solid #555;\n");
      out.write("                background-color: rgba(0,0,0,0.6);\n");
      out.write("                padding-top: 20px;\n");
      out.write("                height: 75px;\n");
      out.write("                color: #fff;\n");
      out.write("                font-weight: 500;\n");
      out.write("                line-height: 40px;\n");
      out.write("                padding-left: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            #Details\n");
      out.write("            {                    \n");
      out.write("                   width: 700px;\n");
      out.write("\t\t   background-color: whitesmoke;\n");
      out.write("\t\t   margin: 20px;\n");
      out.write("\t\t   margin-right: 500px;\n");
      out.write("                   margin-left: 500px;\n");
      out.write("\t\t   padding: 6px 14px;\n");
      out.write("\t\t   float: center;\n");
      out.write("\t\t   font-size: 12pt;\n");
      out.write("\t\t   line-height: 150%;                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #home\n");
      out.write("            {\n");
      out.write("                color: gold;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #button\n");
      out.write("            {\n");
      out.write("                align: center;\n");
      out.write("                height: 30px;                \n");
      out.write("\t        margin: 20px auto;\n");
      out.write("\t        padding: 0px 15px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("           #foot \n");
      out.write("           {\n");
      out.write("                font-family: 'Open Sans', sans-serif;\n");
      out.write("                font-size: 1.5em;\n");
      out.write("                border: 1px solid #555;\n");
      out.write("                background-color: rgba(0,0,0,0.6);\n");
      out.write("                height: 45px;\n");
      out.write("                color: #fff;\n");
      out.write("                padding-top: 10px;\n");
      out.write("                font-weight: 500;\n");
      out.write("                line-height: 20px;\n");
      out.write("                padding-left: 25px;\n");
      out.write("                text-align: center;                           \n");
      out.write("           }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body id=\"body\">\n");
      out.write("                <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
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
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"navHover\"><a href=\"Login.jsp\">Login</a></li>\n");
      out.write("            <li class=\"navHover\"><a href=\"Contact.jsp\">Contact us</a></li>\n");
      out.write("            <li class=\"navHover\"><a href=\"Availability.jsp\">Check Availability</a></li>\n");
      out.write("            <li class=\"navHover\"><a href=\"PhotoGallary.jsp\">Photo Gallery</a></li> \n");
      out.write("            <li class=\"navHover\"><a href=\"AvailableRoomsServlet\">Available Rooms</a></li>\n");
      out.write("        </ul>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>\n");
      out.write("            <div id=\"hed\">\n");
      out.write("            <header id=\"head\">Check Availability</header>\n");
      out.write("            </div>\n");
      out.write("        <form action=\"RoomsServlet\" method=\"post\" id=\"Details\">\n");
      out.write("            <table class=\"table table-striped\" >\n");
      out.write("            <tr class=\"active\">\n");
      out.write("            <td>\n");
      out.write("                <h3 class=\"form-control\" id=\"cen\"><b>Floors</b></h3>\n");
      out.write("            <select name=\"floorsj\" class=\"form-control\" id=\"cen\">    \n");
      out.write("                <option>-- Select a Floor --</option>\n");
      out.write("                <option>Ground</option>\n");
      out.write("                <option>First</option>\n");
      out.write("                <option>Second</option>\n");
      out.write("                <option>Third</option>\n");
      out.write("                <option>Fourth</option>\n");
      out.write("            </select>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"info\">\n");
      out.write("            <td>\n");
      out.write("                <h3 class=\"form-control\" id=\"cen\"><b>Price</b></h3>            \n");
      out.write("            <div class=\"form-control\" id=\"cen\">\n");
      out.write("                <select name=\"price1\">   \n");
      out.write("                <option>-- Select a Price --</option>\n");
      out.write("                <option>100</option>\n");
      out.write("                <option>200</option>\n");
      out.write("                <option>300</option>\n");
      out.write("                <option>400</option>\n");
      out.write("                <option>500</option>\n");
      out.write("                <option>1000</option>\n");
      out.write("                <option>2000</option>\n");
      out.write("            </select>\n");
      out.write("            <select name=\"price2\"> \n");
      out.write("                <option>-- Select a Price --</option>\n");
      out.write("                <option>200</option>\n");
      out.write("                <option>300</option>\n");
      out.write("                <option>400</option>\n");
      out.write("                <option>500</option>\n");
      out.write("                <option>1000</option>\n");
      out.write("                <option>2000</option>\n");
      out.write("                <option>3000</option>\n");
      out.write("            </select>\n");
      out.write("            </div>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"success\">\n");
      out.write("            <td>            \n");
      out.write("                <h3 class=\"form-control\" id=\"cen\"><b>Number of beds</b></h3>\n");
      out.write("            <select name=\"noBed\" class=\"form-control\" id=\"cen\"> \n");
      out.write("                <option>-- Select No of Beds --</option>\n");
      out.write("                <option>1</option>\n");
      out.write("                <option>2</option>\n");
      out.write("                <option>3</option>\n");
      out.write("                <option>4</option>\n");
      out.write("            </select>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("            <input id=\"button\" type=\"submit\" value=\"Search\"/>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("                <footer id=\"foot\"><a id=\"home\" href=\"HotelHome.jsp\"/>Taj Hotels</footer>\n");
      out.write("        </div>  \n");
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
