<%-- 
    Document   : mail
    Created on : Mar 22, 2013, 1:52:01 PM
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
       <%@ page import="java.sql.*,java.util.Date" %>
        <%!
            Connection cn;
            Statement st,st2,st1;
            ResultSet rs,rs1,rs2;
            int tid;
            String s1,s2,s3,s4,s5,sql,sql1,sql2;
            Date d1;
            String d2;
            int dd,mm,yy;
        %>
        <%
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                st2=cn.createStatement();
                
                s1=request.getParameter("t1");
                s2=request.getParameter("t2");
                s3=request.getParameter("t3");
                s4=request.getParameter("t4");
                s5=request.getParameter("t5");
                d1 = new Date();
                dd = d1.getDate();
                mm= d1.getMonth()+1;
                yy = d1.getYear()+1900;
                d2 = Integer.toString(dd)+"/"+Integer.toString(mm)+"/"+Integer.toString(yy);
                sql1="select * from reg where Userid="+"'"+s1+"'";
                 sql2="select * from reg where Userid="+"'"+s2+"'";
                rs1=st1.executeQuery(sql1);
                rs2=st2.executeQuery(sql2);
                out.println("hi");
                if((rs1.next()) && (rs2.next()))
                    {
                    out.println("hi");
                    
                    
                sql="select * from mail";
                rs=st.executeQuery(sql);
                if(!rs.next())
                {
                    tid=1;
                }
                else
                {
                    sql="select max(tid) from mail";
                    rs=st.executeQuery(sql);
                    while(rs.next())
                    {
                        tid=rs.getInt(1);
                    }
                    tid=tid+1;
                }
                
               sql="insert into mail values("+"'"+s1+"'"+","+"'"+s2+"'"+","+"'"+s3+"'"+","+"'"+s4+"'"+","+"'"+s5+"'"+",'u','"+tid+"')";
               
             st.executeUpdate(sql);
               out.println("rec inserted");
               }
                else
                    {
                    out.println("invalid user");
                }
               }catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>
                       
                
                    
                   
    </body>
</html>
