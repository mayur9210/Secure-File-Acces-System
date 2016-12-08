<%-- 
    Document   : filecheck
    Created on : Apr 6, 2013, 10:45:25 AM
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
         <%@ page import="java.io.*,java.net.*,java.sql.*" %>
        <%!
            Connection cn;
            Statement st,st1;
            ResultSet rs;
            String filename;
         
            %>
            
            <%
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                cn=DriverManager.getConnection("jdbc:odbc:reg","root","");
                st=cn.createStatement();
                st1=cn.createStatement();
                //----------------------------------------------------//  
                out.println("waiting for filename");
                while(true)
              {
                rs=st.executeQuery("select * from filecheck");
                if(rs.next())
                    {
                    filename=rs.getString(2);
                    break;
                    }          

               }
               st1.executeUpdate("delete from filecheck");   
                
                
                
                //---------------------------------------------------//
               
              String URL = "http://192.168.1.72:8080/saidownload/"+filename;
              URL url = new URL(URL);
              URLConnection conn = url.openConnection();
              InputStream is = conn.getInputStream();
              OutputStream os=new FileOutputStream("F:/download/"+filename); 
              byte b[]=new byte[1022];
              //out.println("waiting for file name from mobile");
              while(true)
              {
               
                  int a= is.read(b);
                  if (a<=0)
                     break;
                  os.write(b,0,a);                                                                       
                    
                    
                              

               }
              os.close();
              out.println("file download");
                }catch(Exception ee)
                {
                  System.out.println(ee.toString());  
                }
                %>
    </body>
</html>
