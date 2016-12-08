package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class inbox_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection cn;
            Statement st,st1;
            ResultSet rs,rs1;
            String s1,s2,s3,s4,s5,sql,sql1,msg;
            String f1,f2,f3,f4,f5;
        
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
      out.write("           <style type = \"text/css\">\n");
      out.write("      body {background-image: url(bg.png);}\n");
      out.write("  </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            function view(f1)\n");
      out.write("            {\n");
      out.write("             f1.action=\"viewmail.jsp\";\n");
      out.write("             f1.submit();\n");
      out.write("                \n");
      out.write("            }    \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                s1 = (String)session.getAttribute("user");
               sql="select * from mail where to1 ="+"'"+s1+"'"+" and Flag='u'";
               sql1="select Mailtext from mail ";
                rs=st.executeQuery(sql);
                rs1=st1.executeQuery(sql1);
                
      out.write("\n");
      out.write("     \n");
      out.write("              <table width=\"40%\" border=\"3\">\n");
      out.write("                   <th>From</th>\n");
      out.write("                   <th>Date</th>\n");
      out.write("                   <th>Sub</th>\n");
      out.write("                   <th>status</th>\n");
      out.write("                  \n");
      out.write("                \n");
      out.write("                   ");

               while(rs.next())
                 {
                   f1=rs.getString(1);
                   f2=rs.getString(3);
                   f3=rs.getString(4);
                   f4=rs.getString(6);
                   f5=rs.getString(7);
                   session.setAttribute("from", f1);
                   session.setAttribute("date",f2);
                   session.setAttribute("sub",f3);
                   session.setAttribute("status",f4);
                   session.setAttribute("tid",f5);
               
      out.write("\n");
      out.write("               <form>\n");
      out.write("               <tr>\n");
      out.write("               <td>");
      out.print(f1);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(f2);
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(f3);
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(f4);
      out.write("</td>\n");
      out.write("                 <td><input type=\"text\" name=\"t1\" value=\"");
      out.print(f5);
      out.write("\">\n");
      out.write("                 <td><input type=\"button\" value=\"view\" onclick=\"view(this.form)\"></td>\n");
      out.write("             </tr>\n");
      out.write("         </form>\n");
      out.write("             ");

                 }
            
      out.write("\n");
      out.write("        </TABLE>\n");
      out.write("  \n");
      out.write("        ");

               }
              catch(Exception e)
                       {
                        out.println(e.toString());
               }
               
      out.write("\n");
      out.write("    \n");
      out.write("                    </body>\n");
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
