<%-- 
    Document   : delete
    Created on : Apr 5, 2013, 11:35:35 AM
    Author     : santosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style type = "text/css">
      body {background-image: url(bg.png);}
  </style>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%!
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,sql;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                String tr=request.getParameter("t10");
                
                sql="delete from mail where tid="+"'"+tr+"'";
                out.println(sql);
               st.executeUpdate(sql);
               out.println("record Deleted");
               }catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %> 
          <table width="40%" border="3">
                   <th>From</th>
                   <th>Date</th>
                   <th>Sub</th>
                   <th>status</th>
                  
                
                   <%
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
               %>
               <form>
               <tr>
               <td><%=f1%></td>
                <td><%=f2%></td>
                 <td><%=f3%></td>
                 <td><%=f4%></td>
                 <td><input type="text" name="t1" value="<%=f5%>">
                 <td><input type="button" value="view" onclick="view(this.form)"></td>
             </tr>
         </form>
             <%
                 }
            %>
        </TABLE>
  
        <%
               }
              catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>
    
                    </body>
</html>
 

