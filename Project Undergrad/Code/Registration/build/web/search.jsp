<%-- 
    Document   : search
    Created on : Mar 9, 2013, 12:43:44 PM
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
            String f1,f2,s1,sql;
            int s4;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("t1");
                sql="select * from reg where Name like "+"'"+s1+"%'";
              rs=st.executeQuery(sql);
               %>
               <center><h1>LIST OF NAMES</h1></center>
              <table width="40%" border="3">
                   <tr>
                   <th>USERNAME</th>
                   <th>USER_ID</th>
                   </tr>
                 
                   <%
               while(rs.next())
                  { 
                   f1=rs.getString(1);
                   f2=rs.getString(3);
                      %>
                       
               <form>
                   <tr>
                   <th><input type="text" name="t1" value="<%=f2%>"></th>
                   <th><input type="text" name="b2" value="<%=f1%>"></th>
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
