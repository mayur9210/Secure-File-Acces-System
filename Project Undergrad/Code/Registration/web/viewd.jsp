<%-- 
    Document   : viewd
    Created on : Apr 7, 2013, 5:05:58 PM
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
        <center>
      <%@page import="java.util.Date,java.sql.*"%>
      <%!
        // String s1;
          Date d1;
            String d2;
            int dd,mm,yy;
            Connection cn;
            Statement st,st1;
            ResultSet rs;
            String s1,s2,s3,s4,sql,sql1;
            String f1,f2,f3,f4,f5,f6,f7;
            
      
      %>
      <%
            s1=(String)session.getAttribute("user");
               try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                s1=request.getParameter("t1");
                sql="select * from mail where tid="+"'"+s1+"'";
                rs=st.executeQuery(sql);
                while(rs.next())
                    {
                     f1 = rs.getString(1);
                     f2 = rs.getString(2);
                    f3 = rs.getString(3);
                      f4 = rs.getString(4);
                     f5 = rs.getString(5);
                    f6 = rs.getString(6);
                      f7 = rs.getString(7);
                              
                }
                  sql1="update mail set flag='r' where tid="+"'"+s1+"'"; 
                  st1.executeUpdate(sql1);                   
            }catch(Exception ee)
                    {
                out.println(ee.toString());
            }
      
      %>
        <h1>MAIL</h1>
            <form name="f1">
                <table border="2" width="30%">
                <tr>
                 <th>FROM</th>
                <th><input type="text" name="t1" value="<%=f1%>"></th>
                </tr>
         
                <tr>
                <th>TO</th>
                <th><input type="text" name="t2" value="<%=f2%>"></th> 
                </tr>
                
                 <tr>
                 <th>DATE</th>
                 <th><input type="text" name="t3" value="<%=f3%>"></th>
                 </tr>
         
                  <tr>
                  <th>SUB</th>
                   <th><input type="text" name="t4" value="<%=f4%>"></th> 
                    </tr>   
         
                    <tr>
                     <th>MAIL BOX</th>
                     <th><textarea rows="5" cols="80" name="t5">
                         <%=f5%>
                     </textarea></th>
                      </tr>
                  </table
                  <tr>
    </body>
</html>
