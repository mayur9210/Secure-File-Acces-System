<%-- 
    Document   : assdel
    Created on : Mar 1, 2013, 12:10:37 PM
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
            String s1,sql;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("t1");
                
                sql="delete from assignment where file_id='"+s1+"'";
                out.println(sql);
               st.executeUpdate(sql);
               out.println("record Deleted");
               }catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>                       "
    </body>
</html>
