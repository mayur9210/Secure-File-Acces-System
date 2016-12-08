<%-- 
    Document   : valid
    Created on : Mar 1, 2013, 12:38:13 PM
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
                s1=request.getParameter("t1");
                s2=request.getParameter("t2");
                s3=request.getParameter("t3");
                s4=Integer.parseInt(s1);
                
                
               sql="select * from assignment where file_id="+s4+" and Userid='"+s2+"' and key1='"+s3+"'";
              
               rs=st.executeQuery(sql);
               
               if(rs.next())
                   {
                  out.println("Valid user");
                   }
               else
                   {
                   out.println("Invalid user");
               }
               }
            
              catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>
                     
    </body>
</html>
