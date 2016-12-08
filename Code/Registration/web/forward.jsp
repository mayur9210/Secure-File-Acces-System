<%-- 
    Document   : forward
    Created on : Apr 5, 2013, 11:34:54 AM
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
        <center>
      <%@page import="java.util.Date,java.sql.*"%>
      <%!
        // String s1;
          Date d1;
            String d2;
            int dd,mm,yy;
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,s2,s3,s4,sql;
            String f1,f2,f3,f4,f5,f6,f7;
            
      
      %>
      <%
            s1=(String)session.getAttribute("user");
              d1 = new Date();
                dd = d1.getDate();
                mm= d1.getMonth()+1;
                yy = d1.getYear()+1900;
                d2 = Integer.toString(dd)+"/"+Integer.toString(mm)+"/"+Integer.toString(yy);
               try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                s1=request.getParameter("t1");
               // sql="select * from mail where tid="+"'"+s1+"'";
                //rs=st.executeQuery(sql);
                /*while(rs.next())
                    {*/
                     f1 = request.getParameter("t1");
                     f2 = request.getParameter("t2");
                    f3 = request.getParameter("t3");
                      f4 = request.getParameter("t4");
                     f5 = request.getParameter("t5");
                    
                    /*
                     
                    
                    
                    
                    
                    
                    
                    
                }*/
                     
            }catch(Exception ee)
                    {
                out.println(ee.toString());
            }
      
      %>
        <h1>MAIL</h1>
            <form name="f1" action="compose1.jsp">
                <table border="2" width="30%">
                <tr>
                <th>FROM</th>
                <th><input type="text" name="t1" value="<%=f2%>"></th> 
                </tr>
         
                <tr>
                <th>TO</th>
                <th><input type="text" name="t2" value=""></th> 
                </tr>
                
                 <tr>
                 <th>DATE</th>
                 <th><input type="text" name="t3" value="<%=d2%>"></th>
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
                      <tr>
                      <td> <input type="submit"  value="send"></td>
                  </tr>
                  </table>
                 
    </body>
</html>
