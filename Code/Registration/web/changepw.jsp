<%-- 
    Document   : changepw
    Created on : Mar 9, 2013, 12:19:25 PM
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
        <%@ page import="java.sql.*" %>
        <%!
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,s2,s3,s4,sql;
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
               
                
                
               sql="select *from  reg where Userid="+"'"+s1+"'"+" and Passw="+"'"+s2+"'"+"";
               rs=st.executeQuery(sql);
               if(rs.next())
                   {
                   if(s3.equals(s4))
                       {
                       sql="update reg set Passw="+"'"+s3+"'"+" where Userid="+"'"+s1+"'"+"";
                       st.executeUpdate(sql);
                       out.println("password change Sucessfully");
                   }
                   else
                       {
                       out.println("Incorrect password");
                   }
                   }
              else
                {
                   out.println("Invalid UserID");
               
               }
               
               }
               catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>
                       
                
                    
                   
   
    </body>
</html>
