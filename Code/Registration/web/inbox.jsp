<%-- 
    Document   : inbox
    Created on : Mar 23, 2013, 11:33:03 AM
    Author     : santosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
           <style type = "text/css">
      body {background-image: url(bg.png);}
  </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function view(f1)
            {
             f1.action="viewmail.jsp";
             f1.submit();
                
            }    
            
            
        </script>    
    </head>
    <body>
      <%@ page import="java.sql.*" %>
        <%!
            Connection cn;
            Statement st,st1;
            ResultSet rs,rs1;
            String s1,s2,s3,s4,s5,sql,sql1,msg;
            String f1,f2,f3,f4,f5;
        %>
        <%
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
