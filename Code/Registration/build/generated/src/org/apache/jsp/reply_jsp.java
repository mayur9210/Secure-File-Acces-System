package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.sql.*;

public final class reply_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        // String s1;
          Date d1;
            String d2;
            int dd,mm,yy;
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,s2,s3,s4,sql;
            String f1,f2,f3,f4,f5,f6,f7;
            
      
      
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("      ");
      out.write("\n");
      out.write("      ");

            s1=(String)session.getAttribute("user");
               try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("t1");
                sql="select * from mail where tid="+"'"+s1+"'";
                rs=st.executeQuery(sql);
                while(rs.next())
                    {
                     f1 = rs.getString(1);
                     f2 = rs.getString(2);
                    f3 = rs.getString(3);
                      f4 = rs.getString(4);
                     f5 = rs.getString(5);
                    f6 = rs.getString(6);
                      f7 = rs.getString(7);
                              
                }
                     
            }catch(Exception ee)
                    {
                out.println(ee.toString());
            }
      
      
      out.write("\n");
      out.write("        <h1>MAIL</h1>\n");
      out.write("            <form name=\"f1\">\n");
      out.write("                <table border=\"2\" width=\"30%\">\n");
      out.write("                <tr>\n");
      out.write("                 <th>TO</th>\n");
      out.write("                <th><input type=\"text\" name=\"t1\" value=\"");
      out.print(f1);
      out.write("\"></th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                 <th>DATE</th>\n");
      out.write("                 <th><input type=\"text\" name=\"t3\" value=\"");
      out.print(f3);
      out.write("\"></th>\n");
      out.write("                 </tr>\n");
      out.write("         \n");
      out.write("                  <tr>\n");
      out.write("                  <th>SUB</th>\n");
      out.write("                   <th><input type=\"text\" name=\"t4\" value=\"");
      out.print(f4);
      out.write("\"></th> \n");
      out.write("                    </tr>   \n");
      out.write("         \n");
      out.write("                    <tr>\n");
      out.write("                     <th>MAIL BOX</th>\n");
      out.write("                     <th><textarea rows=\"5\" cols=\"80\" name=\"t5\">\n");
      out.write("                         ");
      out.print(f5);
      out.write("\n");
      out.write("                     </textarea></th>\n");
      out.write("                      </tr>\n");
      out.write("                  </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
