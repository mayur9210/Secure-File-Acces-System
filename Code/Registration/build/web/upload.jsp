
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
            Connection cn;
            Statement st;
            ResultSet rs;
            String s1,msg;
            FileInputStream F1;
            int a;
            String s2;
        %>
        <%
            try
            {
               s1=request.getParameter("t1");
               s2="d:/"+s1;
                F1= new FileInputStream(s2);
                msg="";
                while(F1.available()>0)
                    {
                   a=F1.read();
                   char c=(char)a;
                   msg=msg+c;
                      }
                }
                catch(Exception e)
                       {
                        out.println(e.toString());
               }
               
                          %>
                <form name="f2" action="upload1.jsp">
                    <input type="text" name="t1" value=<%=s1%>>
                    <textarea name="ta">
                        <%=msg%>
                        </textarea>
                        <input type="submit" value="upload">
                    </form>
                    </body>
</html>
