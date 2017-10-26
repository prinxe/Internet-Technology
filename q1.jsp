<%-- 
    Document   : q1
    Created on : Oct 25, 2017, 3:47:21 PM
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
            int n=Integer.parseInt(name);
            for(int i=0;i<=n;i++)
            {
                for(int j=1;j<=i;j++)
                {
                    out.print(j+" ");
                }
                out.print("<br>");
            }
        %>
    </body>
</html>
