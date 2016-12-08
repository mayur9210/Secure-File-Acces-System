<%-- 
    Document   : abc1
    Created on : May 9, 2013, 5:51:12 PM
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
                s1=request.getParameter("file");
                           
                
              sql="select * from assignment" ; 
              
               rs=st.executeQuery(sql);
               %>
              
               <body>
                   <br/><br/>
                    <br/><br/>
         <center>  <table width="40%" border="2">
               
                   <th>FILE_ID</th>
                   <th>FILENAME</th>
                   
                   <%
               while(rs.next())
                 {
               %>
               
               <tr>
            
               <th><%=rs.getString(1)%></th>
                <th><%=rs.getString(2)%></th>
                 
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

