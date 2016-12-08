
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>    <style type = "text/css">
      body {background-image: url(bg.png);}
  </style>
        <script>
            function view(f1)
            {
             f1.action="viewd.jsp";
             f1.submit();
                
            }    
            
        </script>
    </head>
    <body>
         <%@page import="java.sql.*,java.util.Date" %>
        <%!
         Date d1;
            String d2;
            int dd,mm,yy;
            Connection cn;
            Statement st,st1;
            ResultSet rs;
            String sql;
             String s1,s2,s3,s4,s5,sql1,msg;
            String f1,f2,f3,f4,f5;
        %>
        <%
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
                st1=cn.createStatement();
                String tr=request.getParameter("t10");
                s1 = (String)session.getAttribute("user");
                
                sql="update mail set flag='d' where tid="+"'"+tr+"'";
                 sql1="select * from mail where to1 ="+"'"+s1+"'"+" and Flag='d'";
                out.println(sql);
               st.executeUpdate(sql);
               rs=st1.executeQuery(sql1);
               out.println("record Deleted");
              
               %> 
            <table width="40%" border="3">
                   <th>From</th>
                   <th>Date</th>
                   <th>Sub</th>
                   <th>status</th>
                  
                
                   <%
               while(rs.next())
                 {
                   f1=rs.getString(1);
                   f2=rs.getString(3);
                   f3=rs.getString(4);
                   f4=rs.getString(6);
                   f5=rs.getString(7);
                   session.setAttribute("from", f1);
                   session.setAttribute("date",f2);
                   session.setAttribute("sub",f3);
                   session.setAttribute("status",f4);
                   session.setAttribute("tid",f5);
               %>
               <form>
               <tr>
               <td><%=f1%></td>
                <td><%=f2%></td>
                 <td><%=f3%></td>
                 <td><%=f4%></td>
                 <td><input type="text" name="t1" value="<%=f5%>">
                 <td><input type="button" value="view" onclick="view(this.form)"></td>
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
  
   

