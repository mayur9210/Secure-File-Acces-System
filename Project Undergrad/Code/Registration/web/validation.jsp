<%-- 
    Document   : validation
    Created on : Mar 10, 2013, 11:43:12 AM
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
            ResultSet rs,rs1;
            String s1,s2,s3,s4,sql,sql1;
       
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
                s4=request.getParameter("t4");
                
                
               sql="select * from reg where Userid='"+s1+"' and Passw='"+s2+"'";
           
               rs=st.executeQuery(sql);
               
               if(rs.next())
                   {
                  out.println("Valid user");
                 
                   
                  sql1="select * from assignment where filename='"+s3+"' and key1='"+s4+"'"; 
                  rs1=st.executeQuery(sql1);
                  if(rs1.next())
                      {
                      out.println("file can be downloaded");
                  }
                  else
                       {
                      out.println("File name or security key is Wrong");
                   }
                   
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
