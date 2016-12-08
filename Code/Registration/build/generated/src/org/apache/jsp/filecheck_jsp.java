package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.net.*;
import java.sql.*;

public final class filecheck_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection cn;
            Statement st,st1;
            ResultSet rs;
            String filename;
         
            
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        ");
      out.write("\n");
      out.write("            \n");
      out.write("            ");

            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                //----------------------------------------------------//  
                out.println("waiting for filename");
                while(true)
              {
                rs=st.executeQuery("select * from filecheck");
                if(rs.next())
                    {
                    filename=rs.getString(2);
                    break;
                    }          

               }
               st1.executeUpdate("delete from filecheck");   
                
                
                
                //---------------------------------------------------//
               
              String URL = "http://169.254.79.136:8080/saidownload/"+filename;
              URL url = new URL(URL);
              URLConnection conn = url.openConnection();
              InputStream is = conn.getInputStream();
              OutputStream os=new FileOutputStream("F:/download/"+filename); 
              byte b[]=new byte[1022];
              //out.println("waiting for file name from mobile");
              while(true)
              {
               
                  int a= is.read(b);
                  if (a<=0)
                     break;
                  os.write(b,0,a);                                                                       
                    
                    
                              

               }
              os.close();
              out.println("file download");
                }catch(Exception ee)
                {
                  System.out.println(ee.toString());  
                }
                
      out.write("\n");
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
