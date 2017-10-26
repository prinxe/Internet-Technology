<%-- 
    Document   : q2
    Created on : Oct 25, 2017, 4:08:04 PM
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
            int n1=Integer.parseInt(request.getParameter("n1"));
            int n2=Integer.parseInt(request.getParameter("n2"));
            String choice=request.getParameter("operation");
            char c=(char)choice.charAt(0);
            switch(c)
            {
                
                case 'a': out.print(n1+n2);break;
                case 's': out.print(n1-n2);break;
                case 'm': out.print(n1*n2);break;
                default:out.print("wtf");
                
            }
            
        %>
    </body>
</html>
