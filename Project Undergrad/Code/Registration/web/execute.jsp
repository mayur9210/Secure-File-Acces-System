<%-- 
    Document   : execute
    Created on : May 6, 2013, 12:47:45 PM
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
        <%@page import="java.io.*,java.util.*"%>
        
        <%!
        String ss2;
        %>
        <%
        String  s1 = request.getParameter("t1");
        out.println(s1);
        try
        {
        byte b[]= new byte[200];
        int k;
        k=0;
        File f1 = new File(s1);
        long len =f1.length();
        StringTokenizer st = new StringTokenizer(s1,"/");
        String ss[]= new String[20];
        while(st.hasMoreTokens())
            {
             ss[k]=st.nextToken();
             k++;
        }
        ss2=ss[k-1];
        BufferedInputStream bf = new BufferedInputStream(new FileInputStream(s1));
        BufferedOutputStream bo = new BufferedOutputStream(new FileOutputStream("d:/Registration/web/"+ss[k-1]));
        while(true)
        {
          k=bf.read(b, 0, 200);
          if (k<=0)
              break;
          bo.write(b);
        }
        bo.close();
        out.println("FILE CREATED");
        }catch(Exception ee)
        {
           out.println("File not found");
        } 
        
        
        
        %>
          <form name="f1" action="http://192.168.1.72:8080/saidownload/download.jsp">
            <input type="text" name="t10" value="<%=ss2%>">
            <input type="submit" value="UPLOAD">
        </form>
    </body>
</html>
