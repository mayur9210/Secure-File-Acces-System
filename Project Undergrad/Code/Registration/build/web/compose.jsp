<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
       <style type = "text/css">
      body {background-image: url(bg.png);}
  </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body><center>
      <%@page import="java.util.Date"%>
      <%!
         String s1;
          Date d1;
            String d2;
            int dd,mm,yy;
      
      %>
      <%
            s1=(String)session.getAttribute("user");
               d1 = new Date();
                dd = d1.getDate();
                mm= d1.getMonth()+1;
                yy = d1.getYear()+1900;
                d2 = Integer.toString(dd)+"/"+Integer.toString(mm)+"/"+Integer.toString(yy);    
      
      
      
      
      %>
        <h1>MAIL</h1>
            <form name="f1" action="compose1.jsp"><br/><brr/>
                <table border="2" width="50%">
                <tr>
                 <th>FROM</th>
                <th><input type="text" name="t1" value="<%=s1%>"></th>
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
                   <th><input type="text" name="t4" value=""></th> 
                    </tr>   
         
                    <tr>
                     <th>MAIL BOX</th>
                     <th><textarea rows="10" cols="30" name="t5"></textarea></th>
                      </tr>
        
                    <tr>
                    <th></th>
                         <th><input type="submit" value="SEND"></th>

                </form>
        </center>         
        
 
