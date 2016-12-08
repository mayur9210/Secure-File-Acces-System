<%-- 
    Document   : index
    Created on : Mar 1, 2013, 10:10:50 AM
    Author     : santosh
--%>
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
            String s1,s2,s3,s4,s5,s6,s7,sql;
           
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
                s5=request.getParameter("t5");
                s6=request.getParameter("t6");
                s7="0";
                
                
               sql="insert into reg values("+"'"+s1+"'"+","+"'"+s2+"'"+","+"'"+s3+"'"+","+"'"+s4+"'"+","+"'"+s5+"'"+","+"'"+s6+"'"+","+"'"+s7+"'"+")";
               st.executeUpdate(sql);
               out.println(" REGISTERED SUCCESSFULY");
            
               
               }catch(Exception e)
                       {
                        out.println(e.toString());
               }
               %>
               <form>
                   <a href="login.html">CLICK HERE TO LOGIN</a>
               </form>    
                
                    
                   
   
    </body>
</html>
