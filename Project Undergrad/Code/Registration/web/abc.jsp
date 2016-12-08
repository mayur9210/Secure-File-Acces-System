<%-- 
    Document   : abc
    Created on : Mar 9, 2013, 11:19:22 AM
    Author     : santosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.sql.*" %>
    <%!
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,s2,s3,sql;
            int s4;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("file");
                s4=Integer.parseInt(s1);               
                
               sql="select * from assignment where file_id='"+s4+"'" ;
              
               rs=st.executeQuery(sql);
               %>
               <table width="40%" border="3">
                   <th>File id</th>
                   <th>file name</th>
                   <th>User id</th>
                   <%
               while(rs.next())
                 {
               %>
               <tr>
               <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
             </tr>
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
