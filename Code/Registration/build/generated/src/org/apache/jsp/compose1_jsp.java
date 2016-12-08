package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Date;

public final class compose1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection cn;
            Statement st,st2,st1;
            ResultSet rs,rs1,rs2;
            int tid;
            String s1,s2,s3,s4,s5,sql,sql1,sql2;
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
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                st2=cn.createStatement();
                
                s1=request.getParameter("t1");
                s2=request.getParameter("t2");
                s3=request.getParameter("t3");
                s4=request.getParameter("t4");
                s5=request.getParameter("t5");
                d1 = new Date();
                dd = d1.getDate();
                mm= d1.getMonth()+1;
                yy = d1.getYear()+1900;
                d2 = Integer.toString(dd)+"/"+Integer.toString(mm)+"/"+Integer.toString(yy);
                sql1="select * from reg where Userid="+"'"+s1+"'";
                 sql2="select * from reg where Userid="+"'"+s2+"'";
                rs1=st1.executeQuery(sql1);
                rs2=st2.executeQuery(sql2);
                out.println("hi");
                if((rs1.next()) && (rs2.next()))
                    {
                    out.println("hi");
                    
                    
                sql="select * from mail";
                rs=st.executeQuery(sql);
                if(!rs.next())
                {
                    tid=1;
                }
                else
                {
                    sql="select max(tid) from mail";
                    rs=st.executeQuery(sql);
                    while(rs.next())
                    {
                        tid=rs.getInt(1);
                    }
                    tid=tid+1;
                }
                
               sql="insert into mail values("+"'"+s1+"'"+","+"'"+s2+"'"+","+"'"+s3+"'"+","+"'"+s4+"'"+","+"'"+s5+"'"+",'u','"+tid+"')";
               
             st.executeUpdate(sql);
               out.println("rec inserted");
               }
                else
                    {
                    out.println("invalid user");
                }
               }catch(Exception e)
                       {
                        out.println(e.toString());
               }
               
      out.write("\n");
      out.write("                       \n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                   \n");
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
