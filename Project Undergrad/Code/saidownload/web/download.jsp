<%-- 
    Document   : download
   Created on : May 6, 201, 11:04:13 AM
    Author     : Elite
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.net.*"%>
        <%
        try
        {
        String ss1=request.getParameter("t10");    
        String ur="http://169.254.126.196:8080/Registration/"+ss1;
        URL url = new URL(ur);
      URLConnection conn = url.openConnection();
      InputStream is = conn.getInputStream();
      FileOutputStream ff = new FileOutputStream("d:/saidownload/web/"+ss1);
      byte buff[] = new byte[128];

        while (true) {
          int readbyte = is.read(buff);

          if (readbyte <= 0)
            break;

          ff.write(buff, 0, readbyte);
        }
      ff.close();
      out.println("file uploaded ");
        }catch(Exception ee)
        {
         System.out.println(ee.toString());   
        }
        %>
    </body>
</html>
