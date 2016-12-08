package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;

public final class execute_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String ss2;
        
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
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

        String  s1 = request.getParameter("t1");
        out.println(s1);
        try
        {
        byte b[]= new byte[200];
        int k;
        k=0;
        File f1 = new File(s1);
        long len =f1.length();
        StringTokenizer st = new StringTokenizer(s1,"/");
        String ss[]= new String[20];
        while(st.hasMoreTokens())
            {
             ss[k]=st.nextToken();
             k++;
        }
        ss2=ss[k-1];
        BufferedInputStream bf = new BufferedInputStream(new FileInputStream(s1));
        BufferedOutputStream bo = new BufferedOutputStream(new FileOutputStream("d:/Registration/web/"+ss[k-1]));
        while(true)
        {
          k=bf.read(b, 0, 200);
          if (k<=0)
              break;
          bo.write(b);
        }
        bo.close();
        out.println("FILE CREATED");
        }catch(Exception ee)
        {
           out.println("File not found");
        } 
        
        
        
        
      out.write("\n");
      out.write("          <form name=\"f1\" action=\"http://192.168.1.72:8080/saidownload/download.jsp\">\n");
      out.write("            <input type=\"text\" name=\"t10\" value=\"");
      out.print(ss2);
      out.write("\">\n");
      out.write("            <input type=\"submit\" value=\"UPLOAD\">\n");
      out.write("        </form>\n");
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
