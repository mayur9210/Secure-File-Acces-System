<%-- 
    Document   : login
    Created on : Mar 23, 2013, 12:50:57 PM
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
            int type1;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("t1");
                s2=request.getParameter("t2");
                sql="select * from reg where userid="+"'"+s1+"'"+"and passw="+"'"+s2+"'";
                rs=st.executeQuery(sql);
                session.setAttribute("user",s1);
                if(rs.next())
                    {
                     type1=rs.getInt(7);
                     if (type1==0)
                         {
                   // out.println("Login sucessful");
                    %>
                    <jsp:forward page="checking1.html"/>
                    <%
                }
                     if (type1==1)
                         {
                         
                          %>
                    <jsp:forward page="admin.html"/>
                    <%
                     }
                     }
                else
                    {
                
                out.println("Login failed");
            }   
                
            }
            
            catch(Exception e)
                    
            {
                out.println(e.toString());
            }
            %>
    </body>
</html>
