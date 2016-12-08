<%-- 
    Document   : upload1
    Created on : Mar 22, 2013, 11:39:15 AM
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
        
         <%@ page import="java.sql.*,java.io.*" %>
    <%!
         
            String s1,ff,filename,msg="";
            FileInputStream F1;
            FileOutputStream ff1;
          
            int a;
        %>
        <%
            try
            {
           
                s1=request.getParameter("t1");
              
                msg=request.getParameter("ta");
                 ff="D:/upload/"+s1;
                 ff1=new FileOutputStream(ff);
                 byte b[]=msg.getBytes();
                 ff1.write(b);
                 out.println("file sucessfully uploaded");
                 ff1.close();
                 }
              catch(Exception e)
                       {
                         out.println(e.toString());
               }
               %>
    </body>
</html>
