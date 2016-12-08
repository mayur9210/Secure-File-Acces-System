package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;

public final class compose_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


         String s1;
          Date d1;
            String d2;
            int dd,mm,yy;
      
      
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title></title>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  </head>\n");
      out.write("  <body bgcolor=\"pink\"><center>\n");
      out.write("      \n");
      out.write("      ");
      out.write("\n");
      out.write("      ");

            s1=(String)session.getAttribute("user");
               d1 = new Date();
                dd = d1.getDate();
                mm= d1.getMonth()+1;
                yy = d1.getYear()+1900;
                d2 = Integer.toString(dd)+"/"+Integer.toString(mm)+"/"+Integer.toString(yy);    
      
      
      
      
      
      out.write("\n");
      out.write("        <h1>MAIL</h1>\n");
      out.write("            <form name=\"f1\" action=\"compose1.jsp\">\n");
      out.write("                <table border=\"2\" width=\"30%\">\n");
      out.write("                <tr>\n");
      out.write("                 <th>FROM</th>\n");
      out.write("                <th><input type=\"text\" name=\"t1\" value=\"");
      out.print(s1);
      out.write("\"></th>\n");
      out.write("                </tr>\n");
      out.write("         \n");
      out.write("                <tr>\n");
      out.write("                <th>TO</th>\n");
      out.write("                <th><input type=\"text\" name=\"t2\" value=\"\"></th> \n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                 <th>DATE</th>\n");
      out.write("                 <th><input type=\"text\" name=\"t3\" value=\"");
      out.print(d2);
      out.write("\"></th>\n");
      out.write("                 </tr>\n");
      out.write("         \n");
      out.write("                  <tr>\n");
      out.write("                  <th>SUB</th>\n");
      out.write("                   <th><input type=\"text\" name=\"t4\" value=\"\"></th> \n");
      out.write("                    </tr>   \n");
      out.write("         \n");
      out.write("                    <tr>\n");
      out.write("                     <th>MAIL BOX</th>\n");
      out.write("                     <th><textarea rows=\"5\" cols=\"10\" name=\"t5\"></textarea></th>\n");
      out.write("                      </tr>\n");
      out.write("        \n");
      out.write("                    <tr>\n");
      out.write("                    <th></th>\n");
      out.write("                         <th><input type=\"submit\" value=\"submit\"></th>\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("        </center>         \n");
      out.write("        \n");
      out.write(" \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
