<%-- 
    Document   : q3
    Created on : Oct 25, 2017, 4:20:23 PM
    Author     : BSC_3_G_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String name=(String)request.getParameter("name");  
            String dob=(String)request.getParameter("dob");
            String em=(String)request.getParameter("em");
            
            boolean k=true;
            if(!(name.equals("prince")))
            {
                out.print("name wrong");
                k=false;
            }
            if(!(dob.equals("04/01/1997")))
            {
                out.print("dob wrong");
                 k=false;
            }
            if(!(em.equals("prinxe.gupta@gmail.com")))
            {
                out.print("em wrong");
                 k=false;
            }
            if(k)out.write("validated");
        %>
    </body>
</html>
